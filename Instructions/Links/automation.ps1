# Created by Stefan Wey, Digicomp, v0.1, 20230420
# Updated by [Name], Digicomp v0.2, YYYYMMDD - [change description]
# Updated by [Name], Digicomp v0.3, YYYYMMDD - [change description]

# -- Examples
# https://learn.microsoft.com/en-us/powershell/exchange/app-only-auth-powershell-v2?view=exchange-ps

# --- Certificate
#$mycert = New-SelfSignedCertificate -FriendlyName "Digicomp PS EXO Powershell" -Subject $env:Computername -CertStoreLocation "cert:\LocalMachine\My" -NotAfter (Get-Date).AddYears(6) -KeySpec KeyExchange
#mkdir C:\DIGI\Scripts\
#$mycert | Export-Certificate -FilePath C:\DIGI\Scripts\mycert.cer
#Get-ChildItem "cert:\LocalMachine\My" | Where {$_.FriendlyName -eq "Digicomp PS EXO Powershell"}

# --- Cert Source (User vs Computer)
# Computer by Default = OK
#Get-ChildItem 'Cert:\CurrentUser\My'
Get-ChildItem "cert:\LocalMachine\My"

# --- Role vs Scope
# App Permission & Manifest Edit

# --- Connect over App only
# Connect-ExchangeOnline -CertificateThumbPrint "012THISISADEMOTHUMBPRINT" -AppID "36ee4c6c-0812-40a2-b820-b22ebd02bce3" -Organization "contoso.onmicrosoft.com"
# Connect-IPPSSession -CertificateThumbPrint "012THISISADEMOTHUMBPRINT" -AppID "36ee4c6c-0812-40a2-b820-b22ebd02bce3" -Organization "contoso.onmicrosoft.com"

#$TenantID = "ea580db7-314d-42e0-b117-7574154c49b3" # Organization cannot be a Guid, please enter the name of the tenant instead.
$TenantName = "contoso.onmicrosoft.com"
#Connect-ExchangeOnline -CertificateThumbprint E2A57AB8B90570394DE0BA8F63649E4A3DB66EBX -AppId a4d49093-f3ab-4b20-aa0f-bf1d4713edc1 -Organization $TenantName # Example wrong App
Connect-ExchangeOnline -CertificateThumbprint E2A57AB8B90570394DE0BA8F63649E4A3DB66EBX -AppId a4d49093-f3ab-4b20-aa0f-bf1d4713edc1 -Organization $TenantName
# Run as Admin for Access to Computer Certificate Store


# --- Get-UnifiedGroup
# with CAB limited Microsoft 365 Groups available!
Get-UnifiedGroup
Get-UnifiedGroup | Group-Object GroupType
New-UnifiedGroup # Not supported


# --- Suche nach User "Anr"
Get-Mailbox -Anr Test


# -- Info: Set-EXO-MailboxLitigationHold_PowerShellV4.ps1
# Get-module *exchange*
# Get-module ExchangeOnlineManagement 
# New-PSSession / Native / Just On-Prem!
# Connect-IPPPSession & Connect-ExchangeOnline & New-PSSession

