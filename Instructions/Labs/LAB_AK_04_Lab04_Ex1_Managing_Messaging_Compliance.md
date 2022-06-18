# Module 4 - Lab 4 - Exercise 1 – Managing Messaging Compliance

In this lab you will continue in your role as Holly Dickson, Adatum's Messaging
Administrator. Holly has been tasked with maintaining message traffic and
reducing the number of undeliverable emails in Adatum’s messaging environment.

In this task, you will conduct a message trace and create an eDiscovery (standard) case to familiarize yourself with the tools provided by Microsoft 365
that assist you with managing message compliance.

## Task 1: Prepare for eDiscovery

One of the significant Microsoft Purview tools available in Microsoft 365
is the ability to perform eDiscovery searches on information gathered in the
system. In the final task in this exercise, you will create an eDiscovery case
that searches email messages for sensitive data. Once you create the case and
perform a search associated with the case, you will attempt to view the search
results.
‎  
‎eDiscovery cases can oftentimes hold sensitive information that may not be suitable for every administrator to review. To support this scenario, some Microsoft 365 administrator roles provide permission for users to create cases, but they do not include permission to view the search results. For example, a Compliance administrator can create an eDiscovery case and run an eDiscovery search, but unless the user is also assigned the new eDiscovery Manager role in the Microsoft Purview compliance portal, he or she will be unable to view the search results. You will create this scenario in this lab excerise to verify this eDiscovery permission design. 

In this task you will assign Nestor Wilke the Compliance administrator role. While this will enable Nestor to create an eDiscovery case for compliance purposes, it will not allow him to view the results of the corresponding search. To view the corresponding search results, Nestor would need to be assigned the eDiscovery Manager role. 

**Warning:** The reason you will assign Nestor the Compliance administrator role now in Task 1 rather
than later in Task 6 when you log in as Nestor is that it can take roughly 60 minutes for role assignments to fully propagate through
the system. So hopefully by the time you get to Task 6, the role will be fully
propagated, and you will be able to create an eDiscovery case.

1.  You should still be logged into LON-CL1 as the **Administrator** with a
    password of **Pa55w.rd**; however, if the log-in page appears, then log in
    now.

2.  In your **Edge** browser, you should still have a tab open for the
    **Microsoft 365 admin center**. If so, then select this tab and proceed to
    the next step; otherwise, repeat the steps that you performed in the earlier
    lab to navigate to the **Office 365 home** page and the **Microsoft 365
    admin center.**

3.  In the **Microsoft 365 admin center**, select **Users** in the left-hand navigation pane,
     and then in the expanded group select **Active users**.

    **Note:** In the **Active users** list, you will see the list of existing
    user accounts that were created for you by your lab hosting provider. In
    this course, you are taking on the role of Holly Dickson, who uses the
    generic **MOD Administrator** account to sign into Microsoft 365 (using the
    tenant admin account of admin@xxxxxZZZZZZ.onmicrosoft.com). The MOD
    Administrator account has been assigned the Microsoft 365 Global admin role.

4.  In the **Active users** window, select **Nestor Wilke’s** account.

    **Note:** Select Nestor’s name; do not select the circle to the left of his
    name. The circle with the check mark is typically used for selecting
    multiple users when you want to perform one of the user-related actions on
    the menu bar that appears above the list of users, such as **Manage product
    licenses** and **Manage roles**. Selecting a user’s name opens a detail pane
    specifically for that user.

5.  In the **Nestor Wilke** pane that appears, the **Account** tab is displayed
    by default. Scroll down and under the **Roles** section, select **Manage
    roles**.

6.  On the **Manage roles** pane, note that Nestor is already assigned the
    Global admin role. The roles that appear under the **Admin center access**
    option are the most commonly assigned roles.

    Since the **Compliance admin** role that you want to assign to Nestor
    does not appear in this list of the most commonly assigned roles, scroll
    down and select **Show all by category**.

7.  In the list of roles that are sorted by category, scroll down to the
    **Security & Compliance** category, select **Compliance admin**, and
    then select **Save changes**.

8.  Select the **X** in the upper right corner of the **Manage roles** pane to
    close it.

9.  Leave your browser open and proceed to the next task.   

## Task 2: Perform a Message Trace

In this task, Holly Dickson plans to test Microsoft 365’s message tracing
functionality. Message traces are used to track and monitor where the message
has traveled and what type of anti-spam and regulatory policies are enacted upon
the message.

