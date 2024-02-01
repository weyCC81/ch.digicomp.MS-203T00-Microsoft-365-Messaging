
# FAQ
### Microsoft Exchange: difference between backend (hub) and frontend


In a Microsoft Exchange environment, the terms "backend" (Hub Transport) and "frontend" typically refer to different server roles or functionalities within the overall Exchange infrastructure. These roles play distinct parts in the messaging flow and overall architecture of an Exchange deployment. Here's a brief overview of each:

1. **Backend (Hub Transport)**:
   - The backend or Hub Transport server role in Exchange is <mark>responsible for routing messages between different mailboxes</mark> within the Exchange organization.
   - It handles tasks like <mark>message routing, message delivery, and transport rules</mark>.
   - Hub Transport servers are typically located in the internal network and are not directly accessible from the internet.
   - They play a crucial role in ensuring that messages are delivered efficiently within the Exchange organization.

2. **Frontend**:
   - The term "frontend" in Exchange can refer to multiple components or functionalities depending on the context.
   - In some cases, it may refer to the <mark>Client Access Server (CAS) role, which is responsible for handling client connections to Exchange services such as Outlook Web App (OWA), Exchange ActiveSync (EAS), Outlook Anywhere (OA)</mark>, and other client protocols.
   - Frontend servers act as a gateway for <mark>client connections, handling authentication, proxying requests to the appropriate backend services</mark>, and providing a unified endpoint for client access to Exchange services.
   - Frontend servers are often placed in the perimeter network (also known as DMZ) to ensure that client traffic from the internet can reach Exchange services securely without directly exposing backend servers to external connections.

In summary, while the backend (Hub Transport) servers focus on internal message routing and transport within the Exchange organization, the frontend servers (often represented by the Client Access Server role) handle client connections and serve as gateways for external access to Exchange services. These roles work together to ensure efficient messaging and client access within an Exchange deployment.

### Microsoft exchange 2019 on-prem difference between backend (hub) and frontend 

In Microsoft Exchange Server 2019, the concepts of Front End and Back End have evolved compared to earlier versions. Exchange 2019 has a simplified architecture compared to previous versions, and the traditional Front End and Back End server roles have been merged into a single mailbox server role. This means that a standalone Exchange 2019 server can handle both the <mark>Client Access (formerly Front End) and Mailbox (formerly Back End)</mark> roles.

In Exchange 2019, there is no dedicated Front End Transport or Back End Transport service as there was in previous versions. Instead, the Mailbox server itself handles both client connectivity and the processing of mail.

Here are some key points to understand the changes in Exchange 2019:

1. **Single Server Role**: Exchange 2019 has only one server role, which is the Mailbox server role. This server role handles both the processing of mail (Mailbox role) and client connections (Client Access role).

2. **Simplified Architecture**: The merging of the Front End and Back End roles into a single Mailbox server role simplifies the deployment and management of Exchange 2019.

3. **Client Connectivity**: The Mailbox server in Exchange 2019 manages <mark>client connectivity</mark>, including handling Outlook Web App (OWA), Exchange ActiveSync, Outlook Anywhere, and other client protocols.

4. **Mail Processing**: The same Mailbox server is responsible for processing and storing emails, managing databases, and handling other mailbox-related tasks.

5. **Scalability and High Availability**: Exchange 2019 allows you to scale out by deploying multiple Mailbox servers in a Database Availability Group (DAG) to achieve high availability and load balancing.

In summary, the distinction between Front End (Client Access) and Back End (Mailbox) roles has been eliminated in Exchange 2019. The single Mailbox server role now handles both client connectivity and mail processing tasks, providing a more streamlined and simplified architecture.


### Difference between Spoofing vs impersonating or phishing

Certainly! Let's break down the differences between spoofing, impersonating, and phishing:

1. **Spoofing:** (same as owned domain)
   - **Definition:** Spoofing involves falsifying information to deceive systems or <mark>individuals into thinking the source of communication is legitimate</mark>.
   - **Purpose:** The main purpose of spoofing is to hide the true origin of a message or communication and make it appear as if it's coming from a trusted or known source.
   - **Examples:** Email spoofing, IP spoofing (altering the source IP address of a packet), caller ID spoofing (manipulating the caller ID to display a fake number).

2. **Impersonating:** (similar domain or user)
   - **Definition:** Impersonating involves pretending to be someone else or an <mark>entity with the intent to deceive others</mark>.
   - **Purpose:** Impersonation is typically used to gain trust or access to sensitive information or resources by posing as a legitimate individual or organization.
   - **Examples:** Impersonating a coworker to gain access to company data, pretending to be a bank representative to trick someone into revealing account details.

