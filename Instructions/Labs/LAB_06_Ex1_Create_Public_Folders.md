# Lab 6 - Exercise 1 - Create and manage Public Folders

Holly Dickson wants to continue reviewing the messaging functionality in
Microsoft 365, and more specifically, the use of public folders. In this lab,
you will log into the Exchange admin center for Exchange Online and create a
public folder mailbox and a public folder in Microsoft 365. You will then manage the settings and permissions for the created public folder.

Public folder mailboxes contain the hierarchy information plus the content for
public folders. The first public folder mailbox you create will be the primary
hierarchy mailbox, which contains the only writable copy of the hierarchy. Any
additional public folder mailboxes you create will be secondary mailboxes, which
contain a read-only copy of the hierarchy.

Public folders are designed for shared access and provide an easy and effective
way to collect, organize, and share information with other people in your
workgroup or organization. You can't create a public folder unless you've first
created a public folder mailbox.

## Task 1 - Create a Public Folder Mailbox

In this task, you will create a public folder mailbox as part of Holly’s
Microsoft 365 pilot project. Every public folder must be contained in a public
folder mailbox; therefore, you must create the public folder mailbox first
before you can create a public folder.

1. You should still be logged into LON-CL1 from the prior lab; if necessary,
    log in as the **Administrator** with a password of **Pa55w.rd**.

2. In the Edge browser, the Office 365 home page, the Microsoft 365 admin center, and the Exchange admin center tabs should still be open. Select the **Exchange admin center** tab. Switch back to the New EAC by selecting **New Exchange admin center** at the bottom of the left hand navigation pane.

3. In the **New Exchange admin center**, on the left-hand navigation pane, select **Public folders**.

4. On the **Public folders** page, select the **Public folder mailboxes** tab.

5. In the **Public folder mailboxes** tab, select **+ Add a public folder mailbox** to add a new public folder mailbox.

6. In the **Add a public folder mailbox** window that appears, enter **Test PF mailbox1** in
    the **Name** field and then select **Add**.

    Once you see the message **Test PF mailbox1 will now appear in your list of public folder mailboxes** displayed, select the **X** icon in the top right hand corner to exit the window.

7. This will return you to the **public folder mailboxes** tab, which should
    now display **Test PF mailbox1**.

8. Leave all browser tabs open and proceed to the next task.

## Task 2 - Create a Public Folder

Now that you have created a public folder mailbox, you can create a public
folder. When using the EAC to create a public folder, you'll only be able to set
the name and the path of the public folder. To configure additional settings,
you'll need to edit the public folder after it's created (which you will do in
the next lab exercise).

1. You should still be in LON-CL1 and you should be in the **Exchange admin
    center** tab in your browser.

2. In the **Exchange admin center**, you should still be on the **public folders** page with the **Public folder mailboxes** tab selected.  

    Since you now want to create a public folder, on the **Public folders** page, select the **Public folders** tab.

3. In the **Public folders** tab, select the **+ Add a public folder** to add a  new public folder.

4. In the **Add a public folder** window that appears, enter **Test PF1** in the **Name** field and then select **Add**.

    Once you see the message **Public folder Test PF1 is added** displayed, select the **X** icon in the top right hand corner to exit the window.

5. This will return you to the **public folder** page, which should now display
    **Test PF1**.

6. Leave all browser tabs open and proceed to the next task.

## Task 3 - Manage Public Folder Mail Settings

In this task, you will continue in your role as Holly Dickson and enable the
Test PF1 public folder that you created in the previous task so that it can
receive email.

1. You should still be logged into LON-CL1 from the prior lab; if necessary,
    log in as the **Administrator** with a password of **Pa55w.rd**.

2. In the Edge browser, you should still be in the **Exchange admin center** from the end of the prior task. Specifically, you should still be on the **public folders** page.

3. On the **public folders** page with the **Public folders** tab selected, the **Test PF1** record that you created in the prior task should be highlighted.  

    **Important:** If you closed the EAC tab at the end of the prior task and had to navigate to this page in the prior step, then select the **Test PF1** row. Do not select the **Test PF1** hyperlink as this will open the **Test PF1** public folder window. Instead, select any other portion of the **Test PF1** row to simply highlight the record.

