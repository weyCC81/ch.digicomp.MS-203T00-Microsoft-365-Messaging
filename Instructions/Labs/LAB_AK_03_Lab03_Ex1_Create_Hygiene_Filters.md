# Module 3 – Lab 3 - Exercise 1 - Create Hygiene Filters

In this lab, you will continue in your role as Holly Dickson, Adatum’s Messaging
Administrator. Adatum has experienced a recent rash of malware infections. The
company's CTO has asked Holly to investigate the various options that are
available in Exchange Online to fortify Adatum’s messaging environment. Holly
will begin by creating a series of hygiene filters that are designed to protect
Adatum’s messaging environment. You will create a malware filter, a connection
filter, and a spam filter.

**Note**: In this lab exercise, you will use the **Office 365 Security and
Compliance center** to create hygiene filters. Protection services no longer
reside in the EAC for Exchange Online, and instead have been moved to the
Security and Compliance center.

## Task 1 - Create a Malware Filter

In this task, you will create a malware filter that checks for attachments that
have a specific file type that indicate a possible malware attachment. If an
attachment is found matching one of those file types and the recipient’s domain
matches Adatum’s Microsoft 365 domain, then a notification message will be
applied to the email.

1.  You should still be logged into LON-CL1 as the **Administrator** with a
    password of **Pa55w.rd**; however, if the log-in page appears, then log in
    now.

2.  In your **Edge** browser, you should still have a tab open for the
    **Microsoft 365 admin center**. If so, then select this tab and proceed to
    the next step; otherwise, navigate to the **Office 365 home** page, log in
    as your tenant admin account, navigate to the **Microsoft 365 admin
    center**, and then in the left-hand navigation pane, select **Show all**.

3.  In the **Microsoft 365 admin center**, in the left-hand navigation pane
    under **Admin centers**, select **Security**.

4.  In the **Office 365 Security & Compliance center**, select **Threat Management** in the left-hand
    navigation pane, and then in the expanded group select **Policy**.
    
6.  In the **Office 365 Security & Compliance center**, select **Threat Management** in the left-hand
    navigation pane, and then in the expanded group select **Permissions**.
    
7.  In the **Home \> permissions** page in the **search** field, type **Org** then select the search glass.

8.  On the **Home \> permissions** page list, select the **Organization Management** role.

9.  On the **Organization Management**page under the **members**section, select the **Edit** icon.

10. On the **editing choose members** page. Select **choose members**.

11. On the **choose members** page, Select the **add** icon.

12. On the **choose members** list. Select the **Mod Administrator** account.Then select the **add** icon.

13. on the **choose members** page. Select the**done** icon.

14. on the **editing choose members** page, select the **save** icon.

     **Note**: the organization management role may take a minute or two to update the microsoft tenant. If the policy doesn't update within a few minutes proceed to the connection filter task. 
     
16.  In the **Home \> Policy** page, select the **Anti-Malware** tile under the
    **Policies** section.

17.  In the **Home \> Policy \> Anti-malware** page, on the menu bar at the top
    of the window, select **+Create** to add a new malware filter. This
    initiates the **Create an anti-malware policy** wizard.

18.  In the **Name your policy** page, enter **Malware Policy** in the **Name**
    field.
    
19.  In the **Description** field, enter **This policy has been created to
    protect the messaging environment** and then select **Next**.   

19.  In the **users and domains**section under domains, enter **onmicrosoft.com** and then select **Next**.

20.  On the **protection settins** page, select the checkboxes for **enable the common attachements filter** and **enable zero-hour auto purge for malware (recommended)**.

21. On the **Notifications** section, since this filter will not generate any
    notifications, do not select any of the notification options, and instead
    select **Next**.

22. on the **reivew** section, confirm that all the information is correct, then select the submit icon.

23. congratulations, the New ant-malware policy has been created. Select the done icon.

    **Note**: A **Security & Compliance** window will appear with a message that indicates your organization settings need to be updated. Select **Yes** to continue.
    
24.  It may take a minute or so for your organization settings to be updated.
    Once the update is complete and you are back on the **Home \> Policy \>
    Anti-malware** page, you can proceed to the next task. Do not close any of
    the browser tabs.

## Task 2 - Create a Connection Filter

In this task, you will modify the default connection filter to include an
allowed IP address and a blocked IP address. Any messages originating from the
allowed IP address will always be accepted, and any messages originating from
the blocked IP address will always be blocked.

1.  You should still be logged into LON-CL1 as the **Administrator** with a
    password of **Pa55w.rd**; however, if the log-in page appears, then log in
    now.

2.  In your **Edge** browser, you should still be in the **Office 365 Security &
    Compliance center** (SCC). If so, then proceed to the next step; otherwise,
    perform the steps from the prior task to navigate to the SCC now.

3.  In the **Office 365 Security & Compliance admin center**, select **Threat Management** in the left-hand
    navigation pane, and then in the expanded group select **Policy**.

4.  In the **Home \> Policy** page, select the **Anti-spam** tile under the
    **Policies** section.

5.  In the **Anti-spam settings** window, in the list of policies, select the
    drop-down arrow to the left of **Connect filter policy (always ON)** and
    then select the **Edit policy** button that appears.