3. **Phishing:** (includes both from above)
   - **Definition:** Phishing is a type of cyber attack where attackers use deceptive emails, messages, or websites to <mark>trick individuals into providing sensitive information</mark> such as usernames, passwords, or financial data.
   - **Purpose:** The primary purpose of phishing is to steal personal or financial information, or to install malware on the victim's device.
   - **Examples:** Sending fake emails purportedly from a bank asking users to verify their account information, creating fake login pages that resemble legitimate websites to steal login credentials.

In summary, while all three techniques involve deception, they differ in their specific methods and objectives within a cyber attack. Spoofing involves falsifying information to appear as if it's coming from a trusted source, impersonating involves pretending to be someone else to gain trust or access, and phishing involves using deceptive tactics to trick individuals into revealing sensitive information or installing malware.




### Summarize: Analyzing Role-Based Permissions 

Introduction: Analyzing Role-Based Permissions V3

This module explores <mark>role-based permissions in Microsoft Exchange Server environments</mark>, focusing on the responsibilities of messaging administrators in configuring permissions. It emphasizes the need to <mark>avoid risks to both the Exchange environment and the entire Active Directory system</mark>. The module discusses the options of shared and split permissions models, highlighting the differences between them and their implications for administrators.

Article 1: Explore the use of split permissions - V1

This article discusses the concept of split permissions in organizations managing Exchange Server and Active Directory objects separately. It explains the benefits of split permissions, such as maintaining standards, controlling change, and limiting access to sensitive information. The article outlines the <mark>distinction between Exchange management and Active Directory management</mark>, highlighting the complexity of each infrastructure. It also explains how split permissions work, particularly in terms of creating and configuring security principals in Active Directory, and the <mark>two types of split permissions models: RBAC permissions and Active Directory permissions</mark>.

Article 1: Split Permissions Overview - V2

This article introduces the split permissions model used by organizations to separately manage Exchange Server and Active Directory objects. It highlights the benefits, including maintaining standards and controlling access to sensitive data. The model involves distinct roles for managing Exchange and Active Directory infrastructures, with a focus on creating and configuring security principals in Active Directory. It discusses two types of split permissions: RBAC permissions and Active Directory permissions.

Article 2: Explore the use of multiple-forest permissions - V1

This article focuses on multiple Active Directory forest deployments and their role in creating <mark>security boundaries</mark> within organizations. It describes two types of multiple forest topologies supported by Microsoft Exchange Server: <mark>cross-forest (direct as partner) and resource forest (via parent)</mark>. The article explains the configuration of permissions in a multiple-forest topology, emphasizing the importance of forest trusts and GAL synchronization. It also discusses RBAC permissions within a multiple-forest environment, highlighting the need for separate configuration in each forest and providing an example of role group configuration across Exchange forests.

Article 2: Multiple-Forest Permissions - V2

This article explores how organizations deploy multiple Active Directory forests to establish <mark>security boundaries</mark>. It describes two types of topologies supported by Microsoft Exchange Server: cross-forest and resource forest. It emphasizes the importance of forest trusts and GAL synchronization in configuring permissions within a multiple-forest environment, particularly focusing on RBAC permissions and role group configuration across Exchange forests.

Article 3: Explore the differences in permissions - V1

This article delves into the differences between <mark>RBAC split permissions and Active Directory split permissions</mark> within a split permissions model. It explains the recommended use of RBAC split permissions and outlines the guidelines for configuring RBAC split permissions, including roles and permissions assignments. The article also discusses the manual process of switching from shared permissions to RBAC split permissions. Furthermore, it explores Active Directory split permissions, detailing the changes in functionality and the conditions under which organizations should consider using this model. Additionally, it lists the cmdlets affected by Active Directory split permissions and explains their limited functionality in creating or modifying objects.

Article 3: Differences in Permissions - V2

This article delves into the technical nuances between RBAC split permissions and Active Directory split permissions within the split permissions model. It outlines the recommended use of RBAC split permissions and details the configuration guidelines, including role assignments and permissions adjustments. It also discusses the manual process of transitioning from shared permissions to RBAC split permissions. Furthermore, it explores the technical aspects of Active Directory split permissions, including changes in functionality and affected cmdlets, along with their limited capabilities in object creation and modification.

### SharedMailbox LastLogon