4. By selecting the Test PF1 record, the properties for this public folder are
    displayed in the detail pane on the right. Note that **Mail-enabled** is un-checked for Test PF1 (meaning mail flow on the public folder is disabled). To enable mail for this public folder, select the empy check-box to the left of **Mail-enabled** and then select **Save**.

5. A message stating **Your changes have succesfully been saved** should be displayed. You can now exit the public folder properties pane by selecting the **X** icon on the top right hand corner of the window.

6. Leave all browser tabs open and proceed to the next task.

## Task 4 - Manage Public Folder Settings

In this task, you will manage several settings for the Test PF1 public folder.

1. You should still be in LON-CL1 and you should be in the **Exchange admin
    center** tab in your browser.

2. In the **Exchange admin center**, you should still be in the **public folders** page.

3. On the **public folders** page, the **Test PF1** record that you updated in the prior task should be highlighted.  

    **Important:** If you closed the EAC tab at the end of the prior task and had to navigate to this page in the prior step, then select the **Test PF1** row. Do not select the **Test PF1** hyperlink as this will open the **Test PF1** public folder window. Instead, select any other portion of the **Test PF1** row to simply highlight the record.

4. By selecting the Test PF1 record, the properties for this public folder are displayed in the detail pane on the right.

5. In the **Test PF1** properties window, the **general** tab is displayed by default. Review the fields in this tab and note the value in the **Public folder mailbox** field; this indicates that **Test PF1** was automatically assigned to the **Test PF mailbox1** that you created in the first task in this exercise.

6. In the **Test PF1** properties window, select the **Mail properties** tab.

    **Note**: The settings under **Mail properties** may be blank. continue to refresh the window until the settings are populated. It can take up to 10 minutes after Public folder creation. 

7. Under **Alias**, **TestPF1** should be displayed. Select the **Edit general mail properties** hyperlink. 

   In the **Edit general mail properites** window that appears type **First public folder** under **Display name**, then select **Save changes**.

   Once the message **Settings Updated** is displayed, select the back-arrow icon on the top left-hand corner. 

8. With the **Mail properties** tab still selected, Select the **Hide from Exchange address list** checkbox and then select save.  

    **Note:** By selecting this check box, the public folder will not appear in
    Adatum’s address book and other address lists, but it will still receive
    email.

9. In the **Test PF1** properties window, select the **Other** tab.

10. Under the **Message delivery restriction** field, select the **Manage message delivery restriction** hyperlink.

    In the **Message delivery restrictions** window that appears, select the **Require senders to be authenticated** check box.

11. Select **Save changes**. Once the message **Settings updated** is displayed, select the **X** icon at the top-right hand corner to exit the **Test PF1** properties window.

12. Leave all browser tabs open and proceed to the next task.

## Task 5 - Manage Public Folder Permissions

In this task, you will manage the permissions for the Test PF1 public folder.

1. You should still be in LON-CL1 and you should be in the **Exchange admin
    center** tab in your browser.

2. In the **Exchange admin center**, you should still be in the **public folders** page.

3. On the **public folders** page, the **Test PF1** record that you updated in the prior task should be highlighted.

4. With the **Test PF1** record highlighted in the public folder list, a **Test
    PF1** detail pane will be displayed on the right side of the screen. At the top of the window under where the public folder name is displayed, select **Folder permissions**.

5. A **Folder permissions** window will appear that enables you to add or remove users
    who can access this public folder and edit its permissions. Select **+ Add permissions** to add users.

6. In the **Add public folder permission** window that appears, under the **User** field, Type **MOD Admin** and then select **MOD Administrator** from the list of suggested results.

7. Select the drop-down arrow in the **Permission level** field and select
    **Owner.**

8. Select **Save Changes** at the bottom of the **Add public folder permission** window.

9. Once the settings have been saved, select **X** icon at the top right-hand corner to exit.

10. Leave all browser tabs open and proceed to the next lab. 

## Proceed to Lab 6 - Exercise 2