While you can start a trace at any time, it can be more efficient to run a trace
based on an existing query so that you don’t have to define the query parameters
each time you run it. As part of her pilot project, Holly wants to begin by
selecting a default query, which she will then customize.

Holly wants to send an email to Alex Wilber and then create a custom query that
checks for emails sent in the past day to Alex from within the Adatum domain.
After creating this custom query, you will run the query which will write the
search results to a Message trace report and download the message trace results
to a CSV file that will be sent in an email to the MOD Administrator.

**Note:** Message trace functionality was originally in the Office 365 Security
and Compliance Center (SCC) and the classic Exchange (Online)
admin center (EAC). It has since been moved to the New Exchange Online
admin center, and it's in the process of being retired from the SCC and the classic
EAC. For the purpose of this labs, you will use the message trace functionality
in the New EAC.

1.  You should still be logged into LON-CL1 from the prior task; if necessary,
    log in as the **Administrator** with a password of **Pa55w.rd**.

2.  In Edge browser, if you still have tabs open for the **Microsoft Office
    Home** page and the **Microsoft 365 admin center**, then proceed to the next
    step; otherwise, navigate to **https://portal.office.com**, log in as
    **admin@xxxxxZZZZZZ.onmicrosoft.com** with the tenant email password, and
    then select **Admin**.

3.  Select the **Microsoft Office Home** tab and then select **Outlook** to open
    **Outlook on the web** for the MOD Administrator’s account.

4.  You will begin by sending an email to Alex Wilber. In the upper left corner
    of the screen, select **New message**.

5.  In the message pane that appears on the right-side of the screen, enter the
    following information:

    -   To: start typing **Alex** and a drop-down menu displays with users whose
        name begins with Alex. Select **Alex Wilber**.

    -   Add a subject: **Confidential message tracing test**

    -   Message area: **This message will be used to test the message trace tool
        located in the new Exchange admin center when you search for the words
        confidential, sensitive, and secret in emails.**  
          
        **Important:** In a later task, you will search for emails that include
        the words Confidential, Sensitive, and Secret. Therefore, enter (or copy
        and paste) in the message included above so that that you can test
        whether it is captured in the search.

6.  Select **Send**.

7.  You will now create a custom message trace query and report in the New
    Exchange admin center. In your **Edge** browser, select the **Microsoft 365
    admin center** tab.

8.  In the **Microsoft 365 admin center**, in the left-hand navigation pane,
    select **Show all** (if necessary) and under **Admin centers,** select
    **Exchange**.

9.  The Message Trace functionality has been moved to the **New Exchange admin
    center**. Therefore, in the (classic) **Exchange admin center**, in the
    left-hand navigation pane, select **New Exchange admin center.**

10. In the (New) **Exchange admin center**, in the left-hand navigation pane,
    select **Mail flow** and then select **Message trace**.

11. On the **Message trace** page, the **Default queries** tab at the top of the
    page is displayed by default. In the list of queries and reports in this
    tab, select **Messages sent from my primary domain in the last day.**

12. In the **New message trace** pane that appears, the default values for the
    **Messages sent from my primary domain in the last day** query are
    displayed. You can control which messages are selected based on who sent and
    received the messages and how many days ago the messages were sent.  
      
    Starting with this default query as a template, Holly will now customize its
    settings to create a custom query that checks for emails sent to Alex Wilber
    in the past day.  
      
    - You can customize the **Senders** field to search for messages that were
    sent from a specific domain. By default, the query will select messages sent
    from all Adatum user accounts in its Microsoft 365 tenant; that is, from all
    user accounts whose primary domain matches Adatum’s tenant of
    **@xxxxxZZZZZZ.onmicrosoft.com** (where xxxxxZZZZZZ is the unique tenant
    prefix provided by your lab hosting provider). Therefore, do NOT change this
    value.  
    ‎  
    ‎- You can customize the **Recipients** field to search for messages that
    were sent to specific users. By default, the query will select messages sent
    to all recipients. However, Holly wants to modify the query to only select
    messages sent to Alex Wilber. Therefore, enter **Alex** in the
    **Recipients** field, and then in the menu of users that appears, select
    **Alex Wilber.**

13. To avoid issues with the starting time for the search, on the **Time range**
    slider tool, drag the slider to the left so that it specifies sometime in
    the **Last 2 days** (actually, you can select any value greater than 1 day).

14. Under the **Report type** section, select the **Extended report** option and
    then select **Save**.

