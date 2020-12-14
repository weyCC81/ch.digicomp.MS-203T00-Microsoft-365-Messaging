# Module 4 - Lab 4 - Exercise 1 – Managing Messaging Compliance

In this lab you will continue in your role as Holly Dickson, Adatum's Messaging Administrator. Holly has been tasked with maintaining message traffic and reducing the number of undeliverable emails in Adatum’s messaging environment.

To complete this task, you will create data loss prevention policies and conduct message tracing to familiarize yourself with the tools provided by Microsoft 365 that assist you with managing message compliance.

 
## Task 1: Prepare for eDiscovery

One of the significant security and compliance tools available in Microsoft 365 is the ability to perform eDiscovery searches on information gathered in the system. In the final task in this exercise, you will create an eDiscovery case that searches email messages for sensitive data. Once you create the case and perform a search associated with the case, you will attempt to view the search results. However, only users who have been assigned the Compliance data administrator role can view search results associated with an eDiscovery case.  
‎  
‎Users who have been assigned the Global Administrator role in Microsoft 365 basically have access to all system functionality. However, that does not mean they can view all the data in the system. This is the case with eDiscovery. A Global Admin can create an eDiscovery case and run an eDiscovery search, but unless the user is also assigned the Compliance data administrator role, he or she will not be able view the search results. 

Therefore, in this task you will assign Nestor Wilke (a Global Admin) the Compliance data administrator role. The reason you will do this now rather than in Task 8 when you log in as Nestor and create an eDiscovery case is that it takes roughly 60 minutes for role assignments to fully propagate through the system. So hopefully by the time you get to Task 8, the role will be fully propagated, and you will be able to view the search results. 

**Note:** You should keep track of what time it is when you complete this task so that when you get to Task 8, if the system tells you that you do not have the necessary permission to view the eDiscovery search results, you will have an approximate idea as to how long you must wait before trying again. 

1. Switch to LON-EX1 and, if necessary, log in as the **Administrator** account with a password of **Pa55w.rd**. 

