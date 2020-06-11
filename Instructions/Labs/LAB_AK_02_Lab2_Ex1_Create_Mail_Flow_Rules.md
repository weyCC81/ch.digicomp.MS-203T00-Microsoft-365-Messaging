# Mod 2 – Lab 2 - Exercise 1 – Create Mail Flow Rules

In this lab, you will continue in your role as Holly Dickson, Adatum’s Enterprise Administrator. You will use your client computer to access the Exchange Admin Center from the Microsoft 365 admin center. You will then create a series of mail flow rules that are designed to protect Adatum’s messaging environment. 

You will first create a mail flow rule that quarantines messages that are sent from inside the organization that have the words “Secret”, “Classified”, or “Sensitive” in the body or subject of the message. You will create a second rule will also quarantine messages that have attachments that can’t be scanned or where the scanning can’t finish. Both rules will generate a reply message that lets the sender know they have a message that is undeliverable. Finally, you will create a mail flow rule that restricts the size of emails.

## Task 1: Create Mail Flow rule for sensitive material 

In this exercise you will return to the Exchange Admin Center, but this time you will access it from your client computer (LON-CL1) through the Microsoft 365 admin center. This will be the EAC for Exchange Online. You will then create a mail flow rule that checks for sensitive information in emails sent from inside the organization. 

1. Switch to the LON-CL1 VM and log on as the **A****dministrator** using the password **Pa55w.rd**. 

2. Select the **Microsoft Edge** icon either on the desktop or the taskbar. Maximize your browser window when it opens.