In my example it’s configured to list mailboxes which were active in the last 30 days:

`(Get-MailboxStatistics $_.Identity).LastLogonTime -gt (Get-Date).AddDays(-30)`


### Enhanced Filtering - 2x WAN IP

Multi-Hob in SMTP 


## Application Impersination - Alternative
https://learn.microsoft.com/en-us/exchange/permissions-exo/application-rbac
https://www.microsoft.com/en-us/security/blog/2024/01/25/midnight-blizzard-guidance-for-responders-on-nation-state-attack/


### Unable to determine the Tenant Routing Domain (AcceptedDomain)
HCW8001 Unable to determine the Tenant Routing Domain
HCW8092 One or more items failed validation during ‘Hybrid Initialization’ task. Please see log file for details.

https://learn.microsoft.com/en-us/exchange/troubleshoot/hybrid-configuration-wizard-errors/unable-to-determine-the-routing-domain-for-the-cloud-org
> No
https://learn.microsoft.com/de-de/exchange/troubleshoot/hybrid-configuration-wizard-errors/unable-to-determine-the-routing-domain-for-the-cloud-org
> No
https://learn.microsoft.com/en-us/answers/questions/1456104/hcw-fails-with-hcw8001-unable-to-determine-the-ten
https://jaapwesselius.com/2020/06/09/hcw8001-unable-to-determine-the-tenant-routing-domain/
> Yes (support for fix)
https://www.alitajran.com/hybrid-configuration-wizard/
> Yes (comment, no fix)
https://www.reddit.com/r/Office365/comments/g98gz4/missing_tenantmailonmicrosoftcom_domain_hcw8001/
> Just FYI - the Exchange Admin Center will display the results of Get-AcceptedDomain rather than Get-MSOLdomain. Good luck with your search. 
https://medium.com/@mozzeph/how-to-add-a-new-domain-to-m365-with-ms-graph-powershell-e6b41c02bfa3
> Not working

```
# Set-AdUser wilson.ball -Add @{ProxyAddresses=('smtp:wilson.ball@contoso.mail.onmicrosoft.com')}
```

```
# ---- Modern 
# ---- Modern
# Install-Module Microsoft.Graph
#Disconnect-MgGraph
Connect-MgGraph -Scopes "User.ReadWrite.All,Domain.ReadWrite.All"
#Get-MgDomain -Property AvailabilityStatus,State | Select -ExpandProperty State | Out-GridView
Get-MgDomain  | ft
#Id                                 AuthenticationType AvailabilityStatus IsAdminManaged IsDefault IsInitial IsRoot IsVerified Manufacturer Model 
#M365x66985203.onmicrosoft.com      Managed                               True           False     True      True   True                          
#M365x66985203.virsoftlabs.com      Managed                               True           True      False     True   True                          
#M365x66985203.mail.onmicrosoft.com Managed                               True           False     False     True   True                          
## Id                                 AuthenticationType AvailabilityStatus IsAdminManaged IsDefault IsInitial IsRoot IsVerified Manufactu
## contoso.com                        Managed                               True           False     False     False  False               
## M365xZZZZZZZZ.onmicrosoft.com      Managed                               True           True      True      True   True                
## M365xZZZZZZZZ.mail.onmicrosoft.com Managed                               True           False     False     True   True                

# New-MgDomain -BodyParameter @{Id="[contoso.com]";IsDefault="False"} # Default for Testing
# New-MgDomain -BodyParameter @{Id="M365xZZZZZZZZ.mail.onmicrosoft.com"}
New-MgDomain -BodyParameter @{Id="M365x66985203.mail.onmicrosoft.com"}

#$MgVerificationCode = (Get-MgDomainVerificationDnsRecord -DomainId "contoso.com" | Where-Object {$_.RecordType -eq "Txt"}).AdditionalProperties.text
Get-MgDomainVerificationDnsRecord -DomainId "M365x66985203.mail.onmicrosoft.com"

#Confirm-MgDomain -DomainId "contoso.com"
Confirm-MgDomain -DomainId "M365x66985203.mail.onmicrosoft.com"
# Confirm-MgDomain : Domain is already verified.

# ---- Verification (Missing)
#Disconnect-ExchangeOnline
Connect-ExchangeOnline

#Get-Help *AcceptedDomain*  # Set-AcceptedDomain
#Get-Help *Domain*
Get-AcceptedDomain
#Get-AcceptedDomain -Verbose -Debug
#Get-OrganizationConfig | fl *

# ---- Legacy
#Install-Module MSOnline -Scope AllUsers
#[Microsoft.Online.Administration.Automation.ConnectMsolService]::ClearUserSessionState()
Connect-MsolService
#Get-MsolDomain | Select * | Out-GridView
Get-MsolDomain | Select * | ft
# Name                               Status   Authentication
#M365x66985203.onmicrosoft.com      Verified Managed       
#M365x66985203.virsoftlabs.com      Verified Managed       
#M365x66985203.mail.onmicrosoft.com Verified Managed  

#Get-MsolDirSyncConfiguration
#Set-MsolDirSyncEnabled -EnableDirsync $true -Verbose -Debug #  You cannot cancel the disable action

New-MsolDomain –Name "M365x66985203.mail.onmicrosoft.com"

# - M365x04008013.mail.onmicrosoft.com --> Msol = found, Exchange = not found, Not tried Enable DirSync
#New-MsolDomain –Name "M365x04008013.mail.onmicrosoft.com" # New-MsolDomain : You cannot add this domain because it already exists. Select another domain and try again.
# - M365x30384101.mail.onmicrosoft.com)--> Msol = found, Exchange = not found, Try Enable DirSync
#Set-MsolDirSyncEnabled -EnableDirsync $true

# - M365x89176545.mail.onmicrosoft.com --> No Second Domain found, No Routing domain found
```