15. In the dialog box that appears, change the **Name** of the report to
    **Messages sent to Alex Wilber in the past day**, select **Save**, and then
    select **Done**.

16. In the **New message trace** pane, select the **X** in the upper right-hand
    corner to close the pane.

17. On the **Message trace** window, note how the **Custom queries** tab is now
    displayed, and it includes the **Messages sent to Alex Wilber in the past
    day** query that you just created. Holly has now created a custom query that
    she can run at any time in the future.  
      
    Since Holly wants to test this custom query, select the **Messages sent to
    Alex Wilber in the past day** query (select the **Name** and not the circle
    with the check mark to the left of the name).

21. In the **New message trace** window, note how the query values are prefilled
    for you. Select **Next**.

22. On the **Prepare message trace report** pane, select the **Prepare report**
    button at the bottom of the window.

23. On the **Your request has been submitted** pane, review the information on
    the page, including the following messages:  
      
    **You can check progress at any time from the “Downloadable reports” section
    on the Message Trace home page.**  
    and  
    **When the report is ready to download the email below will be notified:**
    <admin@xxxxxZZZZZZ.onmicrosoft.com>  
      
    Select **Close.**

24. Close the **New message trace** window.

25. On the **Message trace** page, the **Downloadable reports** tab will be
    displayed. This will display the **Message trace report** that you just ran.
    Note that its **Status** will initially be **Not started**.  
      
    Select the **Refresh** icon on the address bar every minute or so to check
    on the report’s status (the status should transition from **Not started** to
    **In progress** to **Complete**).  
      
    **Note:** Refreshing the page will cause it to display the **Default
    queries** tab; therefore, each time you refresh the page, you must select
    the **Downloadable reports** tab to check the report status.  
      
    **WARNING:** In the testing of this lab, the message trace report sometimes
    took up to an hour or more to complete. If the report does not finish after
    a few minutes, review the remaining steps in this task so that you can see
    what you would have done, and then perform the final step in this task
    before proceeding to the next task.

26. You will receive a notification once the report is complete. You should
    notice this in the **notification bell** that appears at the top right of
    the screen (it will display a number that indicates the number of
    notifications you have).  
    ‎  
    ‎When you see a 1 in the notification bell, select the bell to display the
    **Notifications** pane. In the **Notifications** pane, select the email
    entry.

27. The query that you created was designed to send an email to the MOD
    Administrator that included a link to the Message trace report. In the email
    window that appears, in the middle of the email you should see a statement
    that says **You can access the report here** (where “**here**” is
    hyperlinked). Select this hyperlinked “**here**” to view the results.

28. As the system attempts to open the report, it will display a notification
    bar that asks whether you want to open or save the .csv file associated with
    the report. Select **Save.**  
    ‎  
    ‎This file contains all corresponding information from the email, including
    but not limited to: SCL, Number of hops, source IP address, what connector
    used, delivery priority. Most of the information will be located in the
    custom data column.  
      
    Congratulation! You have just verified the message trace report was created,
    the MOD Administrator was notified in an email that the report was complete,
    and the CSV file with the report results was made available for downloaded
    by the MOD Administrator.

29. In your Edge browser, leave the **Office 365 Home** tab open, as well as the
    **Microsoft 365 admin center** tab. Close all other tabs and proceed to the
    next task.

## Task 3: Review Active MRM Policies with PowerShell

In this task you will run a series of Windows PowerShell commands to review the
active MRM policies in Adatum’s Exchange environment.

1.  You should still be logged into LON-CL1 from the prior task; if necessary,
    log in as the **Administrator** with a password of **Pa55w.rd**.

2.  Select the magnifying glass on the taskbar at the bottom of the screen and
    enter **Powershell** in the Search box. In the menu that appears,
    right-click on **Windows PowerShell** (do NOT select Windows PowerShell ISE)
    and select **Run as administrator**.  
      
    Maximize your Windows PowerShell window.

3.  In **Windows PowerShell**, run the following command at the command prompt
    to install the new Exchange Online module:  
    ‎  
    ‎**Note:** Instead of typing each command, it will be quicker to copy each
    command and paste it into PowerShell at the command prompt. Copy and pasting
    the commands will also avoid any errors that can occur when typing in the
    commands, especially with the longer commands. Your instructor will guide
    you on how to copy and paste text into your particular VM environment.  
    ‎  
    ‎`Install-Module -Name ExchangeOnlineManagement`