3. In your browser navigate to the **Office 365 home page** by entering the following URL: [**https://portal.office.com/**](https://portal.office.com/) 

4. In the **Sign in** dialog box, copy and paste in the **Tenant Email** account provided by your lab hosting provider (**admin@M365xZZZZZZ.onmicrosoft.com**, where ZZZZZZ is your unique tenant suffix ID provided by your lab hosting provider) and then select **Next**.

5. In the **Enter password** dialog box, copy and paste in the **Tenant Password** provided by your lab hosting provider and then select **Sign in**.

6. On the **Stay signed in?** dialog box, select the **Don’t show this again** check box and then select **Yes.**

7. If a **Get your work done with Office 365** dialog box appears, select the **X** to close it**.**

8. In the **Office 365 home** page, in the **Apps** section, select the **Admin** app.

9. In the **Microsoft 365 admin center**, in the left-hand navigation bar, select **Show All** to display all the navigation menu options.

10. On the left-hand navigation bar, in the **Admin centers** section, select **Exchange**. 

11. In the **Exchange admin center, i**n the left-hand navigation pane, select **mail flow.**

12. At the top of the page, the **rules** tab is displayed by default. Stay in this tab.

13. The first mail flow rule that you create will check for emails sent from inside the organization that have sensitive words in the email subject line or body. Select the **plus sign (+)** icon in the menu bar, and in the drop-down menu that appears, select **Modify messages.**

14. In the **new rule** window that appears, enter **Sensitive material** in the **Name** field.

15. Note that by default, you can only enter one condition (the **Apply this rule if…** field); there is no option to enter multiple conditions. Therefore, to enter multiple conditions, scroll down and select **More options**… This enables you to enter multiple conditions and actions.

16. Scroll up to the top of the window. Note how an **add condition** button now appears below the **Apply this rule if…** field. To add the first condition, select the drop-down arrow in the **Apply this rule if…** field. Hover over **The subject or body…** and in the menu that appears, select **subject or body includes any of these words.**

17. This opens a **specify words or phrases** window. In the text field, enter **secret** and select the **plus (+) sign**. 

18. In the text field, enter **classified** and select the plus sign, then repeat this step and enter **sensitive**. 

19. The three words should be displayed below the text field. Select **OK**.

20. In the **new rule** window, the three words should be displayed to the right of the **The subject or body includes…** condition. Select the **add condition** button to add another condition.

21. Select the drop-down arrow in the second condition field that appears (Note how this creates a Boolean **And** condition). Hover over **The sender…** and in the menu that appears, select **is external/internal**.

22. In the **select sender location** window, select the drop-down arrow, select **Inside the organization**, and then select **OK**.

23. Select the drop-down arrow in the **Do the following…** field. Hover over **Redirect the message to…** and in the menu that appears, select **hosted quarantine.**

24. Select the **add action** button to add another action.

25. Select the drop-down arrow in the second action field that appears. Hover over **Apply a disclaimer to the message…** and in the menu that appears, select **append a disclaimer.**

26. To the right of the second action field that displays **Append the disclaimer…,** select **Enter text.**

27. In the **specify disclaimer text** window, enter the following message in the field: **This message contains sensitive material that can harm the company or your team.**

28. Select **OK.**

29. To the right of the second action field that displays **Append the disclaimer…,** select **Select one.**

30. In the **specify fallback action** window, **Wrap** is displayed as the default fallback option. This is the option you want to select as the fallback option (Wrap means if the disclaimer cannot be inserted into the original email, it will attach the message to a new disclaimer email) so select **OK**.

31. Scroll down in the **new rule** window and under **Properties of this rule**, verify the **Audit this rule with severity level:** checkbox is selected. If it’s not checked, then select it now.

32. Select the severity level drop-down arrow and select **Medium**. 

33. In the **Choose a mode for this rule:** option, select **Enforce**.

34. Select **Save.**

35. This returns you to the **rules** tab in the Exchange admin center. The new **Sensitive material** rule should be displayed in the list of rules. This rule should be selected, and a **Sensitive material** pane should appear that displays the conditions and actions of this rule. Verify the conditions and actions are correct; if any corrections are needed, select the **pencil (Edit)** icon in the menu bar and make the necessary corrections. 

36. Leave the Exchange Admin Center open to the mail flow page and proceed to the next task.

 
## Task 2: Create first Mail Flow rule for attachments

In this exercise you will create two mail flow rules related to attachments. Adatum wants to check for emails containing attachments that were either not scanned or the scanning did not complete. You cannot include both conditions in one rule, since multiple conditions in a rule are treated in a Boolean **AND** fashion (for example, condition 1 is true AND condition 2 is true; this is similar to what you did in the prior task where you checked for specific words in the email AND the email was received from inside the organization). 

In this case, it does not make logical sense to check for attachments that were not scanned AND for attachments in which scanning did not complete. Therefore, you will need to create two rules; one for messages with attachments that were not scanned and one for messages with attachments where scanning of the attachments did not complete. This task will create the first rule; the next task will create the second rule. 

**Important:** Because these two conditions will be defined in separate rules, the rules will be applied in a Boolean **OR** fashion (for example, condition 1 is true OR condition 2 is true).

1. You should still be logged into LON-CL1 as the **Administrator** with a password of **Pa55w.rd**; if necessary, then log in now. 

2. If the **Exchange Admin Center** is still open from the prior task, then proceed to the next step; otherwise, if necessary, navigate to the **Office 365 home** page ([**https://portal.office.com**](https://portal.office.com/)), log in as **admin@M365xZZZZZZ.onmicrosoft.com,** navigate to the **Microsoft 365 admin center**, navigate to the **Exchange admin center**, then select **mail flow** in the left-hand navigation pane and select the **rules** tab.

3. In this task, you will create a mail flow rule that checks for emails that contain attachments that cannot be scanned. In the **rules** tab, select the **plus (+) sign** icon in the menu bar and in the drop-down menu, select **Modify messages.**

4. In the **new rule** window, enter **Attachments could not be scanned** in the **Name** field.

5. Select drop-down arrow in the **Apply this rule if…** field. In the menu that appears, review the available options. Note that in the default list of menu options, the only attachment-related option is **Any attachment’s content includes**; there is no option related to the status of an attachment.   
‎  
‎Therefore, select **Select one** to collapse the menu and then scroll down in the **new rule** window and select **more options…**

6. Scroll up to the top of the window. Select drop-down arrow in the **Apply this rule if…** field. Hover over **Any attachment…** and in the menu that appears, select **content can’t be inspected.**

7. Select the drop-down arrow in the **Do the following…** field. Hover over **Redirect the message to…** and in the menu that appears, select **hosted quarantine.**

8. Select the **add action** button to add another action.

9. Select the drop-down arrow in the second action field that appears. Hover over **Apply a disclaimer to the message…** and in the menu that appears, select **append a disclaimer.**

10. To the right of the second action field that displays **Append the disclaimer…,** select **Enter text.**

11. In the **specify disclaimer text** window, enter the following message in the field: **Attachments in this message were not scanned.**

12. Select **OK.**

13. To the right of the second action field that displays **Append the disclaimer…,** select **Select one.**

14. In the **specify fallback action** window, **Wrap** is displayed as the default fallback option. This is the option you want to select as the fallback option, so select **OK**.

15. Scroll down in the **new rule** window and under **Properties of this rule**, verify the **Audit this rule with severity level:** checkbox is selected. If it’s not checked, then select it now.

16. Select the severity level drop-down arrow and select **Medium**. 

17. In the **Choose a mode for this rule:** option, select **Enforce**.

18. Select **Save.**

19. This returns you to the **rules** tab in the Exchange admin center. The new **Attachments could not be scanned** rule should be displayed in the list of rules. This rule should be selected, and an **Attachments could not be scanned** pane should appear that displays the conditions and actions of this rule. Verify the conditions and actions are correct; if any corrections are needed, select the **pencil (Edit)** icon in the menu bar and make the necessary corrections. 

20. Leave the Exchange Admin Center open to the mail flow page and proceed to the next task.
 

## Task 3: Create second Mail Flow rule for attachments

In the prior task, you created a mail flow rule for messages with attachments that were not scanned. In this task, you will create a second mail flow rule for messages with attachments; however, in this case, it will be for messages with attachments in which scanning of the attachments did not complete. Because these conditions will be defined in separate rules, the rules will be applied in a Boolean OR fashion.

1. You should still be logged into LON-CL1 as the **Administrator** with a password of **Pa55w.rd**; if necessary, then log in now. 

2. If the **Exchange admin center** is still open from the prior task, then proceed to the next step; otherwise, if necessary, log into the **Office 365 home** page, navigate to the **Exchange Admin Center**, select **mail flow**, and select the **rules** tab using the instructions in the prior task.

3. You will now create a mail flow rule that checks for emails that contain attachments where the scanning of the attachments didn’t finish. In the **rules** tab, select the **plus (+) sign** icon in the menu bar and in the drop-down menu that appears, select **Modify messages.**

4. In the **new rule** window, enter **Attachment scanning did not complete** in the **Name** field.

5. Scroll down and select **more options.** The reason you must select **more options** at this point in the process is that you want to apply this rule if an attachment was not scanned or the scanning didn’t finish. However, as you saw in the prior task, those attachment options are not available in the initial **Apply this rule if…** condition field. You must select **more options** to see the attachment conditions.

6. Scroll up to the top of the window. Select the drop-down arrow in the **Apply this rule if…** field. Hover over **Any attachment…** and in the menu that appears, select **didn’t complete scanning.**

7. Select the drop-down arrow in the **Do the following…** field. Hover over **Redirect the message to…** and in the menu that appears, select **hosted quarantine.**

8. Select the **add action** button to add another action.

9. Select the drop-down arrow in the second action field that appears. Hover over **Apply a disclaimer to the message…** and in the menu that appears, select **append a disclaimer.**

10. To the right of the second action field that displays **Append the disclaimer…,** select **Enter text.**

11. In the **specify disclaimer text** window, enter the following message in the field: **Scanning of attachments in this message did not complete.**

12. Select **OK.**

13. To the right of the second action field that displays **Append the disclaimer…,** select **Select one.**

14. In the **specify fallback action** window, **Wrap** is displayed as the default fallback option. This is the option you want to select as the fallback option, so select **OK**.

15. Scroll down in the **new rule** window and under **Properties of this rule**, verify the **Audit this rule with severity level:** checkbox is selected. If it’s not checked, then select it now.

16. Select the severity level drop-down arrow and select **Medium**. 

17. In the **Choose a mode for this rule:** option, select **Enforce**.

18. Select **Save.**

19. This returns you to the **rules** tab in the Exchange admin center. The new **Attachment scanning did not complete** rule should be displayed in the list of rules. This rule should be selected, and an **Attachment scanning did not complete** pane should appear that displays the conditions and actions of this rule. Verify the conditions and actions are correct; if any corrections are needed, select the **pencil (Edit)** icon in the menu bar and make the necessary corrections. 

20. Leave the Exchange Admin Center open and proceed to the next task.
 

## Task 4 – Create Mail Flow rule restricting email size

After Holly reviewed the messaging environment at Adatum Corporation, she realized that she could provide a more efficient and secure environment if she created a set of mail flow rules that identify and take action on messages that are in-transit through her Exchange Online organization, as opposed to simply waiting until the messages are delivered to mailboxes before being acted upon by Inbox rules in Outlook and Outlook on the web.

Holly has discovered that mail flow rules contain a richer set of conditions, exceptions, and actions, all of which will provide her with the flexibility to implement many types of messaging policies for Adatum. She is eager to put this to the test regarding a significant issue currently affecting Adatum’s messaging environment - users who send extremely large email messages. She has decided that her first task will be to create a mail flow rule that restricts email size.

1. You should still be logged into LON-CL1 as the **Administrator** with a password of **Pa55w.rd**; if necessary, then log in now. 

2. If the **Exchange admin center** is still open from the prior task, then proceed to the next step; otherwise, if necessary, log into the **Office 365 home** page, navigate to the **Exchange Admin Center**, select **mail flow**, and select the **rules** tab using the instructions in the prior task.

3. You will now create a mail flow rule that checks the size of emails and restricts those that exceed a specific size. In the **rules** tab, select the **plus (+) sign** icon in the menu bar and in the drop-down menu that appears, select **Filter messages by size.**

4. In the **new rule** window, enter **Email size restriction** in the **Name** field.

5. Select the drop-down arrow in the **Apply this rule if…** field. Hover over **The message…** and in the menu that appears, select **size is greater than or equal to.**

6. To the right of this condition field that displays **The message size is greater than or equal to…****,** select **Enter text.**

7. In the **specify size (KB)** window, enter **1024** and then select **OK**. 

8. Select the drop-down arrow in the **Do the following…** field. Hover over **Block the message...** and in the menu that appears, select **reject the message and include an explanation****.**

9. In the **specify rejection reason** window that appears, enter the following text: **Your message exceeds the size limit. Please adjust the message size or compress the email content and send it as a zipped file.**

10. Select **OK.**

11. Scroll down to the **Choose a mode for this rule:** option and select **Enforce**.

12. Select **Save.**

13. This returns you to the **rules** tab in the Exchange admin center. The new **Email size restriction** rule should be displayed in the list of rules. This rule should be selected, and an **Email size restriction** pane should appear that displays the conditions and actions of this rule. Verify the conditions and actions are correct; if any corrections are needed, select the **pencil (Edit)** icon in the menu bar and make the necessary corrections. 

14. Leave the Exchange Admin Center open to the mail flow page and proceed to the next task.


# END OF LAB 2

 
