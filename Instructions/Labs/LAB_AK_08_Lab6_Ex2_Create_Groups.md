

# Module 8 - Lab

#  

# Exercise 2:  Create Groups

In this exercise, you will continue in your role as Holly Dickson, Adatum’s Enterprise Administrator. As part of her pilot project for deploying Microsoft 365, Holly wants to examine how creating groups in her on-premises Exchange environment differs from creating groups in Microsoft 365 for Exchange Online. She will begin by creating an on-premises distribution group and then a cloud distribution group. She will finish by creating an Office 365 group.

 

## Task 1:  Create an On-premises Distribution Group 

 

In this task you will log into the Exchange Server (LON-EX1) virtual machine and create an on-premises distribution group in the Exchange admin center.

	1. Switch to the LON-EX1 VM and, if necessary, log in with the **Administrator** account and **Pa55w.rd** password. 

	2. If the **Exchange admin center** is still open from a prior lab exercise, then proceed to the next step; otherwise, on the taskbar at the bottom of the page, select the **Windows** icon, select the **Microsoft Exchange Server 2019** group in the menu, and in the drop-down list, select **Exchange Administrative Center**. This will open Internet Explorer, which will attempt to access the EAC. **Note**: IE will display an error page indicating “There is a problem with this website’s security certificate”. You receive this message because a certificate for the EAC was not needed for this VM training environment. Therefore, select **Continue to this website (not recommended)** option. 

	3. In the **Exchange admin center**, in the left-hand navigation pane, select **recipients**. 

	4. On the **recipients** page, select the **groups** tab at the top of the page.

	5. Select the **plus (+) sign** icon on the menu bar to add a new group, and in the drop-down menu, select **Distribution group**.

	6. In the **new distribution group** window, enter **Finance** in both the **Display name** and **Alias** fields.

	7. Enter **This is the Finance team** in the **Notes** field.

	8. Select the **Browse** button to the right of the **Organizational unit** field. 

	9. In the **select an organizational unit** window, select **Users** and then select **OK**.

	10. Under the **Owners** field, note that the **Administrator** account, which you are signed in as, is automatically listed as an owner of this group. Since you want to add Holly Dickson as an additional owner for this group, select **plus (+) sign** icon. 

	11. In the **Select Owner** window, select **Holly Dickson**, select the **add-&gt;** button**,** and then select **OK**.

	12. In the **Members** section, since you are just adding the group now, there are no group members at this time. However, verify that the **Add group owners as members** checkbox is selected so that Holly and the Administrator account, who are the two owners, will be automatically added as members of the group. Then select the **plus (+) sign** icon to add additional group members.

	13. In the **Select Members** window, select Jessica Hofer, select the **add-&gt;** button**,** and then select **OK**.

	14. Scroll to the bottom of the window.

	15. This will be a Closed group, so in the two settings at the bottom of the page (**Choose whether owner approval is required to join the group** and **Choose whether the group is open to leave**), select the **Closed** option for both settings. 

	16. Select **Save**.

	17. On the **groups** page, the **Finance** distribution list should now appear in the list of groups.

	18. Leave the Exchange admin center open and proceed to the next task.

 

## Task 2: Create a Cloud Distribution Group

 