4.  You will be prompted whether you want PowerShell to install and import the
    NuGet provider. Enter **Y** for **Yes**.

5.  ‎You will then be prompted whether you want PowerShell to install the modules
    from PSGallery, which is an Untrusted Repository. Enter **A** for **Yes to
    All**.‎

6.  At the command prompt, run the following command to connect you to the
    Exchange admin center for Exchange Online:  
    ‎  
    ‎`Connect-ExchangeOnline -Credential $UserCredential -ShowProgress $true`  
    ‎  
    ‎**Note:** If you closed PowerShell after running it in the earlier task, you
    will receive a **Sign in** dialog box to enter your credentials. Enter
    **admin@xxxxxZZZZZZ.onmicrosoft.com** (where xxxxxZZZZZZ is the unique
    tenant prefix provided by your lab hosting provider) and your tenant admin
    password. If your PowerShell session was still open, then you should not
    receive this **Sign in** window.  

7.  At the command prompt, run the following command to validate that you are
    connected to Exchange Online by displaying 5 mailboxes:  
    ‎  
    ‎`Get-EXOMailbox -ResultSize 5`  
    ‎  
    ‎**Note:** Review the **User Principal name** assigned to each mailbox to
    confirm you are connected to the right tenant.

8.  At the command prompt, run the following command to display all the
    Retention Policies that are active in your environment:  
      
    ‎`Get-RetentionPolicy | out-Gridview`  
    ‎  
    ‎**Note:** This command opens a separate window that displays the active
    retention policies. After reviewing the policies, select the **X** in the
    upper right corner of the window to close it and return to the PowerShell
    command prompt.

9.  At the command prompt, run the following command to display all the
    retention policy tags that are associated to the Default MRM Policy:  
      
    `(Get-RetentionPolicy "Default MRM Policy").RetentionPolicyTagLinks |
    Format-Table name`  
    
10. Close the Windows PowerShell window.

## Task 4: Create a Retention Label

In your role as Holly Dickson, Adatum’s Messaging Administrator, you will
continue with your task of reviewing Microsoft 365’s compliance tools by
creating a Retention label through the Microsoft Purview compliance portal.

1.  You should still be logged into LON-CL1 from the prior task; if necessary,
    log in as the **Administrator** with a password of **Pa55w.rd**.

2.  In your **Edge browser**, select the **Microsoft 365 admin center** tab, and
    then in the left-hand navigation pane under **Admin centers**, select
    **Compliance.**

3.  In the **Microsoft Purview** compliance portal, in the left-hand navigation
    pane, select **Catalog**.

4.  On the **Solution catalog** page, in the **Information protection &
    governance** section, select the **View** button under **Data lifecycle management**.

5.  In the **Data lifecycle management** window, select **Open solution**.

6.  In the **Data lifecycle management** window, the **Labels** tab at the top of
    the page is displayed by default. In this tab, select +**Create a label**
    that appears on the menu bar. This initiates the **Create a label** wizard.

7.  On the **Name your label** page, enter **30-day delete** in the **Name**
    field, and enter **This label will delete email after 30 days** in the
    **Description for admins** field. Copy this description and paste it into
    the **Description for users** field. Select **Next**.

8.  On the **Define retention settings** page, configure these settings as follows:

    -   Retention period: **Custom – 0 years 1 months 0 Days**

    -   Start the retention period based on: **When items were created**

    -   At the end of the retention period: **Delete items automatically**

9.  Select **Next**.

10. On the **Review your settings** page, review your settings and if any
    require correction, select the corresponding **Edit** option to fix the
    setting. When all settings are correct, select **Create label**.

11. It will take a minute or two to create the retention label.

12. Once the retention label has been created, you have the option of publishing the label, we will do that in the next task. On the **Your retention label is created** screen select **Do nothing** and select **Done**.

## Task 5: Create a Retention Label Policy

‎In the prior task, you created a Retention Label. In this task, you will create
a Retention Label Policy and assign it to the Retention Label that you
previously created.

1.  You should still be logged into LON-CL1 from the prior task; if necessary,
    log in as the **Administrator** with a password of **Pa55w.rd**.

2.  In your **Edge browser**, you should still have the **Data lifecycle management** page open from the previous task. This page should be
    displaying the **Labels** tab, and in the list of labels, it should display
    the **30-day delete** label that you just created.  
      
    Once you create a label, your next step is to publish it. You can either
    publish multiple labels at one time by selecting the **Publish labels**
    option on the menu bar, or you can publish a specific label by selecting the
    label and then publishing just that label.  
      
    In this task, you will publish a specific label; therefore, in the list of
    labels, check the **30-day delete** label that you just created and then select Publish labels.

