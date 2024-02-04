
# Mailbox Migration

## Task 3: Create on-premises user mailboxes for testing

<https://learn.microsoft.com/en-us/powershell/module/exchange/enable-mailbox?view=exchange-ps>

```powershell
# Enable-Mailbox -Identity Ayla
Enable-Mailbox -Identity "Allan Yoo"
Enable-Mailbox -Identity "Beth Burke"
```

## Migration Endpoint

<https://learn.microsoft.com/de-de/exchange/architecture/mailbox-servers/mrs-proxy-endpoint?view=exchserver-2019>

````powershell
Get-WebServicesVirtualDirectory | Set-WebServicesVirtualDirectory -MRSProxyEnabled $true
Get-WebServicesVirtualDirectory | Format-Table -Auto Identity,MRSProxyEnabled,*Url*
# ExternalUrl: https://MRSServer.contoso.com/ews/exchange.asmx
````

<https://learn.microsoft.com/en-us/powershell/module/exchange/new-migrationendpoint?view=exchange-ps#example-1>
> Do not use Autodiscover

````powershell
New-MigrationEndpoint -Name Endpoint2 -ExchangeRemoteMove -RemoteServer MRSServer.contoso.com -Credentials (Get-Credential Contoso.com\Administrator)
Get-MigrationEndpoint
````

> Target Delivery Domain: contoso.mail.onmicrosoft.com

<https://learn.microsoft.com/en-us/powershell/module/exchange/get-migrationuserstatistics?view=exchange-ps>

````powershell
Get-MigrationBatch
Get-MigrationUser | Get-MigrationUserStatistics -IncludeReport
Get-MigrationUser | Get-MigrationUserStatistics -IncludeReport -DiagnosticInfo "" | fl *Diag*
````

## Target mailbox doesn't have an smtp proxy matching 'contoso.mail.onmicrosoft.com'

<https://learn.microsoft.com/en-us/exchange/troubleshoot/move-or-migrate-mailboxes/no-smtp-proxy-matching>

````powershell
(Get-MsolUser -UserPrincipalName <AffectedUserUPN>).Errors.ErrorDetail.ObjectErrors.ErrorRecord.ErrorDescription
#(Get-AzureADUser -ObjectId <AffectedUserUPN>).Errors.ErrorDetail.ObjectErrors.ErrorRecord.ErrorDescription

Get-MsolUser -SearchString Allan
(Get-MsolUser -UserPrincipalName Allan@contoso.domain.com) | fl *Error*
````

> No Errors found