Now that Holly has experienced adding a distribution group in Adatum’s on-premises Exchange Server, she wants to add a distribution group in Microsoft 365. To avoid any confusion, Holly will switch to LON-CL1 to access the Exchange admin center for Exchange Online. 

	1. Switch to the LON-CL1 VM and if necessary, log in as the **Administrator** with a password of **Pa55w.rd.**

	2. If the **Microsoft 365 admin center** tab is still open in your browser from the prior lab, then proceed to the next step; otherwise, if necessary, log into the **Office 365 home** page **(https://portal.office.com)** as **admin@M365xZZZZZZ.onmicrosoft.com** and then navigate to the **Microsoft 365 admin center.**

	3. In the **Microsoft 365 admin center**, in the left-hand navigation bar, select **Show all** to display all the navigation menu options. 

	4. In the left-hand navigation bar, under the **Admin centers** group, select **Exchange**. This opens a new tab and displays the Exchange admin center for Exchange Online. 

	5. In the **Exchange admin center**, in the left-hand navigation bar, select **recipients.**

	6. On the **recipients** page, select the **groups** tab at the top of the page.

	7. Do **NOT** select the **+New Office 365 group** button, since you want to add a distribution group and not an Office 365 group.   
‎  
‎Instead, select the **drop-down** **Arrow** that appears to the right of the **+New Office 365 group** button. In the drop-down menu, select **Distribution list**. 

	8. In the **new distribution list** window, enter **Marketing** in both the **Display Name** and **Alias** fields. When you tab off the **Alias** field, **Finance** will be displayed in the **Email address** field.

	9. Enter **This is the Marketing Team** in the **Notes** field.

	10. Under the **Owners** field, the **MOD Administrator** account is already displayed by default as an owner, since this is who you are logged in as in Microsoft 365 (when you logged in as **admin@M365xZZZZZZ.onmicrosoft.com**, the **admin** alias belongs to the **MOD Administrator** account). Select the **plus (+) sign** icon to add a new owner. 

	11. In the **Select Owner** window, note the different users that appear from when you added Holly as an owner of the Finance group in the on-premises EAC. In this case, these are the Microsoft 365 user accounts that were added into Adatum’s tenant by your lab hosting provider. To add Holly as an owner, select **Holly Dickson**, select the **add-&gt;** button**,** and then select **OK**.

	12. In the **Members** section, since you are just adding the group now, there are no group members at this time. However, verify that the **Add group owners as members** checkbox is selected so that Holly and the MOD Administrator account, who are the two owners, will be automatically added as members of the group. Then select the **plus (+) sign** icon to add additional group members.

	13. In the **Select Members** window, hold down your CTRL key and select **Joni Sherman**, **Megan Bowen**, and **Nestor Wilke**, select the **add-&gt;** button**,** and then select **OK**.

	14. This will be a Closed group, so in the two settings at the bottom of the page (**Choose whether owner approval is required to join the group** and **Choose whether the group is open to leave**), select the **Closed** option for both settings. 

	15. Select **Save** and then select **OK** once the information is successfully saved.

	16. On the **groups** page, the **Marketing** distribution list should now appear in the list of groups.

	17. Leave your browser and all the tabs open and proceed to the next task.

 

## Task 3: Create an Office 365 Group

 

In this task you will create an Office 365 group, which is similar to an on-premises distribution list but with additional collaboration functionality. While email can be sent to each type of group, members of a distribution list receive email in their Inbox whenever someone sends an email to the email address associated with distribution group; whereas, an Office 365 group shows as an individual entity in Outlook and Outlook on the web if the user is a member of the Office 365 group. Therefore, whenever an email is sent to an Office 365 group, it does not land in the user’s Inbox; rather, it lands in the separate group folder that is created in the user’s mailbox in Outlook or Outlook on the web. 

 

Another major difference between the two types of groups is that an Office 365 Group is cloud-only and can be used for Team collaboration. Besides having a shared mailbox and calendar, an Office 365 group can be created along with an associated SharePoint library, OneNote notebook, Microsoft Teams, Yammer, Planner, and PowerBI, all of which allows teams to work together seamlessly.

 

	1. You should still be in the LON-CL1 VM; if necessary, log in as the **Administrator** account with a password of **Pa55w.rd**.

	2. In your browser, if you have the **Microsoft 365 admin center** open in a tab from the previous task, then select this tab and proceed to the next step; otherwise, navigate to [**https://portal.office.com/**](https://portal.office.com/) and sign in using the **Tenant Email** and **Password** provided by your lab hosting provider, and then navigate to the **Microsoft 365 admin center**.

	3. In the **Microsoft 365 admin center**, in the left-hand navigation bar, select **Groups** to expand it, and then select **Groups** in the menu.

	4. In the **Groups** window, select **Add a group**.

	5. In the **Choose a group type** window, select **Office 365 (recommended)** and then select **Next**.

	6. In the **Set up the basics** window, enter **Sales** in the **Name** field, and then enter **Collaboration group for the Sales team** in the **Description** field. Select **Next**.

	7. In the **Assign Owners** window, you will assign Allan Deyoung and Patti Fernandez as owners of this group.

		- Enter **Allan** in the **Owners** field. In the drop-down menu that appears, select **Allan Deyoung**.

		- Enter **Patti** in the **Owners** field. In the drop-down menu that appears, select **Patti Fernandez**.

		- Select **Next**.

8. In the **Edit settings** window, enter **sales** in the **Group email address** field. 

9. Under the **Privacy** section, select the **Private – Only members can see group content** option.

10. Under the **Add Microsoft Teams to your group** section, verify the **Create a team for this group** checkbox is selected (select it if need be). 

11. Select **Next**.

12. In the **Review and finish adding group** window, review the content that you entered. If everything is correct, select **Create group**; otherwise, select **Back** and fix anything that needs correction (or select **Edit** under the specific area that needs adjustment).

13. On the **New group created** window, note the comment at the top of the page that it may take 5 minutes for the new group to appear in the list of groups. 

Select **Close**. This returns you to the **Groups** page.

14. If the new Sales group does not appear in the **Groups** list, wait a minute or so and then select the **Refresh** option on the menu bar (to the right of **Add a group**). If the Sales group still does not appear, then refresh the page every minute or so until it does. 

**Note:** Two additional group types are Mail-enabled Security groups and Distribution groups. Neither of these group types were used in this lab because it can take up to an hour for these two types of groups to appear in the Groups list; whereas, Office 365 groups and Security groups usually take just a matter of minutes to appear.

15. You’re now ready to add members to the Sales group. In the list of **Groups**, select the **Sales** group, which opens a window for the group.

16. In the **Sales** group window, select the **Members** tab.

17. Under the **Members** section, you can see the two owners (Allan and Patti), but you can also see that there are no members. Select **View all and manage members** to add members to the group.

18. In the **Sales** group window, select **+ Add members**. This displays the list of current users.

19. In the list of users, select **Diego Siciliani** and **Lynne Robbins**, and then scroll to the bottom and select **Save**.

20. Select **Close**. This displays the list of users for this group. Select **Close** again.

21. On the **Sales** window, Diego and Lynne should now appear as members of the group. Select the **X** in the upper right-hand corner to close the window.

22. On the **groups** window, the new **Sales** group should now appear. Note the difference between the **Marketing** distribution list that you added in the prior task and the **Sales** group that you added in this task.  
‎  
‎Under the **Teams status** column, note the Sales group displays an icon indicating the group is connected to Microsoft Teams (hover your mouse over the icon to see the icon tag). However, the Marketing distribution list, which was added through the Exchange admin center for Exchange Online, does not display this icon. This is because the EAC does not provide this Teams option when adding a group through the EAC.   
‎  
‎To further elaborate on this difference, select the **Sales** group in the list of groups.

23. In the **Sales** group window that appears, note the four tabs that appear at the top – General, Members, Settings, and Microsoft Teams. Select the **Microsoft Teams** tab

24. In the **Microsoft Teams** tab, note that you have the option to navigate to the Microsoft Teams admin center to manage your Teams settings. Select the **X** in the upper right-hand corner of the **Sales** window to close it.

25. In the **groups** window, select the **Marketing** group. 

26. In the **Marketing** group window, note that a **Microsoft Teams** tab does not appear. This is because when you added the group through the EAC, it did not provide an option to create a team for this group in Microsoft Teams.

27. Leave your browser and all the tabs open for the next exercise.

# END OF LAB 

 