M365x66985203.mail.onmicrosoft.com --> Added over GUI, Exchange = not found
M365x04008013.mail.onmicrosoft.com --> Msol = found, Exchange = not found, Not tried Enable DirSync
M365x30384101.mail.onmicrosoft.com --> Msol = found, Exchange = not found, Try Enable DirSync
M365x89176545.mail.onmicrosoft.com --> No Second Domain found, No Routing domain found

##### Add M365x66985203.mail.onmicrosoft.com not working over hybrid wizard for 4x Tenant‎ (#‎2401310050005586‎)



2024.01.31 20:38:59.965 WARNING 10310 [Client=UX, Activity=Tenant Data Retrieval, Thread=11] Coexistence domain NOT Found.

2024.01.31 20:44:19.769 *ERROR* 10241 [Client=UX, Page=Configuring, fn=RunWorkflow, Workflow=Hybrid, Task=Initial, Phase=Configure, Thread=10] Workflow Exception: Unable to determine the Tenant Routing Domain [Task=Initial, Phase=Configure]
2024.01.31 20:44:19.769         10271 [Client=UX, Page=Configuring, fn=RunWorkflow, Workflow=Hybrid, Task=Initial, Phase=Configure, Thread=10] FINISH Time=2.0ms Results=PASSED (Configuration Complete)
2024.01.31 20:44:19.770         10270 [Client=UX, Page=Configuring, fn=RunWorkflow, Workflow=Hybrid, Task=Initial, Phase=ValidateConfiguration, Thread=10] START 
2024.01.31 20:44:19.771 *ERROR* 10271 [Client=UX, Page=Configuring, fn=RunWorkflow, Workflow=Hybrid, Task=Initial, Phase=ValidateConfiguration, Thread=10] FINISH Time=1.0ms Results=FAILED - (Validation Failure)
2024.01.31 20:44:19.771 *ERROR* 10273 [Client=UX, Page=Configuring, fn=RunWorkflow, Workflow=Hybrid, Task=Initial, Thread=10] FINISH Time=2157.7ms Results=FAILED
2024.01.31 20:44:19.772 *ERROR* 10268 [Client=UX, Page=Configuring, fn=RunWorkflow, Workflow=Hybrid, Thread=10] FINISH Time=2159.7ms Results=FAILED
2024.01.31 20:44:19.774 *ERROR* 10025 [Client=UX, Page=Configuring, fn=RunWorkflow, Thread=10] HCW8001 Unable to determine the Tenant Routing Domain
2024.01.31 20:44:19.783 *ERROR* 10025 [Client=UX, Page=Configuring, fn=RunWorkflow, Thread=10] HCW8092 One or more items failed validation during 'Hybrid Initialization' task.  Please see log file for details.


https://learn.microsoft.com/en-us/exchange/troubleshoot/hybrid-configuration-wizard-errors/hcw-erros-about-accepted-domains




## Create Remote Domain for Company
$RemoteDomain = "M365x66985203.mail.onmicrosoft.com"
New-RemoteDomain -Name "Online Domain" -DomainName $RemoteDomain
Set-RemoteDomain -Identity "Online Domain" -TargetDeliveryDomain $true


