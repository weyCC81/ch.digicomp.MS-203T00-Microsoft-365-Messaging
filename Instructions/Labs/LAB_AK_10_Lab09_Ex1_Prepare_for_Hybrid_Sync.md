# Module 10 - Lab 9 - Exercise 1 - Prepare Azure AD for Hybrid Synchronization

 
In this lab you will continue in your role as Holly Dickson, Adatum’s Messaging Administrator. Adatum has decided to transition from their current Microsoft Exchange on-premises deployment to a hybrid deployment that utilizes Exchange Online within Microsoft 365. Adatum’s CTO has tasked you with implementing this hybrid deployment. In this lab, you will perform the tasks necessary to prepare your messaging environment for your eventual hybrid deployment.

To complete this task, you must first prepare Azure Active Directory to support the hybrid synchronization between Exchange on-premises and Exchange Online. This will require that you:  

- Configure your lab environment to support local mail transport

- Add an accepted domain to your Azure AD forest 

- Configure the UPN Name for the new domain

- Configure Exchange to use the new domain

- Enable directory synchronization by installing and running the Microsoft Azure Active Directory Connect tool

- Perform a Full Synchronization to migrate Adatum’s on-premises user accounts to the new domain in Microsoft 365

While your trial tenant has already been set up by your lab hosting provider, you must ensure that your local, on-premises Active Directory is ready for hybrid synchronization before you create your hybrid deployment. You will do this by adding a custom, accepted domain to the Azure Active Directory forest and then configure Exchange to use the new accepted domain. 

Once you finish configuring Azure AD for hybrid synchronization in this lab, you will then set up Exchange for a hybrid deployment and then test your new deployment. 

 

## Task 1: Configure your tenant to support local mail transport

Before you begin setting up Adatum’s hybrid deployment, you must first configure your hosted lab environment to support local mail transport. 

**IMPORTANT:** The steps that you perform in this task are NOT required to set up a hybrid environment in a real-world scenario. Instead, they must be performed to configure the hosted virtual machines used in this training lab so that email can be sent locally between on-premises and cloud users when testing your hybrid deployment. 
 

1. Switch to LON-EX1 and if necessary, log in as the **Administrator** account with a password of **Pa55w.rd**. 

2. If your Internet Explorer browser is still open from the prior task, minimize the browser now (do not close it).

3. You need to open the **Network and Sharing Center**. To do so, select the network icon on the right-side of the system tray at the bottom of the screen (which displays **Adatum.com Internet access**), and in the menu that appears, select **Network &amp; Internet settings**. 

4. In the **Settings** window, scroll to the bottom of the **Status** pane on the right and select **Network and Sharing Center**. 

5. In the **Network and Sharing Center**, under the **View your active networks** group, select **Ethernet** (which appears to the right of **Connections**:).

6. In the **Ethernet Status** window, select the **Properties** button that appears at the bottom of the window.

7. In the **Ethernet Properties** window, select **Internet Protocol Version 4 (TCP/IPv4)** and then select **Properties** button.  
‎  
‎**WARNING:** Do NOT select the checkbox for **Internet Protocol Version 4 (TCP/IPv4)**, which will uncheck it. This checkbox MUST remain checked. Simply select this item to highlight it so that you can update its properties.

8. The **Internet Protocol Version 4 (TCP/IPv4)** **Properties** window is already set up to use an existing IP address. Since you are going to add an additional IP address, select the **Advanced** button in the bottom-right corner of the screen.

9. In the **Advanced TCP/IP Settings** window, in the **IP Settings** tab, it displays two groups: **IP addresses** and **Default gateways**. Under the **IP addresses** group, select the **Add…** button.

10. A **TCP/IP Address** pop-up window is displayed. Enter **10.0.0.6** in the **IP address** field, enter **255.255.255.0** in the **Subnet mask** field, and then select **Add**.  
‎  
‎**NOTE:** If you enter the IP address or subnet mask incorrectly, you will receive an error when selecting **Add**. If this occurs, you must close the window and then reopen it before entering the correct values. If you do not close the window and reopen it, you will still receive the error even if you enter the values correctly.

11. In the **Advanced TCP/IP Settings** window, it should now display **10.0.0.6** as a supported IP address, with a subnet mask of **255.255.255.0**. Select **OK**. 

12. In the **Internet Protocol Version 4 (TCP/IPv4)** **Properties** window, select **OK**.

13. In the **Ethernet Properties** window, select **Close**.

14. In the **Ethernet Status** window, select **Close**.

15. Close the **Network and Sharing Center** window.

16. Close the **Settings** window.

 

## Task 2: Create a Custom Domain in Microsoft 365

In this task, you will log into your Domain Controller (LON-DC1) VM and add an accepted domain in Microsoft 365. Not every company has just one domain; in fact, many companies have more than one domain. For this lab, Adatum has purchased a new domain, **XXYYZZa.xxxCustomDomainxxx.xxx**, which in these instructions represents the domain name provided by your lab hosting provider. In this exercise, you will gain experience adding this domain for Adatum Corporation. When you add a custom domain to Microsoft 365, it's called an accepted domain. Accepted domains allow companies to have their own branding on emails and accounts so that customers can verify who is emailing them (for example, @contoso.com).

In your hosted lab environment, Adatum already has an existing on-premises domain titled **adatum.com**. In this lab, you will create a second domain for Adatum that will be titled **XXYYZZa.xxxCustomDomainxxx.xxx.**

In any of the following instructions that include **XXYYZZa.xxxCustomDomainxxx.xxx,** you must:

- replace **XXYYZZa** with the UPN name assigned to your tenant by your lab hosting provider (for example, AV7W2Qa)

- replace **xxxCustomDomainxxx.xxx** with your lab hosting provider's custom domain name (for example, fabrikam.com)

Your instructor will provide you with your lab hosting's provider's domain name as well as show you how to locate your UPN name.
 

