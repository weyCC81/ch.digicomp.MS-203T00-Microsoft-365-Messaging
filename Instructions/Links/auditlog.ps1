
Connect-ExchangeOnline

# https://learn.microsoft.com/en-us/purview/audit-log-enable-disable
Get-AdminAuditLogConfig | Format-List UnifiedAuditLogIngestionEnabled
# Set-AdminAuditLogConfig -UnifiedAuditLogIngestionEnabled $true

#Get-Mailbox -Anr Admin | fl UserPrincipalName,*mail*

#Get-Mailbox -ResultSize unlimited | Select -First 1 *audit*
Get-Mailbox -ResultSize unlimited | Group AuditEnabled 

$user = "admin@contoso.com"
$startDate = (Get-Date).AddDays(-30)
$endDate = (Get-Date)

$unifiedType = "ExchangeItem"

#$unifiedType = @()
#$unifiedType += "ExchangeAdmin"
#$unifiedType += "ExchangeItem"
#$unifiedType += "ExchangeItemGroup"
#$unifiedType = "ExchangeAdmin", "ExchangeItem", "ExchangeItemAggregated"
# ExchangeAdmin, ExchangeItem, ExchangeItemGroup, ExchangeAggregatedOperation, ExchangeItemAggregated
#System.Nullable`1[Microsoft.Office.Audit.Schema.AuditLogRecordType]


#Search-MailboxAuditLog
#$mailboxAuditLog = Search-MailboxAuditLog -Identity $user -LogonTypes Owner -ShowDetails -StartDate $startDate -EndDate $endDate ; $mailboxAuditLog.count
$mailboxAuditLog = Search-MailboxAuditLog -ShowDetails -StartDate $startDate -EndDate $endDate -ResultSize 1000  ; $mailboxAuditLog.count
# WARNING: Please note that 'Search-MailboxAuditLog' cmdlet will be deprecated on 30th April 2024. 
# We recommend you to start using Search-UnifiedAuditLog instead. Please refer the following blog for additional information: https://aka.ms/AuditCmdletBlog
$mailboxAuditLog | Out-GridView
#$mailboxAuditLog | Where-Object {$_.Operation -eq "HardDelete"}
$mailboxAuditLog | Group Operation # MailItemsAccessed
#$mailboxAuditLog | select -First 1 | Get-Member
$mailboxAuditLog | Where-Object {$_.Operation -eq "Create"} # None with the same Range?


#Search-UnifiedAuditLog
#$unifiedAuditLog = Search-UnifiedAuditLog -StartDate $startDate -EndDate $endDate -SessionCommand ReturnLargeSet ; $unifiedAuditLog.count
#$unifiedAuditLog | Group RecordType # ExchangeAdmin, ExchangeItemAggregated
#$unifiedAuditLog = Search-UnifiedAuditLog -StartDate $startDate -EndDate $endDate -SessionCommand ReturnLargeSet -ResultSize unlimited; $unifiedAuditLog.count
# Search-UnifiedAuditLog: Cannot process argument transformation on parameter 'ResultSize'. Cannot convert value "unlimited" to type "System.Int32". Error: "The input string 'unlimited' was not in a correct format."
# The default value is 100, maximum is 5,000
$unifiedAuditLog = Search-UnifiedAuditLog -RecordType $unifiedType -StartDate $startDate -EndDate $endDate -ResultSize 1000 -SessionCommand ReturnLargeSet ; $unifiedAuditLog.count
#$unifiedAuditLog = Search-UnifiedAuditLog -RecordType $unifiedType -StartDate $startDate -EndDate $endDate -ResultSize 1000 -SessionCommand ReturnLargeSet -HighCompleteness ; $unifiedAuditLog.count # Takes very long

$unifiedAuditLog | Out-GridView
##$unifiedAuditLog | select -First 1 | Get-Member

# V1
#$unifiedAuditLog | Select-Object -ExpandProperty AuditData | Out-File .\o365.logs.json -Encoding UTF8
$unifiedAuditLogConverted = $unifiedAuditLog | Select-Object -ExpandProperty AuditData | ConvertFrom-Json -ErrorAction Continue
$unifiedAuditLogConverted | Group Operation
#$unifiedAuditLogConverted | select -First 1 | Get-Member
$unifiedAuditLogConverted | Where-Object {$_.Operation -eq "Create"} # 2x with the same Range?


# V2
#
#[array]$results = Search-UnifiedAuditLog -RecordType ExchangeItemGroup -StartDate (Get-Date).AddDays(-1) -EndDate (Get-Date).AddDays(0.5) -ResultSize 400
#[array]$audit += $results | Foreach-Object{ConvertFrom-Json $_.AuditData}


# Disconnect-ExchangeOnline