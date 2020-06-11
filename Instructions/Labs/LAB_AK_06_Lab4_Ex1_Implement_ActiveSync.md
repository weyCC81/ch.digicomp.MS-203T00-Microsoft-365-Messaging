# Module 6 – Lab 4 - Exercise 1 - Implement ActiveSync 

In this lab you will be guided through the process of enabling and disabling Exchange ActiveSync. ActiveSync is a client protocol that enables users to synchronize their Exchange mailbox with a mobile device. In this lab, you will log into the Exchange Server (LON-EX1) VM and set up ActiveSync for a single mailbox as well as for multiple mailboxes using the Exchange Admin Center.

## Task 1 - Create Recipient mailboxes  

To enable and disable ActiveSync, you must first create several recipient mailboxes in the on-premises Exchange admin center (EAC) on the Exchange Server (LON-EX1) VM to facilitate this lab exercise.

1. Switch to the **LON-EX1** Exchange Server VM and log in as the **Administrator** with a password of **Pa55w.rd**. 

2. After logging in, the **Server Manager** application will automatically open. Select the **X** in the upper-right corner of the screen to close it.

3. To create on-premises user mailboxes, you must open the on-premises Exchange admin center. To do so, select the **Windows** icon on the taskbar, and in the Windows menu select the **Microsoft Exchange Server 2019** group. In the program group, select **Exchange Administrative Center**. 

4. This will open **Internet Explorer**, which will attempt to access the EAC. IE will display an error page indicating **This site is not secure**. Select **More information,** which displays a message indicating **The hostname in the website’s security certificate differs from the website you are trying to visit**.   
‎  
‎You received this message because a certificate for the EAC was not needed for this VM training environment. Therefore, select **Go on to the webpage (not recommended)**. 

5. Maximize your browser window, and then log into the EAC as **adatum\Administrator** and password **Pa55w.rd.**

6. In the **Exchange admin center**, in the left-hand navigation pane, select **recipients** if necessary (it should be selected by default). 

7. Select the **mailboxes** tab at the top of the page (which should also be selected by default).

8. On the **mailboxes** tab, select the **plus (+) sign** icon and in the drop-down menu, select **User mailbox.**

9. In the **new user mailbox** window, enter **hollyd** in the **Alias** field. 

10. Select the **New User** option.

11. Enter **Holly** in the **First name** field.

12. Leave the **Initials** field blank.

13. Enter **Dickson** in the **Last name** field.

14. When you tab off the **Last name** field, **Holly Dickson** will be automatically displayed in the **Display name** and **Name** fields.

15. For the **Organizational unit** field, select the **Browse** button. 

16. In the **select an organizational unit** window, select **Users** and then select **OK**.

17. Enter **hollyd** in the **User logon name** field.  
‎  
‎**Note:** The domain field (to the right of the **User logon name**) is prefilled with **Adatum.com**; this is Adatum’s on-premises domain.

18. Enter **Pa55w.rd** in the **New password** and **Confirm password** fields.

19. Make sure the **Require password change on next logon** checkbox is unchecked; if necessary, uncheck it.

20. Select **Save.** The new user mailbox that was created for Holly Dickson should be displayed in the list of mailboxes.

21. Repeat steps 8-20 for the following two users:

	- **Paul Wimmer**; alias and user log on name: **paulw**

	- **Jessica Hofer**; alias and user log on name: **jessicah**

22. Leave the Exchange admin center open and proceed to the next task.


## Task 2 - Maintain ActiveSync For a Single Mailbox  

By default, Exchange ActiveSync is enabled for all user mailboxes; therefore, all users who have an Exchange mailbox can synchronize their mobile device with the Microsoft Exchange server.

In this task, you will disable Exchange ActiveSync for Holly Dickson’s mailbox. You will then repeat the process to enable ActiveSync for Holly. This provides you with experience in both disabling and enabling ActiveSync for a single mailbox.

1. You should still be logged into LON-EX1 as the **Administrator**, and you should have the EAC open in Internet Explorer; if not, then do so now.

2. In the **Exchange admin center**, you should still be displaying the **recipients** tab from the left-hand navigation pane, and you should be displaying the **mailboxes** tab at the top of the page; if not, then do so now. 

3. In the list of recipient mailboxes, select **Holly Dickson**.

4. Select the **pen (Edit)** icon to edit the mailbox properties for Holly Dickson.

5. The **Edit User Mailbox** window will open for Holly Dickson. In the left-hand navigation pane, select **mailbox features**.

6. In the **Phone and Voice Features** section, under **Mobile Devices**, select **Disable Exchange ActiveSync**.  
‎**Note:** Because **Disable Exchange ActiveSync** appears, that indicates that ActiveSync is enabled for Holly’s mailbox (which is the default for new mailboxes).

7. A **Warning** dialog box appears asking whether you’re sure you want to disable Exchange ActiveSync for this mailbox. Select **Yes**.

8. Select **Save**.

9. Repeat steps 4-8, but this time under the **Mobile Devices** section, note that **Disable Exchange ActiveSync** has now been changed to **Enable Exchange ActiveSync**. This indicates that ActiveSync is now disabled for Holly’s mailbox. When repeating these steps, this time select **Enable Exchange ActiveSync.**   <br/>

	**Note:** Under the **Mobile Devices** section, **Enable Exchange ActiveSync** is changed back to **Disable Exchange ActiveSync**, which indicates that ActiveSync is once again enabled for Holly. Also note how ActiveSync was enabled without displaying a Warning message asking you to verify that you wanted to enable it. That’s the only difference between enabling and disabling ActiveSync.

10. Select **Save.** 

11. Leave the Exchange Admin Center open for use in the next task.

 

## Task 3 - Maintain ActiveSync For a Multiple Mailboxes  

In this task, you will begin by disabling Exchange ActiveSync for a group of mailboxes. You will then repeat the process, but this time you will enable ActiveSync for this same set of mailboxes. This provides you with experience in both disabling and enabling ActiveSync for multiple mailboxes at one time.  

1. You should still be logged into LON-EX1 as the **Administrator**, and you should have the EAC open in Internet Explorer; if not, then do so now.

2. In the **Exchange admin center**, you should still be displaying the **recipients** tab from the left-hand navigation pane, and you should be displaying the **mailboxes** tab at the top of the page; if not, then do so now. 

3. In the list of recipient mailboxes, select **Paul Wimmer**. Note how the details pane on the right-hand side of the page displays the details for Paul’s mailbox.

4. Hold down the CTRL key and select **Jessica Hofer**. Note how the title of the details pane on the right-hand side of the page changes to **Bulk Edit**.

5. In the **Bulk Edit** detail pane, scroll down to **Exchange ActiveSync** and select **Disable.**

6. A **bulk disable Exchange ActiveSync** pop-up window appears asking whether you’re sure you want to disable Exchange ActiveSync for these selected recipients. Select **OK**.

7. Repeat steps 5-6, but this time under **Exchange ActiveSync,** select **Enable.**

8. Leave the Exchange Admin Center open for use in a future lab exercise.


# End of Lab 4