3.  This will initiate the **Publish labels**
    wizard that walks you through the steps of publishing a label.

4.  On the **Choose a label to publish** page, select **Next**. 
  
5.  On the **Choose the type of retention policy to create** page, select **Static**, and then select **Next**.

6.  On the **Choose locations** page, select the **All locations. Includes
    content in Exchange email, Office 365 groups, OneDrive and SharePoint
    documents** option and then select **Next**.

7.  On the **Name your policy** page, enter **30-day delete policy** in the
    **Name** field. Leave the **Description** field blank and select **Next**.

8.  On the **Finish** page, review your settings and if any require
    correction, select the corresponding **Edit** option to fix the setting.
    When all settings are correct, select **Submit**.  
    ‎  
    ‎**Important:** Note the warning message that indicates it can take up to 1
    day to propagate a new retention label policy throughout the system once the
    policy is published.

9.  Once the retention label policy has been created, select **Done** in the **Your retention label was published** page. The policy will be displayed in
    the list of label policies on the **Data lifecycle management** window.

10.  Leave your browser and all tabs open and proceed to the next task.

## Task 6: Create an eDiscovery Case

In your role as Holly Dickson, Adatum’s Messaging Administrator, you want to
continue in your pilot project that examines Microsoft 365’s compliance
functionality. In this task, you will create an eDiscovery (Standard) case that searches
for confidential information being disseminated through email.

Because eDiscovery cases can oftentimes hold sensitive information that may not be suitable for every administrator to review, many organizations want to control who has permission to view eDiscovery search results. To support this scenario, some Microsoft 365 administrator roles provide permission for users to create eDiscovery cases, but they do not include permission to view the search results. Only the new eDiscovery Manager role that is assigned in the Microsoft Purview compliance portal provides permission to view search results. 

Back in Task 1, you assigned the Compliance administrator role to Nestor
Wilke. While a Compliance admin can create an eDiscovery case and
perform a corresponding search, the admin is not able to view the search results unless
he or she is also assigned the eDiscovery Manager role. Because you assigned Nestor the Compliance admin role, he now has permission to create an eDiscovery case and initiate an eDiscovery search; however, since you did not assign him the eDiscovery Manager role, he does not have permission to view the search results. In this task, you will verify this permission design by logging in as
Nestor, creating an eDiscovery case, initiating the search, and then validating what happens with the search
results.

**Note:** It normally takes about 60 minutes for a new role assignment to fully
propagate through the system. This is why you assigned Nestor the Compliance admin role in Task 1. By the time you reach this task, enough time should have passed for Nestor's new permissions to have propagated through the system, enabling him to create an eDiscovery case. If the role assignment you performed in
Task 1 has not fully propagated, Nestor will be unable to create the eDiscovery case.
If this occurs, determine how much longer you must wait until you reach an hour
since you completed Task 1 and then perform this task again.

1.  You should still be logged into LON-CL1 from the prior task; if necessary,
    log in as the **Administrator** with a password of **Pa55w.rd**.

2.  You must begin this task by signing out of Microsoft 365 as the MOD
    Administrator and then signing back in as Nestor Wilke.  
      
    In your **Edge browser**, select the **Microsoft Office Home** tab, then
    select the MOD Administrator user icon in the upper right corner of the
    screen (the circle with **MA** in it) and select **Sign out** in the menu
    that appears.

3.  Close all the tabs in your browser session except for the tab in which you
    signed out.

4.  In your Edge browser, enter the following URL in the address bar to go
    directly to the Microsoft Purview compliance portal (Note: While you
    could have logged into the Office 365 Home page and then navigated to the
    Microsoft 365 admin center and then to the Microsoft Purview compliance portal
    just as you did in the prior lab, this approach will give you experience
    navigating directly to the Compliance portal):
    **https://compliance.microsoft.com**

5.  In the **Pick an account** window, select **Use another account**.

6.  In the **Sign in** window, enter **NestorW@xxxxxZZZZZZ.onmicrosoft.com**
    (where xxxxxZZZZZZ is the tenant prefix provided by your lab hosting
    provider) and then select **Next.**

7.  In the **Enter password** window, enter the tenant email password provided
    by your lab hosting provider and then select **Sign in**.