2. In your Edge browserbrowser navigate to the **Office 365 home page** by entering the following URL: [**https://portal.office.com/**](https://portal.office.com/) 

3. In the **Sign in** dialog box, copy and paste in the **Tenant Email** account provided by your lab hosting provider (**admin@M365xZZZZZZ.onmicrosoft.com**, where ZZZZZZ is your unique tenant suffix ID provided by your lab hosting provider) and then select **Next**.

4. In the **Enter password** dialog box, copy and paste in the **Tenant Password** provided by your lab hosting provider and then select **Sign in**.

5. On the **Stay signed in?** dialog box, select the **Don’t show this again** check box and then select **Yes.**

6. If a **Get your work done with Office 365** dialog box appears, select the **X** to close it**.**

7. In the **Office 365 home** page, in the **Apps** section locate on the left hand side of the page, select the **Admin** app.

8. In the **Microsoft 365 admin center**, in the left-hand navigation bar, select Users and then Active Users. 

9. In the **Active users** window, select **Nestor Wilke’s** account (click directly on Nestor’s name and do NOT select the circle to the left of the name).

10. In the **Nestor Wilke** pane that appears, the **Account** tab is displayed by default. Scroll down and under the **Roles** section, select **Manage roles**.

11. On the **Manage roles** pane, scroll down and select **Show all by category**. 

12. Scroll down and under the **Security &amp; Compliance** group, select the **Compliance data admin** role and then select **Save changes**.

13. Leave your browser open and proceed to the next task.

 

## Task 2: Creating a Custom DLP policy

In this task your you will create a custom DLP Policy that prevents financial data from being sent out externally or internally. This policy will prevent users from sending emails that include credit card numbers, bank account numbers, and ABA routing numbers. 
 

1. You should still be logged into LON-EX1 from the prior task; if necessary, log in as the **Administrator** with a password of **Pa55w.rd**. 

2. In your Edge browserbrowser, you should still have the **Microsoft 365 admin center** open from the prior task; if so, select that tab now. If you closed your browser session or the **Microsoft 365 admin center** tab, perform the steps necessary to navigate to the admin center.

3. In the **Microsoft 365 admin center**, in the left-hand navigation bar, select **Show All** (if necessary) to display all the navigation menu options, and then under the **Admin centers** section, select **Compliance.**

4. In the **Microsoft 365 compliance admin center**, in the left-hand navigation pane, select **Policies.**

5. On the **Policies** page, under the **Data** section, select **Data loss prevention**.

6. On the **Data loss prevention** page, select **+Create policy** in the menu bar at the top of the page.

7. In the **Start with a template or create a custom policy** page, the left-hand column displays four major template groups, including Financial, Medical and health, Privacy, and Custom.   
‎  
‎Select **Financial**. In the pane that appears to the right of it, scroll down and select **U.S. Financial Data**, and then select **Next.**

8. In the **Name your DLP policy** window, **U.S. Financial Data** is entered by default in the **Name** field, and a default description is entered in the **Description** field. Accept these defaults by selecting **Next**.

9. On the **Choose locations to apply the policy** page, all the existing locations are turned **ON**. Select the toggle switches for the following locations to turn them **OFF** (only the Exchange email location should be turned ON): 

	- **Exchange email**

	- **SharePoint sites**

	- **OneDrive account**

	- **Teams chat and channel messages**  

	- **Microsoft Cloud App Security**
‎

	Select **Next.**

10. On the **Define policy settings** page, the default option only includes the following default settings: Credit Card Number, U.S. Bank Account Number, and ABA Routing Number.   
‎  
‎However, Adatum also wants to include U.S. Driver’s License Number, U.S. Social Security Number (SSN), U.S. / U.K. Passport Number, and U.S. Individual Taxpayer Identification Number (ITIN). To include these additional settings in this DLP policy, select the **Create or customize advanced DLP rules** option and then select **Next**. 

11. In the **Customize advanced DLP rules** page, select **+Create rule**.

12. In the **Create rule** window, enter **Sensitive Data** in the **Name** field. 

13. Under the **Conditions** group, select **+Add condition**. 

14. In the menu that appears, select **Content contains.**

15. In the **Content contains** group and under the field that displays **Default**, select **Add**, and then In the drop-down menu that appears, select **Sensitive info types**. 

16. In the **Sensitive info types** window, select the check boxes for the following types of information:

	- **U.S. Social Security Number (SSN)**

	- **ABA Routing Number**

	- **U.S. Individual Taxpayer Identification Number (ITN)**

	- **U.S. / U.K. Passport Number**

	- **U.S. Bank Account Number**

	- **U.S. Driver’s License Number**

	- **Credit Card Number**

17. Select **Add**.

18. This returns you to the **Create rule** window. Scroll down and under the **Action** group, select **+Add an action**. In the drop-down menu that appears, select **Restrict access or encrypt the content**. 

19. In the **Restrict access or encrypt the content group**, select the **Restrict access or encrypt the content in Microsoft 365 locations** check box.

20. In the options that appear, verify the **Block** **people from sharing and restrict access to shared content** option is selected.  
‎  
‎Under the **Block users from accessing shared SharePoint, OneDrive, and Teams content** group, select the **Block everyone. Only the content owner, the last modifier and the site admin will continue to have access** option. 

21. Continue to scroll down on the **Create rule** window. Under the User notification group, select the toggle button to turn **ON** user notifications

22. Under the **User notifications** group, turn it to the **on** position and select the **Notify these people** option.

23. Under the **Notify these people** option, only **The person who sent, shared, or modified the content** check box is selected. Select the other two check boxes as well (**Owner of the SharePoint site or OneDrive account**, and **Owner of the SharePoint site or OneDrive content**).

24. Under the **Send the email to these additional people** group, select **Add or remove people**. 

25. In the **Add or remove people** window that appears, select **MOD Administrator** from the list of users and then select **Add**.

26. This returns you to the **Create rule** window. Scroll down and select the **Customize the email text** check box. In the field that appears, copy the following text and paste it into the field: **This email contains sensitive personal and/or corporate information that is not allowed to be included in emails. Please remove the sensitive information. Thank you.**

27. In the **Create rule** window, scroll down to the **Incident reports** section. Select the drop-down arrow in the **Severity level** field and select and select **High**.

28. Select the toggle button for the **Send an alert to admins when a rule match occurs** option to turn it **On**.

29. Scroll to the bottom of the **Create rule** window, select the drop-down arrow for the **Priority** field and select **1**.

30. Select **Save**.

31. This returns you to the **Customize advanced DLP rules** page. Select **Next**. 

32. On the **Test or turn on the policy page**, select the **Yes, turn it on right away** option and then select **Next**. 

33. On the **Review your policy and create it** page, review all your settings. If any setting needs correction, select either **Edit** for that section or **Back** to correct any settings. Once everything is correct, select **Submit**.

34. On the **New policy created** window, select **Done**.

35. In the **Data loss prevention** window, the new policy that you just created should be displayed in the list of data loss prevention policies.   
‎  
‎**Important:** Although the status of the policy is **Enabled**, it can take up to 24 hours for the policy to propagate through the system and become fully operational. Therefore, we cannot test the policy at this time to validate that it is working properly. 

  

## Task 3: Confirming the Status of the Custom DLP policy

In the prior task, you created a custom DLP policy. The task also indicated that it can take up to 24 hours for the policy to become active (i.e. to propagate through the system and become fully operational). In this task, you will learn how to use PowerShell to check the progress of the policy to determine when it is active. 

1. You should still be logged into LON-EX1 from the prior task; if necessary, log in as the **Administrator** with a password of **Pa55w.rd**. 

2. Select the magnifying glass on the taskbar at the bottom of the screen and enter **Powershell** in the Search box. In the menu that appears, right-click on **Windows PowerShell** and select **Run as administrator**. Maximize your Windows PowerShell window. 

3. At the command prompt, run the following command to change the PowerShell execution policy for your Windows computer:  
‎  
‎**Note:** Instead of typing each command, it will be quicker to copy each command and paste it into PowerShell at the command prompt. Copy and pasting the commands will also avoid any errors that can occur when typing in the commands, especially with the longer commands. In some VM environments, you simply need to right-click at the command prompt to paste in the copied command.   
‎  
‎Set-ExecutionPolicy RemoteSigned  
‎  
‎**Note:** You will be prompted as to whether you want to change the execution policy. Enter **A** for **Yes to All.**

4. At the command prompt, run the following command to prompt you for your user credentials:  
‎  
‎$UserCredential = Get-Credential  
‎  
‎**Note:** This will open a dialog box to enter your credentials. Enter **admin@M365xZZZZZZ.onmicrosoft.com** (where ZZZZZZ is your unique tenant ID provided by your lab hosting provider) in the **User name** field and enter your tenant email password in the **Password** field. Select **OK**.

5. At the command prompts, run the following two commands to establish your connection to the Security and Compliance center:  <br/>
‎  
‎	$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://ps.compliance.protection.outlook.com/powershell-liveid/ -Credential $UserCredential -Authentication Basic -AllowRedirection <br/>

	Import-PSSession $Session -DisableNameChecking  
‎
6. At the command prompt, run the following command to display the Distribution Status of the DLP policy that you created in the prior task titled **U.S. Financial Data:**  
‎  
‎Get-DlpCompliancePolicy "U.S. Financial Data"| select DistributionStatus  
‎  
‎**Note:** At this moment, the **Distribution Status** of the DLP policy should be **Pending**, since it can take up to 24 hours before the policy becomes fully operational. In a real-world environment, you should check the status from time to time to verify when the Distribution Status changes to **Success**, which indicates the policy is active.

7. Minimize the Windows PowerShell window as you will use it in a later task.

8. Leave your Edge browserbrowser open and proceed to the next task.  
‎

 

## Task 4: Performing a Message Trace

In this task, Holly Dickson plans to test Microsoft 365’s message tracing functionality. Messages traces are used to track and monitor where the message has traveled and what type of anti-spam and regulatory policies are enacted upon the message.

1. You should still be logged into LON-EX1 from the prior task; if necessary, log in as the **Administrator** with a password of **Pa55w.rd**. 

2. In Edge browser, if you still have tabs open for the **Microsoft Office Home** page and the **Microsoft 365 admin center**, then proceed to the next step; otherwise, navigate to **https://portal.office.com**, log in as **admin@M365xZZZZZZ.onmicrosoft.com** with the tenant email password, and then select **Admin**. 

3. Select the **Microsoft Office Home** tab and then select **Outlook** to open **Outlook on the web** for the MOD Administrator’s account.

4. In the upper left corner of the screen, select **New message**. 

5. In the message pane that appears on the right-side of the screen, enter the following information:

	- To: start typing **Alex** and a drop-down menu displays with users whose name begins with that. Select **Alex Wilber**.

	- Add a subject: **Confidential message tracing test**

	- Message area: **This message will be used to test the message trace tool located in the Security admin center.**

6. Select **Send**.

7. Select the **Microsoft 365 Admin center** tab in your browser.

8. In the **Microsoft 365 admin center**, in the left-hand navigation pane, select **show all** (if necessary) and under **Admin centers,** select **Security**.

9. In the **Office 365 Security &amp; Compliance center**, in the left-hand navigation pane, select **Mail flow**, and then select **Message trace**.

10. On the **Message trace** page, in the list of queries, select the default query titled: **Messages sent from my primary domain in the last day.**

11. In the **Messages sent from my primary domain in the last day** pane that appears, you want to refine the search to only see messages going out from the primary domain to Alex Wilber.  
‎  
‎In the **By these people** field, it already displays the primary domain of **@M365xZZZZZZ.onmicrosoft.com** (where ZZZZZZ is your unique tenant ID provided by your lab hosting provider), so leave this value as is.   
‎  
‎However, in the **To these people** field, enter **Alex**, and then in the menu of users that appears, select **Alex Wilber** (you may have to select it twice)**.** 

12. To avoid issues with the starting time for the search, on the **Within this time range** slider tool, drag the slider to the left so that it specifies **Last 2 day(s)** (actually, you can select any value greater than 1 day).

13. Select the **Search** button at the bottom of the pane.  
‎  
‎**Note:** This should initiate the message trace, which should display the **Confidential message tracing test** message that you just sent from the Mod Administrator (**admin@M365xZZZZZZ.onmicrosoft.com**) to Alex Wilber (**alexw@M365xZZZZZZ.onmicrosoft.com**). Verify the **Status** as **Delivered**.

14. Select this message (do NOT select the check box to the left of the message; rather, select the message itself). This will open a **Message trace details** pane for this message.

15. In the **Message trace details** pane, scroll down and select the down-arrow next to **Message events.** This will display the summarized view of events related to this message and the date and time in which the events occurred.

16. Scroll to the bottom of the pane and select **Close**.

17. Select **Close** in the **Message trace search results** window**.**

18. From the **Messages sent from my primary domain in the last day** pane (which may be renamed with the date and time stamp assigned to the search), select the down-arrow to the left of **Choose report type.**

19.  In the list of report types, select the **Extended report** option and then select **Next**.

20. In the **Prepare message trace report** pane that appears, select the **Prepare report** button at the bottom of the pane. This will send a .csv file to the MOD administrator’s email account (admin@M365xZZZZZZ.onmicrosoft.com).  
‎  
‎**Note:** This may take a few minutes to compile the report depending on how large it is. Note the following message that is displayed on this page: **When the report is ready to download, we'll send a notification message to:** **admin@M365xZZZZZZ.onmicrosoft.com**

21. Select **Close.**

22. On the **Message trace** page, select the **Refresh** button to refresh the list of message trace reports.   
‎  
‎**Note:** Select the **Refresh** button every couple of minutes till the status of the report is **Done**. 

23. You will receive a notification once the report is Done. You should notice this in the **notification bell** that appears at the top right of the screen (it will display a number that indicates the number of notifications you have).   
‎  
‎When you see a 1 in the notification bell, select the bell to display the **Notifications** pane. In the **Notifications** pane, select the email entry. 

24. In the email window that appears, in the middle of the email you should see a statement that says **You can access the report here** (where “**here**” is hyperlinked). Select this hyperlinked “**here**” to view the results. 

25. As the system attempts to open the report, it will display a notification bar that asks whether you want to open or save the .csv file associated with the report. Select **Save.**   
‎  
‎This file contains all corresponding information from the email, including but not limited to: SCL, Number of hops, source IP address, what connector used, delivery priority. Most of the information will be located in the custom data column.

  

## Task 5: Reviewing Active MRM Policies with PowerShell

In this task you will run a series of Windows PowerShell commands to review the active MRM policies in Adatum’s Exchange environment.

1. You should still be logged into LON-EX1 from the prior task; if necessary, log in as the **Administrator** with a password of **Pa55w.rd**. 

2. The **Windows PowerShell** console should still be open from the earlier task in which you verified the status of your custom DLP policy; if so, then select the **PowerShell** icon on the taskbar to maximize the window.   
‎  
‎If you closed the PowerShell window in the earlier task, then repeat the steps you performed previously to open an elevated instance of PowerShell.

3. In **Windows PowerShell**, run the following command at the command prompt to install the new Exchange Online module:  
‎  
‎**Note:** Instead of typing each command, it will be quicker to copy each command and paste it into PowerShell at the command prompt. Copy and pasting the commands will also avoid any errors that can occur when typing in the commands, especially with the longer commands. In some VM environments, you simply need to right-click at the command prompt to paste in the copied command.  
‎  
‎Install-Module -Name ExchangeOnlineManagement  
‎  
‎**Note:** You will be prompted whether you want PowerShell to install and import the NuGet provider. Enter **Y** for **Yes**.  
‎  
‎You will then be prompted whether you want PowerShell to install the modules from PSGallery, which is an untrusted repository. Enter **A** for **Yes to All**.  
‎

4. At the command prompt, run the following command to connect you to the Exchange admin center for Exchange Online:  
‎  
‎Connect-ExchangeOnline -Credential $UserCredential -ShowProgress $true  
‎  
‎**Note:** This will open a **Sign in** dialog box to enter your credentials. Enter **admin@M365xZZZZZZ.onmicrosoft.com** (where ZZZZZZ is your unique tenant ID provided by your lab hosting provider) and select **Next**, and then in the **Enter password** dialog box, enter the tenant email password provided by your lab hosting provider, and then select **Sign in**.  
‎

5. At the command prompt, run the following command to validate that you are connected to Exchange Online by displaying 5 mailboxes:   
‎  
‎Get-EXOMailbox -ResultSize 5  
‎  
‎**Note:** Review the **User Principal name** assigned to each mailbox to confirm you are connected to the right tenant.

6. At the command prompt, run the following command to display all the Retention Policies that are active in your environment:  
‎  
‎Get-RetentionPolicy | out-Gridview  
‎  
‎**Note:** This command opens a separate window that displays the active retention policies. After reviewing the policies, select the **X** in the upper right corner of the window to close it and return to the PowerShell command prompt.

7. At the command prompt, run the following command to display all the retention policy tags that are associated to the Default MRM Policy:  
‎  
‎(Get-RetentionPolicy "Default MRM Policy").RetentionPolicyTagLinks | Format-Table name   
‎
8. Close the Windows PowerShell window.

 

 

## Task 6: Creating a Retention Label


In your role as Holly Dickson, Adatum’s Messaging Administrator, you will continue with your task of reviewing Microsoft 365’s compliance tools by creating a Retention label through the Security and Compliance portal.

1. You should still be logged into LON-EX1 from the prior task; if necessary, log in as the **Administrator** with a password of **Pa55w.rd**. 

2. In your **Edge browser** browser, you should still have the **Microsoft 365 Complaince admin center** tab open from the previous task in which you performed a message trace; if so, proceed to the next step. If you closed your browser or the Security & Compliance center tab, then in your **Microsoft 365 admin center** tab, select **Compliance** under the **Admin centers** group (or you can enter the following URL: **https:/compliance.microsoft.com**

3. In the **Microsoft 365 Complaince admin center**, in the left-hand navigation pane, select **Catalog**.

4. On the **Catalog** page, select view under **Information governance**. then select the **open solution** button.
‎  
5. In the **Information governance** solution, select **Create a label**.

6. On the **Name your label** page, enter **30-day delete** in the **Name** field, and enter **This label will delete email after 30 days** in the **Description for admins** field. Copy this description and paste it into the **Description for users** field. Select **Next**. 

7. On the **File plan descriptors** page, select **Next**.

8. On the **Label settings** page, select the toggle switch to turn retention **On**. This will enable several additional settings. Configure these settings as follows: 

	- Retain the content: **For this long – 30 Days**

	- What do you want to do after this time? **Delete the content automatically**

	- Retain or delete the content based on: **when it was created**

9. Select **Next**.

10. On the **Review your settings** page, review your settings and if any require correction, select the corresponding **Edit** option to fix the setting. When all settings are correct, select **Create this Label**.

11. It will take a minute or two to create the retention label, at which point the **Retention labels** window will appear and your new **30-day delete** label will appear in the list of labels.

12. Leave your browser and all tabs open and proceed to the next task.

 

## Task 7: Creating a Retention Label Policy
 
‎In the prior task, you created a Retention Label. In this task, you will create a Retention Label Policy and assign it to the Retention Label that you previously created.

1. You should still be logged into LON-EX1 from the prior task; if necessary, log in as the **Administrator** with a password of **Pa55w.rd**. 

2. In your **Edge browser** browser, you should still have the **Microsoft 365 Complaince admin center** tab open from the previous task in which you performed a message trace; if so, proceed to the next step. If you closed your browser or the Security & Compliance center tab, then in your **Microsoft 365 admin center** tab, select **Compliance** under the **Admin centers** group (or you can enter the following URL: **https:/compliance.microsoft.com**

3. In the **Microsoft 365 Complaince admin center**, in the left-hand navigation pane, select **Catalog**.

4. On the **Catalog** page, select view under **Information governance**. then select the **open solution** button.

5. On the **Information governance** window, select the **Label policies** tab, select **Publish labels** that appears on the menu bar. This will initiate a new wizard that walks you through the steps of publishing a label.

6. On the **Choose labels to publish** page, select the **Choose labels to publish** link**.**

7. On the **Choose labels** page, select **+Add**.

8. The **Choose labels** page displays the existing retention labels. Select the **30-day delete** label that you created in the prior task, and then select **Add**.

9. Select **Done**.

10. On the **Choose labels to publish** page, select **Next.**

11. On the **Choose locations** page, select the **All locations. Includes content in Exchange email, Office 365 groups, OneDrive and SharePoint documents** option, and then select **Next**.

12. On the **Name your policy** page, enter **30-Day delete policy** in the **Name** field**.** Leave the **Description** field blank, and then select **Next**.

13. On the **Review you settings** page, review your settings and if any require correction, select the corresponding **Edit** option to fix the setting. When all settings are correct, select **Publish labels**.  
‎  
‎**Important:** Note the warning message that indicates it can take up to 24 to propagate a new retention label policy throughout the system once the policy is published.

14. Once the retention label policy has been created, it will be displayed in the list of label policies on the **Retention labels** window.

15. Leave your browser and all tabs open and proceed to the next task.



## Task 8: Creating an eDiscovery Case

In your role as Holly Dickson, Adatum’s Messaging Administrator, you want to continue in your pilot project that examines Microsoft 365’s compliance functionality. In this task, you will create an eDiscovery case that searches for confidential information being disseminated through email. 

Back in Task 1, Holly assigned the Compliance data administrator role to Nestor Wilke. While a Global Admin such as Holly could create an eDiscovery case and perform a corresponding search, she would not be able to view the results unless she was assigned the Compliance data administrator role. Since an admin cannot assign admin roles to themselves, Holly assigned the Compliance data admin role to Nestor Wilke, who is also a Global Admin. In this task, you will log in as Nestor, create an eDiscovery case, perform the search, and view the search results.

**Note:** It normally takes about 60 minutes for a new role assignment to fully propagate through the system. By the time you get to the point of viewing the search results at the end of this task, if the role assignment you performed in Task 1 has not fully propagated, you will be unable to view the search results. If this occurs, determine how much longer you must wait until you reach an hour since you completed Task 1 and then perform the search again. 

1. You should still be logged into LON-EX1 from the prior task; if necessary, log in as the **Administrator** with a password of **Pa55w.rd**. 

2. In your **Edge browser** browser, select the **Microsoft Office Home** tab, then select the MOD Administrator user icon in the upper right corner of the screen (the circle with **MA** in it) and select **Sign out** in the menu that appears. 

3. Close all the tabs in your browser session except for the **Sign out** tab. 

4. In the **Sign out** tab, enter the following URL in the address bar to go directly to the Office 365 Security & Compliance center: **https://protection.office.com** 

5. In the **Pick an account** window, select **Use another account**.

6. In the **Sign in** window, enter **NestorW@M365xZZZZZZ.onmicrosoft.com** (where ZZZZZZ is the tenant ID provided by your lab hosting provider) and then select **Sign in**.

7. In the **Enter password** window, enter the tenant email password provided by your lab hosting provider and then select **Sign in**.

8. On the **Office 365 Security &amp; Compliance** center, in the left-hand navigation pane, select **eDiscovery**, and then in the expanded group, select **eDiscovery.**

9. In the **eDiscovery pane,** select the **+Create a case** button.

10. In the **New case** pane that appears, enter **AlexWilber-case01** in the **Case name** field. In the **Case description** field enter the following: **This case queries emails to Alex Wilber that have been disseminated with confidential information.**

11. Select **Save.**

12. On the **eDiscovery** window, in the list of cases, select the **Open** button that appears next to **AlexWilber-case01.**

13. A new tab will open in your browser that displays this case. On the menu bar at the top of the page, select the **Holds** tab.

14. In the **Holds** tab for this case, select the **+Create** button. This will initiate a **Create a new hold** wizard that walks you through the steps to create a new hold. 

15. In the **Create a new hold** window, in the **Name your hold** page, enter **AlexW** in the **Name** field, leave the **Description** blank, and then select **Next**. 

16. In the **Choose locations** page, to the right of the **Exchange email** location, select **Choose users, groups, or teams.**

17. In the **Edit locations** page, under **Exchange email**, select the **Choose users, groups, or teams** button. 

18. In the **Search** field that appears, enter **Alex** and select the **Search** icon to the right. Scroll to the bottom of the **Edit locations** pane to view the search results (all users whose name starts with Alex).

19. Select the check box next to **Alex Wilber** and then select **Choose** at the bottom of the window.

20. On the **Edit locations** page, select **Done**.

21. On the **Choose locations** page, select **Next**.

22. On the **Query conditions** page, in the **Enter keywords** field, enter the following: **Sensitive,** **Confidential, Secret**

23. Select **+Add conditions**.

24. On the **Add conditions** pane that appears, scroll to the bottom of the pane and select the **Subject** check box (not the Subject/Title) and then select **Add.**

25.  On the **Query conditions** page, in the **Subject** section, select the drop-down arrow in the first operator field and select **Contains any of**. In the **Type subject** field, enter the following: **Sensitive, Confidential, Secret**

26. Select **Next**.

27. On the **Review your settings** page, review the settings and if any need to be adjusted, select **Edit** next to the setting and make the correction. Once all settings are correct, select **Create this hold**.

28. In the **AlexW** pane, select **Close**.  
‎  
‎**Note: Y**ou have just placed a hold on Alex Wilber’s account that will retain any emails that contain **Sensitive, Confidential, Secret** anywhere in the email as well as in the Subject line.

29. In the **AlexWilber-case01 &gt; Core ED &gt; Hold** page, select the **Searches** tab at the top of the page.

30. In the **Searches** tab, select the **+Guided Search** button. This will initiate a **New search** wizard that walks you through the steps to create a new search. 

31. In the **New search** window, in the **Name your search** page, enter **Confidential search** in the **Name** field, leave the **Description** field blank, and then select **Next**. 

32. In the **Locations** page, select the **Specific locations** option and then select the **Select all** toggle switch that appears to the right of **Exchange email** to turn it **On.** Select **Next**.

33. In the **Condition card** page, in the **Enter keywords** field, enter the following: **Sensitive,** **Confidential, Secret**

34. Select **+Add conditions.**

35. On the **Add conditions** pane that appears, scroll to the bottom of the pane and select the **Subject** check box (not the Subject/Title) and then select **Add.**

36. On the **Condition card** page, in the **Subject** section, select the drop-down arrow in the first operator field and select **Contains any of**. In the **Type subject** field, enter the following: **Sensitive, Confidential, Secret**

37. Select **Finish**. This initiates the search. 

38. Review the search results.   
‎  
‎**Note:** If the Compliance data admin role has not fully propagated through the system since you assigned it to Nestor Wilke’s account in Task 1, you will receive a warning message that indicates: **To preview search results, please ask your Compliance admin to grant you Preview permission.** 



# End of Lab 4

 

 
