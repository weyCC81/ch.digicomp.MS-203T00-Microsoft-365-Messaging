# Module 3 – Lab 3 - Exercise 1 - Create Hygiene Filters

In this lab, you will continue in your role as Holly Dickson, Adatum’s Messaging Administrator. Adatum has experienced a recent rash of malware infections. The company's CTO has asked Holly to investigate the various options that are available in Exchange Online to fortify Adatum’s messaging environment.

You will access the Exchange admin center for Exchange Online from your client computer and create a series of hygiene filters that are designed to protect Adatum’s messaging environment. You will create a malware filter, a connection filter, and a spam filter.

**Note**: During the next series of task you will be moving to the **Anti-malware page** in the **Office 365 Security and Compliance center**. Protection services will no longer reside in the Exchange admin center.


## Task 1 - Create a Malware Filter  

In this task, you will create a malware filter that checks for attachments that have a specific file type that indicate a possible malware attachment. If an attachment is found matching one of those file types and the recipient’s domain matches Adatum’s Microsoft 365 domain, then default notification text will be applied to the message.

1. You should still be logged into LON-CL1 as the **Administrator** with a password of **Pa55w.rd**; however, if the log-in page appears, then log in now. 

2. If the **Office 365 Security and Complaince admin center** is still open from the prior task, then proceed to the next step; otherwise, if necessary, navigate to the **Office 365 home** page ([**https://portal.office.com**](https://portal.office.com/)), log in as **admin@M365xZZZZZZ.onmicrosoft.com,** navigate to the **Microsoft 365 admin center**, and then navigate to the **Security**.

3. In the **Office 365 Security and Complaince admin center**, in the left-hand navigation pane, select **Threat Management.** Then select **Policy**.

4. In the policy page, select **Anti-Malware** under the **Policies** section.

5. On the menu bar, select the **+ Create** icon to add a new malware filter.

6. In the **Name your policy** window, enter **Malware Policy** in the **Name** field.

7. In the **Description** field, enter **This policy has been created to protect the messaging environment.** Then select **next**.

8. Under **Malware Detection Response**, select **Yes and use the default notification text**then select **next**.

9. Under **Common Attachment Types Filter**, select **On - Emails with attachments of filtered files types will trigger the Malware Detection Response (recommended).**

10. The filter will check for all the file types that appear in the **File Types** list. You do not need to add any additional file types, so proceed to the next step by selecting **next**.

11. In the **Malware Zero-hour Autop Purge** section, confirm that the **on** option is selected and then select **next**.

12. This filter will not generate any notifications, so select **next** to proceed to the next section. Under **Applied To**, in the **Add a condition** field, select the drop-down arrow and select **The recipient domain is** under the **Applied if...** section.

13. If a pop-up window displaying domains appears, then skip to the next step; otherwise, to the right of the condition field that displays **The recipient domain is…,** select **A recipient’s domain is.** 

14. Select the **Choose** hyperlink. the domain pop-up window that appears, select the **+ add** option then select the Domain name M365xZZZZZZ.onmicrosoft.com** domain (where ZZZZZZ is your tenant suffix ID provided by your lab hosting provider), select the **add** button, and then select **done**.

15. Select **next.**

16. Once the update is finished review the Malware policy, select **create this policy**.

**Note**: A **security and complaince** window will appear stating your  organziation settings need to be update. Do you want to continue? Select **yes** and proceed


17. Leave the Security and complaince Admin Center open and proceed to the next task.


## Task 2 - Create a Connection Filter  

In this task, you will modify the default connection filter to include an allowed IP address and a blocked IP address. Any messages originating from the allowed IP address will always be accepted, and any messages originating from the blocked IP address will always be blocked. 

1. You should still be logged into LON-CL1 as the **Administrator** with a password of **Pa55w.rd**; however, if the log-in page appears, then log in now. 

2. f the **Office 365 Security and Complaince admin center** is still open from the prior task, then proceed to the next step; otherwise, if necessary, navigate to the **Office 365 home** page ([**https://portal.office.com**](https://portal.office.com/)), log in as **admin@M365xZZZZZZ.onmicrosoft.com,** navigate to the **Microsoft 365 admin center**, and then navigate to the **Security**.

3. In the **Office 365 Security and Complaince admin center**, in the left-hand navigation pane, select **Threat Management.** Then select **Policy**.

4. In the policy page, select **Anit-spam** under the **Policies** section.

5. In the **Anti-spam settings** window, select **Connect filter policy** then select the **edit policy** button.
‎  
‎**Note:** In this section you will be presented a variety of options on what IP Addresses will be allowed to send messages to your environment and what IP addresses will be blocked.

6. At this time, you will NOT be adding IP addresses to the allow or block lists. You can do this if you have a known IP address you would like to test against. However, it typically takes up to 1 hour to propagate the change within the system. For this lab, simply review the fact that you can create allowed and blocked lists of IP addresses.

7. Select the **turn on safe list** check box at the bottom of the page. This is a best practice that enables for your tenant the most common third-party sources of trusted senders that Microsoft subscribes to. Selecting this check box skips spam filtering on messages sent from these senders, ensuring that they are never mistakenly marked as spam.

8. Select **Save** and then select **OK** once the changes are successfully saved.

9. Leave the Office 365 Security and Complaince admin center open and proceed to the next task.


## Task 3 - Create a Spam Filter

For Office 365 customers whose mailboxes are hosted in Microsoft Exchange Online, their email messages are automatically protected against spam and malware. Office 365 has built-in malware and spam filtering capabilities that help protect inbound and outbound messages from malicious software and help protect you from spam.

As Adatum’s Messaging Administrator, Holly doesn't need to set up or maintain the filtering technologies, which are enabled by default. However, she can make company-specific filtering customizations in the Exchange admin center. She has decided to test this out by configuring a spam policy to grant or deny an email by focusing on the language of the email and the location of the email's origin.

1. You should still be logged into LON-CL1 as the **Administrator** with a password of **Pa55w.rd**; however, if the log-in page appears, then log in now. 

2. f the **Office 365 Security and Complaince admin center** is still open from the prior task, then proceed to the next step; otherwise, if necessary, navigate to the **Office 365 home** page ([**https://portal.office.com**](https://portal.office.com/)), log in as **admin@M365xZZZZZZ.onmicrosoft.com,** navigate to the **Microsoft 365 admin center**, and then navigate to the **Security**.

3. In the **Office 365 Security and Complaince admin center**, in the left-hand navigation pane, select **Threat Management.** Then select **Policy**.

4. In the policy page, select **Anti-spam** under the **Policies** section.

5. In the **Default spam filter policy**, in the left-hand pane, select **edit policy**. 

	**Note:** In this section you will be presented a variety of options on how you would like spam to be handled and what rating will be triggered depending on the severity of the spam.

6. In the **spam and bulk actions** section, make the following selections:

	- Spam: **Move message to Junk Email folder**

	- High Confident Spam: **Prepend subject line with text**

	- Phishing email: **Move message to Junk Email folder**
	
	-Bulk email: **no Action**

7.  In the **select the threshold** section,change the threshold to **5**

	
8. In the **Quarantine** section, make the following selections:

	- Retain spam for (days): **10**

	- Prepend subject line with this text: enter **QUARANTINED: This message contains potential spam**

9. In the **international spam** Select the check box at the top of the page that says **Filter email messages written in the following languages**

	**Note:** This section allows you to automatically tag messages as spam whose origins comes from countries that are blacked listed, as well as messages written in a specific language.

10. Select the check box next to **Fileter email messages written in the following languages.**

11. Type the letter **"A"** and select any language you choose.

12. Then select **Save**.

13. Below the listed of languages that you selected, select the check box that says **Filter email messages sent from the following countries or regions**.

14. Select the **edit** button then select the check box to add the countries or regions.

15. Type the letter **"AB"** and select any country or regions. Thne select **save**.


16. Scroll down the navigation pane, then select **Spam properties**. 

	**Note:** This section allows you to automatically tag messages as spam that have embedded URL’s with specific attributes or that have embedded HTML in the message.

17. Under the **Increase Spam Score** section, turn **On** the following options:

	- **URL redirect to other port**

	- **URL to .biz or .info websites**

18. Under the **Mark as Spam** section, turn **On** the following options:

	- **Empty messages**

	- **Conditional Sender ID filtering: hard fail**

19. Select **Save** and then select **OK** once the changes are successfully saved.

20. In the list of spam filters, the **Default spam filter policy** filter that you just edited is selected and a summary of the filter is now displayed in the right-hand pane. Scroll down in the right-hand pane and note how **End-user spam notifications** are disabled. Below this option, select **Configure end-user spam notifications**.

21. In the **edit end-user spam notifications** window, select the **Enable end-user spam notifications** check box, and then change the **Send end-user spam notifications every (days)** value to **5**.

22. Select **Save** and then select **OK** once the changes are successfully saved.

23. Leave the Office 365 Security and Complaince admin center open and proceed to the next exercise.


# End of Lab 3