8.  In the **Microsoft Purview** compliance portal, select **eDiscovery** in the left-hand
    navigation pane, and then in the expanded group select **Standard**. 

9.  In the **eDiscovery (Standard)** pane, select the **+Create a case** button.

10. In the **New case** pane that appears, enter **AlexWilber-case01** in the
    **Case name** field.  
      
    In the **Case description** field enter (copy and paste) the following
    description: **This case searches for emails to Alex Wilber that include confidential information**.

11. Select **Save.**

12. In the **eDiscovery (Standard)** window, in the list of cases, select **AlexWilber-case01.**

13. A new tab will open in your browser that displays this case. On the menu bar
    at the top of the page, select the **Hold** tab.

14. In the **Hold** tab for this case, select the **+Create** button. This will
    initiate the **New Hold** wizard that walks you through the steps to
    create a new hold.  
      
    You will begin by placing a hold on Alex Wilber’s account that will retain
    any emails that contain **Sensitive, Confidential, Secret** anywhere in the
    email as well as in the Subject line.

15. In the **New Hold** window, in the **Name your hold** page, enter
    **AlexW** in the **Name** field, leave the **Description** blank, and then
    select **Next**.

16. In the **Choose locations** page, Make sure the toggle switch for **Exchange mailboxes** is turned **On** then to the right of the **Exchange Mailboxes** under the included column, select **Choose users, groups, or teams.**.

17. In the **Edit locations** page, under **Exchange mailboxes**, select the
    **Choose users, groups, or teams** button.

18. In the **Exchange mailboxes** page, enter **Alex** in the **Search** field that
    appears. This will initiate a search of all users whose name starts with
    Alex. Scroll to the bottom of the **Exchange mailboxes** pane to view the search
    results.

19. Select the check box next to **Alex Wilber** and then select the **Done**
    button at the bottom of the window.

21. On the **Choose locations** page, select **Next**.

22. On the **Query** page, in the **Enter keywords** field, enter the
    following: **Sensitive, Confidential, Secret**

23. Select **+Add conditions**.

24. On the **Add conditions** pane that appears, scroll to the bottom of the
    pane and select **Subject** (not the Subject/Title).

25. On the **Query** page, in the **Subject** section, select the
    drop-down arrow in the first operator field and select **Contains any of**.
    In the **Type subject** field, enter the following: **Sensitive, Confidential, Secret**

26. Select **Next**.

27. On the **Review your settings** page, review the settings and if any need to
    be adjusted, select **Edit** next to the setting and make the necessary correction.
    Once all settings are correct, select **Submit**.

28. Select **Done**.  
    ‎  
    ‎**Note:** You have just placed a hold on Alex Wilber’s account that will
    retain any emails that contain **Sensitive, Confidential, Secret** anywhere
    in the email as well as in the Subject line.

29. In the **eDiscovery (Standard) &gt; AlexWilber-case01** page, select the
    **Searches** tab at the top of the page.  
      
    You will now create a new search that checks for emails that contain
    **Sensitive, Confidential, Secret** in the email and in the Subject line.

30. In the **Searches** tab, select the **+ New Search** button. This will
    initiate a **New search** wizard that walks you through the steps to create
    a new search.

31. In the **New search** window, in the **Name and description** page, enter
    **Confidential search** in the **Name** field, leave the **Description**
    field blank, and then select **Next**.

32. In the **Locations** page, select the **Specific locations** option and then
    select the toggle switch that appears to the left of
    **Exchange mailboxes** to turn it **On.** Select **Next**.

33. In the **Define your search conditions** page, in the **Enter keywords** field, enter the
    following: **Sensitive, Confidential, Secret**

34. Select **+Add conditions.**

35. On the **Add conditions** pane that appears, scroll to the bottom of the
    pane and select **Subject** (not the Subject/Title).

36. On the **Define your search conditions** page, in the **Subject** section, select the
    drop-down arrow in the first operator field and select **Contains any of**.
    In the **Type subject** field, enter the following: **Sensitive,
    Confidential, Secret**

37. Select **Next**, **Submit** and **Done**. This initiates the search. It may take several minutes
    for the Search to complete.

38. Review the search results. Because Nestor was not assigned the eDiscovery Manager role, he is unable to view the search results. Therefore, the following message should appear at the top of the screen: **To preview search results, please ask your Compliance admin to grant you Preview permission.**

39. Leave the Edge browser open and proceed to the next lab.

# End of Lab 4