1. Switch to LON-DC1 and, if necessary, log in as the **Administrator** account with a password of **Pa55w.rd.**

2. If you had to log in and the **Server Manager** application automatically opened, then minimize Server Manager (do not close it as you will use it later in this task).

3. You must now open **Windows PowerShell**. Select the **magnifying glass (Search)** icon on the taskbar at the bottom of the screen and enter **powershell** in the Search box that appears. 

4. In the menu that appears, right-click on **Windows PowerShell** (not Windows PowerShell ISE) and select **Run as administrator** in the drop-down menu**.** 

5. In **Windows PowerShell**, you should run the following command at the command prompt to create a new zone in DNS (remember to replace **XXYYZZa** with the unique UPN name assigned to your tenant by your lab hosting provider, and replace **xxxCustomDomainxxx.xxx** with your lab hosting provider's custom domain name): <br/> 

	dnscmd /zoneadd XXYYZZa.xxxCustomDomainxxx.xxx /DsPrimary

6. After the command has completed successfully, minimize your Windows PowerShell window (do NOT close it as you will use it later).

7. You will now access the **Microsoft 365 admin center** from LON-DC1. Select the **Internet Explorer** icon on your taskbar and enter the following URL in the address bar: **https://portal.office.com.**

8. On the **Sign in** page, enter **admin@M365xZZZZZZ.onmicrosoft.com** (where ZZZZZZ is the tenant ID provided by your lab hosting provider), and then enter the tenant email password provided by your lab hosting provider on the **Enter password** page. Select **Sign in.** 

9. In the **Office 365 home** page, select **Admin** to navigate to the **Microsoft 365 admin center**. 

10. In the **Microsoft 365 admin center**, in the left-hand navigation bar, select **Show all** (if necessary), select **Settings**, and then under the **Settings** group select **Domains**.

11. Note that in the list of Microsoft 365 domains, only the **M365xZZZZZZ.onmicrosoft.com** domain appears, and it’s currently flagged as the default domain. The existing on-premises **adatum.com** domain does not appear in the list of Microsoft 365 domains.   
‎  
‎To add Adatum's new Microsoft 365 domain, select **+Add domain** in the menu bar that appears above the list of domains; this will start the domain setup wizard.

12. In the **Add a domain** page, in the **Domain name** field, enter your domain name in the form of **XXYYZZa.xxxCustomDomainxxx.xxx** (where XXYYZZa is the unique UPN name provided by your lab hosting provider, and xxxCustomDomainxxx.xxx is your lab hosting provider's domain name), and then select **Use this domain**.  
‎  
‎**HINT:** Entering a name in the **Domain name** field is a quirky process. You cannot just type all the characters, one after the other, as you normally would; instead, **you must click into the field** **prior to entering each character in the name**. The quickest way to do this is to point your cursor into the right side of the field and then select it after entering each character rather than trying to position your cursor after the last character that you just entered.   
‎  
‎One other hint if you accidentally enter an incorrect character. In this case, you would normally press the **Backspace** key to delete what you entered and then re-enter the correct character. However, selecting the **Backspace** key will cause the system to exit the field and return you to the **Domains** page that displays all the domains. If this happens, you will have to start over and select **+Add domain** in the menu bar. So if you enter an incorrect character, position your cursor in front of the incorrect character and press the **Delete** key, then enter the correct character, and then select in the right side of the field to position the cursor after the last character so that you can continue. The best piece of advice is to take your time and enter each character correctly to try and avoid this situation. 

13. In the **How do you want to verify your domain?** page, you must select a verification method to prove you own the domain. You can choose to verify using either a TXT record or a MX record. For this lab, you will use the TXT record. Verify the **Add a TXT record to the domain’s DNS records** option is selected; if not, select it now. Select **Continue.**

14. On the **Verify you own this domain** page, you must copy the **TXT value** to configure the domain later on in DNS Manager. To do so, select the **Copy record** icon that appears under the **TXT value** (to the left of **MS=msXXXXXXXX**). If a dialog box appears, select **Allow access** to copy this value from the webpage to your clipboard. <br/>

	‎**Important:** If you select **Verify** at this point, you will receive an error indicating the system could not find the record you added for this domain (you can do this if you want to see the error; there is no harm in it). Therefore, you must complete the next series of steps to add the TXT record to this domain in **DNS Manager**. Once you finish that process, you will be instructed to return back to this page and select the **Verify** button so that you can complete the process of adding this domain in the Microsoft 365 admin center.

15. You must now switch over to Server Manager. Select the **Server Manager** icon that appears in your taskbar at the bottom of the page. Maximize the Server Manager window if necessary.

16. In **Server Manager Dashboard,** select **Tools** in the top right corner of the window. In the drop-down menu, select **DNS**, which will open **DNS Manager**. Maximize the DNS Manager window.

17. In the **DNS Manager** window, in the **File Explorer** section in the left-hand column, under **LON-DC1** expand the **Forward Lookup Zones** folder and then select the **XXYYZZa.xxxCustomDomainxxx.xxx** zone that you previously added in Windows PowerShell (where XXYYZZa is the unique UPN name provided by your lab hosting provider and xxxCustomDomainxxx.xxx is your lab hosting provider's domain name).

18. Right-click on this **XXYYZZa.xxxCustomDomainxxx.xxx** zone, and in the menu that appears, select **Other New Records...**

19. In the **Resource Record Type** window that appears, in the **Select a resource record type** field, scroll down and select **Text (TXT),** and then select the **Create Record...** button at the bottom of the window.

20. In the **New Resource Record** box, in the **Text (TXT)** tab, leave the **Record name** field blank. However, right-click in the **Text** field and select **Paste** from the menu that appears. This will paste in the TXT valued of **MS=msXXXXXXXX** that you copied to the clipboard when you were in the Microsoft 365 admin center.

21. Select **OK** to create the record.

22. In the **Resource Record Type** window, select **Done**. Note how this Text (TXT) record appears in the details pane on the right for the XXYYZZa.xxxCustomDomainxxx.xxx domain that you previously created. Leave your DNS Manager window open as you will return to it in a later step in this task.

23. You are now ready to return to the Microsoft 365 admin center and resume adding the domain record. In your Internet Explorer browser, select the **Microsoft 365 admin center** tab that displays the **Verify you own this domain** page.

24. If you’ll recall, when you were earlier adding the domain in the Microsoft 365 admin center, you indicated that you wanted to verify the domain using a TXT record. At that point you had to switch to DNS Manger and add the TXT record. Now that you’ve added the TXT record, you can go back to the Microsoft 365 admin center and proceed with the domain verification process. <br/>

	‎In the **Microsoft 365 admin center**, on the **Verify you own this domain** page, select the **Verify** button that appears at the bottom of the page. <br/>

	**Note:** If you selected **Verify** in the earlier step when you copied the TXT value just to see the error that you would receive, the **Verify** button changed to **Try again**. In you did this, then select **Try again** rather than **Verify**.

25. If your Text (TXT) record was successfully verified, the **How do you want to connect your domain?** page will appear. <br/>

	**Important:** If you had a typo or any other configuration mistakes, the domain will not be verified. If this occurs, the **How do you want to connect your domain?** window will not appear. In this case, you should repeat this task and take your time when configuring the domain to make sure you don’t run into similar issues at this step in the process.

26. On the **How do you want to connect your domain?** window, select **Continue**.

27. In the **Add DNS records** window, it displays a check box (which is selected by default) for the **Exchange and Exchange Online Protection** service that DNS supports. This is the service that you want to set up to enable all the functionality of Outlook and other email clients.   
‎  
‎Under the **Exchange and Exchange Online Protection** service, the description indicates the following additional DNS records are needed for the Exchange service to work properly in this domain: 

	- a Mail Exchanger (MX) record

	- an Alias (CNAME) record

	- a Text (TXT) record 
<br/>

	You must now switch back and forth between this **Add DNS records** page and **DNS Manager** to add these three additional DNS records to your new domain. For each record that you add in DNS Manager, you will copy information from this **Add DNS records** page and then paste it into each corresponding record that you create in DNS Manager. <br/>

	On the **Add DNS records** page, under the **Exchange and Exchange Online Protection** section, select the **arrows (&gt;)** to the left of **MX Records (1)**, **CNAME Records (1),** and **TXT Records (1)** to expand each of these three DNS record types. 

28. You will begin by adding the **MX record** required by the **Exchange and Exchange Online Protection** service. Perform the following steps to add this record:

	- In the **MX Records** **(1)** section, under the **Points to address or value** column, select the **Copy** icon that appears to the left of the expected value (for example, XXYYZZa-xxxCustomDomainxxx-xxx.mail.protection.outlook.com) to copy this value to the clipboard.

	- You must now switch to DNS Manager. On the taskbar at the bottom of the page, select the **DNS Manager** icon.

	- In **DNS Manager**, under **Forward Lookup Zones**, the **XXYYZZa.xxxCustomDomainxxx.xxx** domain should still be selected after you added the initial TXT record. You must now create a **Mail Exchanger (MX)** record for this domain. Right-click on the **XXYYZZa.xxxCustomDomainxxx.xxx** domain and select **New Mail Exchanger (MX)...**

	- In the **New Resource Record** window, in the **Mail Exchanger (MX)** tab, leave the **Host or child domain** field blank, but right-click in the **Fully qualified domain name (FQDN) of mail server** field and select **Paste** from the menu that appears. This will paste in the expected **Points to address or value** that you previously copied to the clipboard.

	- Select **OK**. Note how this Mail Exchanger (MX) record appears in the list of DNS records for the XXYYZZa.xxxCustomDomainxxx.xxx domain. Leave your DNS Manager window open as you will return to it in a later step in this task.

	- Switch back to the **Add DNS records** page in the Microsoft 365 admin center by selecting the **Internet Explorer** icon on the taskbar at the bottom of the page and selecting the **Microsoft 365 admin center** tab. 

	- At this point you can either select **Continue** at the bottom of the **Add DNS records** page to verify the MX record that you just added, or you can optionally wait until you have added all three DNS records and then select **Continue** to verify all three records at once.
<br/>

	For the purposes of this lab, we will wait until we have entered all three records and then verify them all at once. The reason for this sometimes when you verify each record as you enter it, it will return an error on a record that you created previously saying that it couldn’t find it. This can be a bit confusing – one moment it verifies the record, and the next it tells you it cannot find it. So it’s simplest to just verify all three records at once after you are all done creating the three DNS records.   
‎  
‎Do **NOT** select Continue; instead, proceed to the next step.

29. You should now perform the following steps to add the **CNAME record** required by Exchange and Exchange Online Protection service:

	- On the **Add DNS records** page, in the **CNAME Records (1)** section, under the **Points to address or value** column, select the **Copy** icon that appears to the left of the expected value (for example, autodiscover.outlook.com). <br/>

		**Important:** You will NOT copy the expected **Host Name** value. The value listed here as the expected host name is **autodiscover.XXYYZZa** (where XXYYZZa is your UPN name). However, if you paste this value in the **Alias name** field in the CNAME record in DNS Manager, the CNAME record validation on this page will fail. When you create the CNAME record in DNS Manager in the following steps, you will simply enter **autodiscover** as the Alias name and NOT **autodiscover.XXYYZZa**. <br/>

		The reason for only using autodiscover as the Alias name is that Autodiscover is an Exchange service that minimizes configuration and deployment. For small, single SMTP namespace organizations such as Adatum, only autodiscover is needed as the Alias, as opposed to autodiscover.XXYYZZa for larger organizations with multiple SMTP namespaces. By adding the CNAME record to your On-premise DNS server, you're creating a redirect record that allows users to configure Outlook and access OWA by using either Basic Authentication or Modern Authentication(OAUTH). <br/>

		Therefore, the only value you need to copy for the CNAME record is the expected value for the **Points to address or value** column (for example, autodiscover.outlook.com).

	- On the taskbar at the bottom of the page, select the **DNS Manager** icon.

	- In **DNS Manager**, under **Forward Lookup Zones**, right-click the **XXYYZZa.xxxCustomDomainxxx.xxx** domain and select **New Alias (CNAME)...**

	- In the **New Resource Record** window, enter **autodiscover** in the **Alias name (uses parent domain if left blank)** field.

	- Right-click in the **Fully qualified domain name (FQDN) for target host** field and select **Paste** from the menu that appears. This will paste in the expected **Points to address or value** (autodiscover.outlook.com) that you earlier copied to the clipboard.

	- Select **OK**. Note how this Alias (CNAME) record appears in list of DNS records for the XXYYZZa.xxxCustomDomainxxx.xxx domain that you previously created. Leave your DNS Manager window open as you will return to it in a later step in this task.

	- Switch back to the **Add DNS records** page in the Microsoft 365 admin center. Do **NOT** select Continue; instead, proceed to the next step.

30. You should now perform the following steps to add the **TXT record** required by Exchange and Exchange Online Protection service:

	- On the **Add DNS records** page, in the **TXT Records (1)** section, under the **TXT value** column, select the **Copy** icon that appears to the left of the expected value (for example, v=spf1 include:spf.protection.outlook.com -all) to copy this value to the clipboard.

	- On the taskbar at the bottom of the page, select the **DNS Manager** icon.

	- In **DNS Manager**, under **Forward Lookup Zones**, right-click the **XXYYZZa.xxxCustomDomainxxx.xxx** domain and select **Other New Records...**

	- In the **Resource Record Type** window that appears, in the **Select a resource record type** field, scroll down and select **Text (TXT),** and then select the **Create Record...** button at the bottom of the window.

	- In the **New Resource Record** window, in the **Text (TXT)** tab, leave the **Record name** field blank. However, right-click in the **Text** field and select **Paste** from the menu that appears. This will paste in the expected **TXT value** that you earlier copied to the clipboard.

	- Select **OK**. 

	- On the **Resource Record Type** window, select **Done**. In **DNS Manager**, you should now see the TXT record that you originally created to verify the domain, along with the MX, CNAME, and TXT records that you created for the Exchange service to work within this domain. 

	- Switch back to the **Add DNS records** page in the Microsoft 365 admin center by selecting the **Internet Explorer** icon on the taskbar at the bottom of the page and selecting the **Microsoft 365 admin center** tab.  
‎

31. On the **Add DNS records** page, select **Continue** to verify the three DNS records that you just added. If you selected **Continue** after adding the MX and CNAME records, and if each validated successfully, then only the TXT record will be validated at this point. However, if you did not select **Continue** after adding the MX and CNAME records, then all three records will be validated at this point.   
‎  
‎**Note:** Sometimes when you select **Continue** after entering the final TXT record, the system will validate the TXT record but return an error for the **MX Records (1),** even though the MX Record was previously was validated (the error will indicate a missing record). If this occurs, select **Continue** again.

32. If all three records have been successfully validated, then the **Domain setup is complete** page will appear. If this occurs, then select the **Done** button to complete the domain setup process.  <br/>

	**Note:** If any of the three DNS records did not validate successfully, you must correct the data on the corresponding record in DNS Manager and then select **Continue** again. You must repeat this process until all three DNS records have successfully validated and the **Domain setup is complete** page appears.

33. Once the domain setup process is complete and the three DNS records validated successfully for the **Exchange and Exchange Online Protection** service, the **Domains** page will be displayed. The **XXYYZZa.xxxCustomDomainxxx.xxx** custom domain that you just added should now appear in the list of domains along with your **M365xZZZZZZ.onmicrosoft.com** domain. Note that the new domain that you just added is listed as the Default domain rather than the previous onmicrosoft.com domain, and its status should be **Healthy**.

34. To complete the domain setup process, you must add an **A record** for this domain in DNS Manager. An **A record** connects the domain name to an IP address so that web browsers can find the website. In the next lab, you will validate the Outbound connector to connect Microsoft 365 to your email server. If you do not create an **A record**, the validation will fail and you will be unable to send external emails to your on-premises mailboxes.  
‎  
‎In the Lab Introduction in module 1, you were instructed to write down your tenant ID, UPN name, and IP address, all of which were provided by your lab hosting provider. You should now perform the following steps to enter that IP address in the **A record** that you create for the new domain: 

	- On the taskbar at the bottom of the page, select the **DNS Manager** icon.

	- In **DNS Manager**, under **Forward Lookup Zones**, right-click the **XXYYZZa.xxxCustomDomainxxx.xxx** domain and select **New Host (A or AAAA)...**

	- In the **New Host** window that appears, leave the **Name** field blank. In the **IP address** field, enter the IP address for your parent domain that was provided by your lab hosting provider (for example, 64.64.221.224). 

	- Select **Add Host**, and then select **OK** in the dialog box indicating the host record was successfully created.

	- In the **New Host** window, select **Done**. The **Host (A)** record should now be displayed along with the other DNS records that you created for this domain.

35. Close DNS Manager.

36. Remain logged into the LON-DC1 VM with both **Internet Explorer** and **Windows PowerShell** left open for the next task.

 

## Task 3: Configure the UPN name for custom domain

In Active Directory, the default User Principal Name (UPN) suffix is the DNS name of the domain where the user account was created. The Azure AD Connect wizard uses the UserPrincipalName attribute, or it lets you specify the on-premises attribute (in a custom installation) to be used as the user principal name in Azure AD. This is the value that is used for signing into Azure AD.

If you recall, your VM environment was created by your lab hosting provider with an on-premises domain titled **adatum.com**. This domain included several on-premises user accounts, such as Holly Spencer, Laura Atkins, and so on. Then in the prior task, you created a custom, accepted domain for Adatum titled **XXYYZZa.xxxCustomDomainxxx.xxx** (where XXYYZZa was the unique UPN name assigned to your tenant, and xxxCustomDomainxxx.xxx was the name of your lab hosting provider's custom domain).

In this task, you will use PowerShell to change the user principal name of the domain for the entire Adatum Corporation by replacing the originally established **adatum.com** domain with the custom **XXYYZZa.xxxCustomDomainxxx.xxx** domain. In doing so, you will update the UPN suffix for the primary domain and the UPN on every on-premises user account in AD DS with **@XXYYZZa.xxxCustomDomainxxx.xxx**.

A company may change its domain name for a variety of reasons. For example, a company may purchase a new domain name, or a company may change its name and it wants its domain name to reflect the new company name, or a company may be sold and it wants its domain name to reflect the new parent company’s name. Regardless of the underlying reason, the goal of changing a domain name is typically to change the domain name on each user’s email address.

For this lab, Adatum has purchased a new domain (provided by your lab hosting provider); therefore, it wants to change the domain name of all its on-premises users’ email addresses from @adatum.com to @ XXYYZZa.xxxCustomDomainxxx.xxx.

1. You should still be logged into LON-DC1 as the **Administrator** with a password of **Pa55w.rd**; if necessary, log in now.

2. In this task, you will run two PowerShell commands. To save you from having to type in the commands (which are quite lengthy), you will copy and paste in these commands into Notepad. You will then replace the custom domain name placeholder in the commands with the actual domain name, and then you will copy and paste each command from Notepad into PowerShell.  
‎  
‎Select the **magnifying glass (Search)** icon on the taskbar and then enter **note** in the Search field. In the menu that appears, select **Notepad**. Maximize the Notepad window once it opens.

3. While the PowerShell commands that you need to run are provided in steps 6 and 7, it will be easier to copy these steps into Notepad, perform a **Replace** command to replace the custom domain name parameter with your actual new domain name, and then copy the commands in Notepad and paste them into PowerShell. This will save you from having to enter some lengthy PowerShell commands.   
‎  
‎Therefore, copy the PowerShell commands from **steps 6 and 7** below and paste them into Notepad (**Hint:** to make it easy, copy all the text for steps 6-7 and not just the PowerShell commands; that way you can do one Copy statement rather than 2 Copy statements of just the PowerShell commands). 

4. Once you have copied steps 6 and 7 into Notepad, select **Edit** on the menu bar and then select **Replace**. In the **Replace** window, copy **XXYYZZa.xxxCustomDomainxxx.xxx** and paste it into the **Find what** field. In the **Replace with** field, enter the new domain you previously added, and then select **Replace all**.   
‎  
‎**Important:** Review the Notepad document and verify that both commands were updated by replacing **XXYYZZa.xxxCustomDomainxxx.xxx** with the new accepted domain name**.** Verify you spelled the new domain name correctly.  

5. If **Windows PowerShell** is still open, then select the **Windows PowerShell** icon on your taskbar; otherwise, you must open **Windows PowerShell** just as you did earlier (remember to **Run as administrator)**.

6. You will now begin the process of copying each of the PowerShell commands (from this step through step 7) from Notepad and pasting and running them in Windows PowerShell.  
‎  
‎‎In the following PowerShell command, the **Set-ADForest** cmdlet modifies the properties of an Active Directory forest, and the **-identity** parameter specifies the Active Directory forest to modify.   
‎  
‎Select the **Notepad** icon on the taskbar and then copy the following command from Notepad (select the command, right-click on it, and then select **Copy**), paste it into PowerShell at the command prompt (right click on the command prompt and select **Paste).**  
‎  
‎**Note:** Traditionally, you must right-click at the command prompt, select Paste, and then hit ENTER on the keyboard to run a command. However, in some VM environments, you just have to right-click at the command prompt to both paste in the copied command AND run it.  <br/>

	‎Set-ADForest -identity adatum.com -UPNSuffixes @{replace="XXYYZZa.xxxCustomDomainxxx.xxx"}

7. Copy the following command from Notepad, paste it into PowerShell at the command prompt, and then run it.   
‎  
‎This command changes all existing adatum.com accounts to the new UPN @XXYYZZa.xxxCustomDomainxxx.xxx domain:   
‎  
‎‎Get-ADUser -Filter * -Properties SamAccountName | ForEach-Object { Set-ADUser $_ -UserPrincipalName ($_.SamAccountName + "@XXYYZZa.xxxCustomDomainxxx.xxx" )}

8. Wait for PowerShell to complete the prior command and return to the command prompt, and then close the Windows PowerShell window.



## Task 4: Enable Exchange for the Custom Domain  

In this task, you will log into the on-premises Exchange Server (LON-EX1) VM and enable your Exchange on-premises environment for the accepted domain (**XXYYZZa.xxxCustomDomainxxx.xxx**) that you added and configured in the prior tasks. You will run a series of PowerShell commands in the Exchange Management Shell, and you will update additional settings in the on-premises Exchange Admin Center. 

1. Switch to LON-EX1 and, if necessary, log in as the **Administrator** with a password of **Pa55w.rd**. If you had to log in and the **Server Manager** application automatically opened, then close it now.

2. In this task, you will enter a series of Exchange-specific PowerShell commands through the **Exchange Management Shell**. These commands will enable your on-premises Exchange environment for the new **XXYYZZa.xxxCustomDomainxxx.xxx** accepted domain.   
‎  
‎To expedite running these commands, open **Notepad** just as you did in the prior task, maximize the Notepad window, and then copy **steps 5-15** below and paste them into the Notepad document (to make it easy, copy all the text for steps 5-15 and not just the PowerShell commands; that way you can do one Copy statement rather than 11 Copy statements of just the PowerShell commands).

3. In the prior task, after you copied the two steps into Notepad, you did one mass replace on XXYYZZa.xxxCustomDomainxxx.xxx. However, in this task, one of the commands just references xxxCustomDomainxxx.xxx and not the XXYYZZa UPN name, so in this task, you should replace each portion of the domain name separately.   
‎  
‎**A**fter copying the commands from steps 5-15 into Notepad, perform the following two **Replace** commands in Notepad: 

	- Replace all instances of **XXYYZZa** with the **UPN Name** provided by your lab hosting provider.

	- Replace all instances of **xxxCustomDomainxxx.xxx** with the accepted domain provided by your lab hosting provider. <br/>

	**Important:** Review the Notepad document and verify that all instances of XXYYZZa have been replaced with your UPN Name, and all instances of xxxCustomDomainxxxx.xxx have been replaced with your new domain name.

4. To open the **Exchange Management Shell**, select the Windows icon on the bottom left corner of the taskbar, and then in the menu select **Microsoft Exchange Server 2019** to expand this program group, and then in the group, select **Exchange Management Shell**. Maximize the **Exchange Management Shell** window once it opens. Wait for the command prompt to appear before proceeding.

5. You will now begin the process of copying each of the PowerShell commands in Notepad and then pasting and running them in the Exchange Management Shell.  
‎  
‎Select the **Notepad** icon on the taskbar, and in your Notepad document, start with this Step 5.  
‎   
‎Select the following PowerShell command from step 5 in the Notepad document, right-click on it, and select **Copy**, paste it into the Exchange Management Shell at the command prompt (right click on the command prompt and select **Paste;** Note – in some VM environments, just right-clicking at the command prompt will paste in the copied command), and then press Enter on your keyboard.  
‎  
‎This command will add a new send connector with a wildcard (asterisk) to accept all emails from any domain:  
‎  
‎New-SendConnector -Name "To Internet" -AddressSpaces "*"

6. Copy the following command from Notepad, paste it into the Exchange Management Shell at the command prompt, and then run it. This command will add the accepted XXYYZZa.xxxCustomDomainxxx.xxx domain as a Micro, set it as a trusted domain, and assign it the Alias of A.Datum: <br/>

	New-AcceptedDomain -DomainName "XXYYZZa.xxxCustomDomainxxx.xxx" -DomainType Authoritative -Name "A.Datum"

7. Copy the following command from Notepad, paste it into the Exchange Management Shell at the command prompt, and then run it. This command will set the default email policy for every user to have its primary email address as the accepted domain of XXYYZZa.xxxCustomDomainxxx.xxx:  <br/>

	Set-EmailAddressPolicy -Identity "Default Policy" -EnabledPrimarySMTPAddressTemplate "SMTP:%m@XXYYZZa.xxxCustomDomainxxx.xxx" 

8. Copy the following command from Notepad, paste it into the Exchange Management Shell at the command prompt, and then run it. This command will update the default email policy that was just changed in the previous command:  <br/>

	Update-EmailAddressPolicy -Identity "Default Policy"

9. Copy the following command from Notepad, paste it into the Exchange Management Shell at the command prompt, and then run it. This command will set the internal and external address for the OWA Virtual Directory to https://XXYYZZa.xxxCustomDomainxxx.xxx/OWA:  <br/>

	Set-OwaVirtualDirectory -Identity "LON-EX1\OWA (Default Web Site)" -ExternalUrl https://XXYYZZa.xxxCustomDomainxxx.xxx/OWA -InternalUrl https://XXYYZZa.xxxCustomDomainxxx.xxx/OWA  
‎  
‎**NOTE:** Ignore the warning that’s displayed. This warning is addressed when you run the next command.

10. Copy the following command from Notepad, paste it into the Exchange Management Shell at the command prompt, and then run it. This command will set the internal and external address for the ECP Virtual Directory to https://XXYYZZa.xxxCustomDomainxxx.xxx/ECP:  <br/>

	Set-EcpVirtualDirectory -Identity "LON-EX1\ECP (Default Web Site)" -ExternalUrl https://XXYYZZa.xxxCustomDomainxxx.xxx/ECP -InternalUrl https://XXYYZZa.xxxCustomDomainxxx.xxx/ECP

11. Copy the following command from Notepad, paste it into the Exchange Management Shell at the command prompt, and then run it. This command will set the internal and external address for the Active Sync Virtual Directory to https://XXYYZZa.xxxCustomDomainxxx.xxx/Microsoft-Server-Activesync: <br/>

	Set-ActivesyncVirtualDirectory -Identity "LON-EX1\Microsoft-Server-ActiveSync (Default Web Site)" -ExternalUrl https://XXYYZZa.xxxCustomDomainxxx.xxx/Microsoft-Server-Activesync -InternalUrl https://XXYYZZa.xxxCustomDomainxxx.xxx/Microsoft-Server-Activesync

12. Copy the following command from Notepad, paste it into the Exchange Management Shell at the command prompt, and then run it. This command will set the internal and external address for the Web Services Virtual Directory to https://XXYYZZa.xxxCustomDomainxxx.xxx/ews/exchange.asmx: <br/>

	Set-WebServicesVirtualDirectory -Identity "LON-EX1\EWS (Default Web Site)" -ExternalUrl https://XXYYZZa.xxxCustomDomainxxx.xxx/ews/exchange.asmx -InternalUrl https://XXYYZZa.xxxCustomDomainxxx.xxx/ews/exchange.asmx  
‎  
‎**NOTE:** For this **Set-WebServicesVirtualDirectory** command, if you receive a prompt that indicates the InternalURL parameter can’t be resolved, enter **A** for **Yes to All** to continue and then press **Enter**.

13. Copy the following command from Notepad, paste it into the Exchange Management Shell at the command prompt, and then run it. This command will set the internal and external address for the OAB Virtual Directory to https://XXYYZZa.xxxCustomDomainxxx.xxx /OAB: <br/>

	Set-OabVirtualDirectory -Identity "LON-EX1\OAB (Default Web Site)" -ExternalUrl https://XXYYZZa.xxxCustomDomainxxx.xxx/OAB -InternalUrl https://XXYYZZa.xxxCustomDomainxxx.xxx/OAB

14. Copy the following command from Notepad, paste it into the Exchange Management Shell at the command prompt, and then run it. This command will set the internal and external address for the Outlook Anywhere external host name to XXYYZZa.xxxCustomDomainxxx.xxx and to set the authentication method to NTLM and to require external clients to use SSL to make the connection: <br/>

	Set-OutlookAnywhere -Identity "LON-EX1\Rpc (Default Web Site)" -ExternalHostname XXYYZZa.xxxCustomDomainxxx.xxx -ExternalClientsRequireSsl $true -ExternalClientAuthenticationMethod NTLM -InternalHostname XXYYZZa.xxxCustomDomainxxx.xxx -InternalClientsRequireSsl $true -InternalClientAuthenticationMethod NTLM

15. Copy the following command from Notepad, paste it into the Exchange Management Shell at the command prompt, and then run it. This command will set the Outlook certificate to *.xxxCustomDomainxxx.xxx: <br/>

	Set-OutlookProvider EXPR -CertPrincipalName:*.xxxCustomDomainxxx.xxx  
‎
16. Close your Exchange Management Shell window by selecting the **X** in the upper-right hand corner.

17. Close Notepad (do not save the document).

18. To enable Exchange for the custom domain, you must identify the Exchange services that you want to assign to the *.xxxCustomDomainxxx.xxx certificate.  
‎  
‎If you have a tab open in your Internet Explorer browser for the on-premises **Exchange admin center,** then proceed to the next step; otherwise, select the **Windows** icon on the taskbar, select the **Microsoft Exchange Server 2019** group, select **Exchange Administrative Center**, then log in as **adatum\Administrator** with a password of **Pa55w.rd**. 

19. In the on-premises **Exchange admin center**, select **servers** in the left-hand navigation pane, and then select the **certificates** tab.

20. In the list of certificates, select the **star.xxxCustomDomainxxx.xxx** certificate (where xxxCustomDomainxxx.xxx is the name of you accepted domain) and then select the **pencil (Edit)** icon on the menu bar. 

21. In the **star.xxxCustomDomainxxx.xxx** window, select **services** in the left-hand pane. 

22. In the list of services, select the **SMTP** check box and the **IIS** check box, and then select **Save**. Select **Yes** in the **Warning** dialog box that appears.

23. In the on-premises **Exchange admin center**, select **mail flow** in the left-hand navigation pane and then select the **accepted domains** tab at the top of the page.

24. In the list of accepted domains, you must set the **A.Datum** domain (where the **Accepted Domain** is XXYYZZa.xxxCustomDomainxxx.xxx) as the Default domain. Select this domain, then select the **pencil (Edit)** icon on the menu bar above the list of domains. 

25. In the **A.Datum** window, under the **This accepted domain is** option, verify that **Authoritative** is selected (this should have been set to Authoritative in the step 6 PowerShell command). Then select the **Make this the default domain** check box and select **Save**.  
‎  
‎In the list of domains, the **A.Datum** domain should now be listed as the **default domain** and the **Domain Type** should be **Authoritative**.

26. Leave the on-premises Exchange admin center tab open in your Internet Explorer browser and proceed to the next task.

 

## Task 5: Migrate On-premises User Accounts to the Custom Domain

In this lab, you will log into the Domain Controller (LON-DC1) VM and enable directory synchronization. To do this, you must first download the setup wizard for the Microsoft Azure Active Directory Connect tool. You will then run the installation wizard to enable and configure directory synchronization. This will perform a full synchronization that migrates all of Adatum’s on-premises user accounts to the new accepted domain in Microsoft 365. 


1. Switch to LON-DC1 and, if necessary, log in as the **Administrator** with a password of **Pa55w.rd**. 

2. In your Internet Explorer browser session, the **Microsoft Office Home** tab and the **Microsoft 365 admin center** tab should still be open; if not, then navigate to them now.  
‎  
‎Select the **Microsoft 365 admin center** tab. 

3. In the **Microsoft 365 admin center**, in the left-hand navigation pane, select **Users**, and then select **Active users**. 

4. You are now going to navigate to the **Microsoft Download Center** to download the **Azure AD Connect** tool.   
‎  
‎In the **Active users** window, on the menu bar, select the **ellipsis (More actions)** icon (which appears between **Refresh** and **Search**), and then in the drop-down menu, select **Directory synchronization**.  
‎  
‎**Note:** If the **ellipsis (…)** icon does not appear between **Refresh** and **Search** on the menu bar, then at the very top of the left-hand navigation pane, select the **Navigation menu (three vertical lines)** icon to minimize the navigation pane, which removes the text. This expands the size of the **Active users** page, so the ellipsis icon should now appear on the menu bar. If for some reason you cannot locate the **Directory synchronization** option, then you can navigate directly to the **Azure AD Connect** page in the **Microsoft Download Center** by opening a new tab in your browser and entering the following URL in the address bar: [**https://www.microsoft.com/en-us/download/details.aspx?id=47594**](https://www.microsoft.com/en-us/download/details.aspx?id=47594). If you navigate directly to this URL, you can skip the next step.

5. In the **Azure Active Directory preparation** window, select **Go to the Download center to get the Azure AD Connect tool**. This opens a new tab in your browser and takes you to the Microsoft Download Center.

6. In the **Microsoft Download Center**, scroll down to the **Microsoft Azure Active Directory Connect** section and select the **Download** button.

7. In the notification bar that asks whether you want to Run or Save the **AzureADConnect.msi** file, select **Save**.

8. Once the download is complete, in the notification bar at the bottom of he page, select **Run**.

9. This initiates the installation of the **Microsoft Azure Active Directory Connect Tool**. If the **Welcome to Azure AD Connect** window does not appear on the desktop, find the icon for it in the task bar and select it. <br/>

	On the **Welcome to Azure AD Connect** window in the setup wizard, select the **I agree to the license terms and privacy notice** check box and then select **Continue**.

10. On the **Express Settings** page, read the instruction regarding a single Windows Server AD forest and then select **Use express settings**.

11. On the **Connect to Azure AD** window, you must enter the user credentials for a Microsoft 365 user account that has been assigned the Microsoft 365 Global Administrator role. Enter **admin@M365xZZZZZZ.onmicrosoft.com** (where ZZZZZZ is your unique tenant ID provided by your lab hosting provider) in the **USERNAME** field, enter (or copy and paste) the tenant email password provided by your lab hosting provider in the **PASSWORD** field, and then select **Next.**

12. On the **Connect to AD DS** page, enter **adatum\Administrator** in the **USERNAME** field, enter **Pa55w.rd** in the **PASSWORD** field, and then select **Next.**

13. In the **Azure AD sign-in configuration** window, select the **Continue without matching all UPN suffixes to verified domains** check box at the bottom of the page, and then select **Next**.

14. On the **Ready to configure** screen, select the **Start the synchronization process when configuration completes** check box (if it’s not already selected), and select the **Exchange hybrid deployment** check box since you are preparing Azure AD Connect for an Exchange hybrid deployment. <br/>

	Select **Install**.

15. The installation will usually take 5 to 10 minutes to complete. On the **Configuration complete** window, verify you receive a message at the top of the window indicating **Azure AD Connect configuration succeeded.** Ignore the warning indicating the Active Directory Recycle Bin is not enabled for your forest.   
‎  
‎Select **Exit**.

16. In the taskbar at the bottom of the screen, select the **magnifying glass (Search)** icon, and then in the Search box, enter **synch**. In the menu that appears, select the **Synchronization Service** desktop application to open it.

17. Maximize the **Synchronization Service Manager** window.

18. In the **Synchronization Service Manager** window, on the ribbon at the top of the page, the **Operations** tab is displayed by default so that you can monitor the synchronization process.

19. Wait for the **Export** profile to complete for **M365xZZZZZZ.onmicrosoft.com** (the second task in the list); when it finishes, its **Status** should be **completed-export-errors**.   
‎  
‎Once this status appears, select this row.

20. In the bottom portion of the screen, a detail pane appears showing the detailed information for this operation that you just selected.

	- In the **Export Statistics** section, note the number of users that were added and the number that were updated.

	- In the **Export Errors** section, note the errors that appear. Select each link under the **Export Errors** column. These are users whose on-premises accounts have an invalid UPN, which in turn caused UPN validation errors during the synchronization process; therefore, these users were not synchronized by the Azure AD Connect tool. <br/>

	**Note:** Because a synchronization had not been performed prior to this, the initial synchronization was a **Full Synchronization** (see the **Profile Name** column). Because the synchronization process will continue to run automatically every 30 minutes, any subsequent synchronizations will display **Delta Synchronization** as its **Profile Name**. If you leave the **Synchronization Service Manager** window open, after 30 minutes you will see that it attempts to synchronize the two users who were not synchronized during the initial synchronization. These will display as a **Delta Synchronization**.

21. Close the **Synchronization Service Manager**. 

22. In your browser, close the **Download Microsoft Azure AD Connect** tab, and then in the **Microsoft 365 admin center** tab, close the **Azure Active Directory preparation** pane. This will return you to the **Active users** list.  
‎  
‎**Note:** If you had to select the **Navigation menu** icon at the very top of the left-hand navigation pane in the earlier step to see the ellipsis icon, then select this **Navigation menu** icon again to expand the pane and display the text associated with each icon. Seeing the text associated with each icon makes it easier to navigate through the admin center. 

23. On the **Active users** page, note that all the existing Microsoft 365 user accounts are the predefined users that were created in your tenant by the lab hosting provider. Select the **Refresh** icon on the menu bar to see all the on-premises user accounts that were migrated to the new accepted domain in Microsoft 365.   
‎  
‎Note the **Username** for each of these accounts, which should be in the format of **&lt;alias&gt;@XXYYZZa.xxxCustomDomainxxx.xxx**. Also note that each of these user accounts is **Unlicensed**; this indicates that while the on-premises accounts have been migrated to the new domain in Microsoft 365, they have not been assigned an Office 365 license.   
‎  
‎If you scroll down through the list of **Active users**, note that you will see both unlicensed and licensed users; the licensed users are the original list of Microsoft 365 user accounts created by your lab hosting provider.

24. On the right-side of the menu bar at the top of the page, select **Filter**. In the menu that appears, select **Licensed users**. This will display only those user accounts that were all assigned an Office 365 license (these are the user accounts that were created by your lab hosting provider).   
‎  
‎In the **Username** column, note how these user accounts were assigned to the **M365xZZZZZZ.onmicrosoft.com** domain when they were created.

25. Note how the **Filter** option on the menu bar now displays **Licensed users**. Select **Licensed users** and in the menu that appears, select **Unlicensed users**. This will display all the user accounts that were just migrated from the Adatum on-premises domain, since the migration process did not assign a license to any of these new Microsoft 365 accounts that were just created. If you scroll down through this list, you should not see any of the licensed user accounts in the **M365xZZZZZZ.onmicrosoft.com** domain.  
‎  
‎In the **Username** column, note how these user accounts were assigned to the **XXYYZZa.xxxCustomDomainxxx.xxx** domain that you earlier created in Microsoft 365.  
‎

26. The **Filter** option on the menu bar should now display **Unlicensed users**. Select **Unlicensed users** and in the menu that appears, select **All users**. This will return you to the list of all active user accounts in both the **XXYYZZa.xxxCustomDomainxxx.xxx** and **M365xZZZZZZ.onmicrosoft.com** domains.   
‎  
‎You have just verified that the Full Synchronization process migrated Adatum’s on-premises user accounts to the new accepted domain.

27. Leave your Internet Explorer browser and all tabs open as it will be used in the next lab.

 

# End of Lab 9