6.  On the **Connection filter policy** pane, you can identify the IP Addresses
    that can send messages to your environment and the IP addresses will be
    blocked from sending messages.

    **Note:** At this time, you will NOT be adding IP addresses to the allow or
    block lists. You can do this if you have a known IP address you would like
    to test against. However, it typically takes up to 1 hour to propagate the
    change within the system. For this lab, simply review the fact that you can
    create allowed and blocked lists of IP addresses in this **Connection filter
    policy** pane.

    On the **Connection filter policy** pane, select the **Turn on safe list**
    check box at the bottom of the page.

    **Important:** Selecting the **Turn on safe list** check box is a best
    practice that enables for your Microsoft 365 tenant the most common
    third-party sources of trusted senders to which Microsoft subscribes.
    Selecting this check box skips spam filtering on messages sent from these
    senders, ensuring that they are never mistakenly marked as spam.

7.  Select **Save**.

8.  Leave the Office 365 Security & Compliance center open in your browser and
    proceed to the next task.

## Task 3 - Create a Spam Filter

For Microsoft 365 customers whose mailboxes are hosted in Microsoft Exchange
Online, their email messages are automatically protected against spam and
malware. Microsoft 365 has built-in malware and spam filtering capabilities that
help protect inbound and outbound messages from malicious software and help
protect users from receiving spam messages.

As Adatum’s Messaging Administrator, Holly doesn't need to set up or maintain
the filtering technologies, which are enabled by default. However, she can make
company-specific filtering customizations in the Exchange admin center. She has
decided to test this out by configuring a spam policy to grant or deny an email
by focusing on the language of the email and the location of the email's origin.

1.  You should still be logged into LON-CL1 as the **Administrator** with a
    password of **Pa55w.rd**; however, if the log-in page appears, then log in
    now.

2.  In your **Edge** browser, you should still be in the **Office 365 Security &
    Compliance center** (SCC). If so, then proceed to the next step; otherwise,
    perform the steps from the prior task to navigate to the SCC now.

3.  In the **Office 365 Security & Compliance center**, you should still be on
    the **Anti-spam settings** page after completing the prior task. If so, then
    proceed to the next step; otherwise, in the left-hand navigation pane,
    select **Threat Management**, select **Policy,** and then select the
    **Anti-spam** tile under the **Policies** section.

4.  In the **Anti-spam settings** window, in the list of policies, select the
    drop-down arrow to the left of **Default spam filter policy (always ON)**
    and then select the **Edit policy** button that appears.

5.  In the **Default spam filter policy (always ON)** pane, you will be
    presented a variety of options on how you would like spam to be handled and
    what rating will be triggered depending on the severity of the spam. The
    following steps will guide you through these settings so that you can update
    them per Adatum's requirements.

6.  Select the **Spam and bulk actions** drop-down arrow and update the
    following settings:

    -   Spam: **Move message to Junk Email folder**

    -   High confidence spam: **Prepend subject line with text**

    -   Phishing email: **Move message to Junk Email folder**

    -   Bulk email: **No Action**

    -   Select the threshold: **5**

    -   Quarantine - Retain spam for (days): **10**

    -   Prepend subject line with this text: enter **QUARANTINED: This message
        contains potential spam!**

7.  Select the **International spam** drop-down arrow and update the following
    settings:

    **Note:** This section allows you to automatically tag as spam those
    messages sent from countries that are blocked, as well as messages written
    in a specific language.

    -   Filter email messages written in the following languages:

        -   Select **Edit.**

            -   On the **International spam settings** pane, select the check
                box next to **Filter email messages written in the following
                languages.**

            -   Type the letter **"a"** in the **Language** field to display the
                list of languages starting with the letter “a” or that include
                an “a”.

            -   Select any language you want to restrict.

            -   If you want to restrict an additional language, repeat the prior
                two steps.

            -   Once you have selected all the languages that you want to
                restrict, select **Save.**

            -   Note how the value of the **Status** field has changed from
                **OFF** to **ON**.

    -   Filter email messages sent from the following counties or regions:

        -   Select **Edit.**

            -   On the **International spam settings** pane, select the check
                box next to **Filter email messages sent from the following
                countries or regions.**

            -   Type the letters **"ab"** in the **Language** field to display
                the list of languages starting with the letters “ab” or that
                include an “ab”. You can enter any letter or letters that you
                wish.

            -   Select any country/region you want to restrict.

            -   If you want to restrict an additional country/region, repeat the
                prior two steps.

            -   Once you have selected all the countries/regions that you want
                to restrict, select **Save.**

            -   Note how the value of the **Status** field has changed from
                **OFF** to **ON**.

8.  Select the **Spam properties** drop-down arrow and update the following
    settings:

    **Note:** This section allows you to automatically tag messages as spam that
    have embedded URL’s with specific attributes or that have embedded HTML in
    the message.

    -   Select the **Increase Spam Score** drop-down arrow and turn **On** the
        following options:

        -   **URL redirect to other port**

        -   **URL to .biz or .info websites**

    -   Select the **Mark as Spam** drop-down arrow and turn **On** the following
    options:

        -   **Empty messages**

        -   **Conditional Sender ID filtering: hard fail**

9.  Select **Save**.

10.  In the list of spam filters, select the drop-down arrow to the left of the
    **Default spam filter policy (always ON)** filter that you just edited. In
    the middle column of settings for this filter, note how **End-user spam
    notifications** are disabled (it status is **Off**). <br/><br/>
    Below this option, select **Configure end-user spam notifications**.

11.  In the **Default** window that appears, select the **Enable end-user spam
    notifications** check box, and then change the **Send end-user spam
    notifications every (days)** value to **5**.

12.  Select **Save**.

13.  In your Edge browser, leave the **Office 365 Home** tab open as well as the **Microsoft 365 admin center** tab. Close all other tabs and proceed to the next lab.

# End of Lab 3
