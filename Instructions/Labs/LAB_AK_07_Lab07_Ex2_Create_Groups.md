# Module 7 - Lab 7 - Exercise 2 - Create Groups

In this exercise, you will continue in your role as Holly Dickson, Adatum’s
Messaging Administrator. As part of her pilot project for deploying Microsoft
365, Holly wants to examine how creating groups in her on-premises Exchange
Server 2019 environment differs from creating groups in Microsoft 365 for
Exchange Online. You will begin by creating an on-premises distribution group
for Exchange Server 2019 and then a cloud distribution group in Microsoft 365.
You will finish by creating a Microsoft 365 group.

## Task 1 - Create an On-premises Distribution Group

In this task you will log into the Exchange Server (LON-EX1) virtual machine and
create an on-premises distribution group in the Exchange admin center for
Exchange Server 2019.

1.  Switch to **LON-EX1**, and if necessary, log in as the **Administrator**
    with a password of **Pa55w.rd**.

2.  In the **Edge** browser, you should still have the on-premises **Exchange
    admin center** open from a prior lab exercise; if so, then proceed to the
    next step. Otherwise, on the taskbar at the bottom of the page, select the
    **Start** icon, select the **Microsoft Exchange Server 2019** group in the
    menu, and in the drop-down list, select **Exchange Administrative Center**.
    Sign into the EAC as **adatum\\Administrator** with a password of
    **Pa55w.rd**.

3.  In the **Exchange admin center**, in the left-hand navigation pane, select
    **recipients**.

4.  On the **recipients** page, select the **groups** tab at the top of the
    page.

5.  Select the **plus (+) sign** icon on the menu bar to add a new group, and in
    the drop-down menu, select **Distribution group**.

6.  In the **new distribution group** window, enter **Finance** in both the
    **Display name** and **Alias** fields.

7.  Enter **This is the Finance team** in the **Notes** field.

8.  Select the **Browse** button to the right of the **Organizational unit**
    field.

9.  In the **select an organizational unit** window, select **Users** and then
    select **OK**.

10. Under the **Owners** field, note that the **Administrator** account, which
    you are signed in as, is automatically listed as an owner of this group.
    Since you want to add Holly Dickson as an additional owner for this group,
    select **plus (+) sign** icon.

11. In the **Select Owner** window, select **Holly Dickson**, select the
    **add-\&gt;** button, and then select **OK**.

12. In the **new distribution group** window, scroll down to the **Members**
    section. Since you are just adding the group now, there are no group members
    at this time.  
      
    However, verify that the **Add group owners as members** check box is
    selected so that Holly and the Administrator account, who are the two
    owners, will be automatically added as members of the group. Then select the
    **plus (+) sign** icon to add additional group members.

13. In the **Select Members** window, select **Jessica Hofer**, select the
    **add-\&gt;** button, and then select **OK**.

14. This will be a Closed group, so in the two settings at the bottom of the
    page below the list of Members, select the **Closed** option for both the
    **Choose whether owner approval is required to join the group** setting and
    the **Choose whether the group is open to leave** setting.

15. Select **Save**.

16. On the **groups** page, the **Finance** distribution group should now appear
    in the list of groups.

17. Leave the Exchange admin center open and proceed to the next task.

## Task 2 - Create a Cloud Distribution Group

Now that Holly has experienced adding a distribution group in Adatum’s
on-premises Exchange Server 2019 environment, she wants to add a distribution
group in Microsoft 365. To avoid any confusion, Holly will switch to LON-CL1 to
access the Exchange admin center for Exchange Online.

1.  Switch to LON-CL1 and if necessary, log in as the **Administrator** with a
    password of **Pa55w.rd.**

2.  In the Edge browser, you should still have the following tabs open from the
    prior lab exercise: the **Office 365 Home** tab, the **Microsoft 365 admin
    center** tab, and the **Exchange admin center** tab.  
      
    Make sure you are using the **Classic Exchange admin center**, if you have a **Try the new Exchange admin center** option in the top right, then your are in the **Classic Exchange admin center**.  If not, select **Classic Exchange admin center** from the bottom of the left navigation pane.

3.  On the **Exchange admin center**, select **recipients**, then select the **Groups** tab.

4.  On the **Groups** window, select the down arrow next to **New Microsoft 365 group** and select **Distribution list**.

7.  In the **new distribution list** page, enter **Marketing** in the **Name**, **Alias**, and **Email address** fields, enter **This is the Marketing team** in the **Notes** field.
     
8.  In the **Assign owners** page, **MOD Administrator** should be listed by default

9. In the **Add members** page, do not add any members yet, you will do this in a later step.

10.  This will be a closed group, so select the **Closed** option for both the **Choose whether owner approval is required to join the group** setting, and **Choose whether the group is open to leave** setting then select **Save**.

11. On the **Saving completed successfully** page, select **OK**.  
      
    **Important:** Note the message that appears at the top of this page. It can
    take up to an hour for the Marketing group to appear in your groups list.

12. On the **Groups** page, select **Refresh** on the menu bar to display the
    Marketing group in the list of distribution groups. Lab testing has
    indicated that this group typically appears within a few minutes, so select
    **Refresh** within 5 minutes to see whether the Marketing group appears.  
      
    **Note:** You cannot continue until the Marketing group appears in this list
    of distribution groups.

13. Once the Marketing group appears in the list of distribution groups, select
    the **Marketing** group, then select the **Edit (pencil)** button.

14. In the **Marketing** pane that appears, the **General** tab is displayed by
    default. Select the **ownership** navigation item.

15. Under the **Owners** section, the **MOD Administrator** account is already
    displayed by default as an owner, since this is who you were logged in as in
    Microsoft 365 when you created the group.  
      
16. Select **+** to add additional owners.

16. In the pane that, in the list of Microsoft 365 user accounts that appears,
    select **Holly Dickson**, and then select **Add**, then select **OK**.

17. Select the **membership** navigation item.
   
18. On the **Members** window, select **+** to add new members.

19. In the pane that appears, on the list of Microsoft 365 user accounts that appears,
    select **Joni Sherman**, while holding the **CTL** key select **Megan Bowen** and **Nestor Wilke** and select **add**, then select **OK**.
    members of the group, and then select **Save changes**.

20. Verify the **Members** page includes **Joni Sherman**, **Megan Bowen**, and **Nestor Wilke** and select **Save**. Then select **OK** in the confirmation window.

21. Leave your browser and all the tabs open and proceed to the next task.

## Task 3 - Create a Microsoft 365 Group

In this task you will create a Microsoft 365 group, which is similar to an
on-premises distribution group but with additional collaboration functionality.
While email can be sent to each type of group, members of a distribution group
receive email in their Inbox whenever someone sends an email to the email
address associated with distribution group; whereas a Microsoft 365 group
appears as an individual entity in Outlook and Outlook on the web if the user is
a member of the Microsoft 365 group. Therefore, whenever an email is sent to a
Microsoft 365 group, it does not land in the user’s Inbox; rather, it lands in
the separate group folder that is created in the user’s mailbox in Outlook or
Outlook on the web.

Another major difference between the two types of groups is that a Microsoft 365
Group is cloud-only and can be used for Team collaboration. Besides having a
shared mailbox and calendar, a Microsoft 365 group can be created along with an
associated SharePoint library, OneNote notebook, Microsoft Teams, Yammer,
Planner, and PowerBI, all of which allows teams to seamlessly work together.

1.  You should still be in the LON-CL1 VM; if necessary, log in as the
    **Administrator** account with a password of **Pa55w.rd**.

2.  In your browser, if you have the **Microsoft 365 admin center** open in a
    tab from the previous task, then select this tab and proceed to the next
    step; otherwise, navigate to [](https://portal.office.com/) and sign in
    using the **Tenant Email** and **Password** provided by your lab hosting
    provider, and then navigate to the **Microsoft 365 admin center**.

3.  In the **Microsoft 365 admin center**, select **Teams & groups** in the left-hand
    navigation pane, and then in the expanded group select **Active teams & groups**.

4.  In the **Active teams & groups** window, select **Add a group** on the menu bar.
    This initiates the **Add a group** wizard.

5.  In the **Choose a group type** page, select **Microsoft 365 (recommended)**
    and then select **Next**.

6.  In the **Set up the basics** window, enter **Sales** in the **Name** field,
    and then enter **Collaboration group for the Sales team** in the
    **Description** field. Select **Next**.

7.  In the **Assign owners** page, you will assign Allan Deyoung and Patti
    Fernandez as owners of this group by selecting **+ Assign owners**. Select **Allan Deyoung** and **Patti Fernandez** from list of users.
        
    -   Select **Add (2)**. 

    -   Select **Next**.

8.  In the **Add members** page, select **Next**.

9.  In the **Edit settings** page, enter **sales** in the **Group email
    address** field.

10.  Under the **Privacy** section, select the **Private** option.

11. Under the **Add Microsoft Teams to your group** section, verify the **Create
    a team for this group** check box is selected (select it if need be).

12. Select **Next**.

13. In the **Review and finish adding group** page, review the content that you
    entered. If everything is correct, select **Create group**; otherwise,
    select **Back** and fix anything that needs correction (or select **Edit**
    under the specific area that needs adjustment).

14. On the **New group created** page, note the comment at the top of the page
    that it may take 5 minutes for the new group to appear in the list of
    groups.

    Select **Close**. This returns you to the **Groups** page.

15. If the new Sales group does not appear in the **Groups** list, wait a minute
    or so and then select **Refresh** on the menu bar. If the Sales group still
    does not appear, then refresh the page every minute or so until it does.

    **Note:** Two additional group types are Mail-enabled Security groups and
    Distribution groups. Neither of these group types were used in this lab
    because it can take up to an hour for these two types of groups to appear in
    the Groups list; whereas Microsoft 365 groups and Security groups usually
    take just a matter of minutes to appear.

16. You’re now ready to add members to the Sales group. In the list of **Active teams & groups**, select the **Sales** group.

17. In the **Sales** pane that appears, the **General** tab is displayed by
    default. Select the **Members** tab.

18. Under the **Owners** section, you can see the two owners (Allan and Patti),
    but you can also see that there are no members. Under the **Members**
    section, select **View all and manage members** to add members to the group.

19. In the **Sales** group window, select **+ Add members**. This displays the
    list of current Microsoft 365 users.

20. In the list of users, select the check boxes for **Diego Siciliani** and
    **Lynne Robbins**, and then scroll to the bottom and select **Add (2)**.

21. In the **Members** window, verify that Diego and Lynne appear as members and select the left arrow to return to the **Sales** properties window.

22. On the **Sales** window, Diego and Lynne should now appear as members of the
    group. If they do not appear, select the **Refresh** icon in the upper
    right-hand corner of the screen.  
      
    Once Lynn and Diego appear as members of the group, select the **X** in the
    upper right-hand corner to close the window.

23. On the **Active groups** window, note the difference between the
    **Marketing** distribution list that you added in the prior task and the
    **Sales** group that you added in this task.

    Under the **Teams status** column, note the Sales group displays an icon
    indicating the group is connected to Microsoft Teams (hover your mouse over
    the icon to see the icon tag). However, the Marketing distribution list,
    which was added through the Exchange admin center for Exchange Online, does
    not display this icon. This is because the EAC does not provide this Teams
    option when adding a group through the EAC.

    To further elaborate on this difference, select the **Sales** group in the
    list of groups.

24. In the **Sales** group window that appears, note the four tabs that appear
    at the top – General, Members, Settings, and Microsoft Teams. Select the
    **Microsoft Teams** tab.

25. In the **Microsoft Teams** tab, note that you have the option to navigate to
    the **Microsoft Teams admin center** to manage your Teams settings. Select
    the **X** in the upper right-hand corner of the **Sales** window to close
    it.

26. In the **Active teams and groups** window, select the **Distribution list** tab, select the **Marketing** group.

27. In the **Marketing** group window, note that a **Microsoft Teams** tab does
    not appear. This is because when you added the group through the EAC, it did
    not provide an option to create a team for this group in Microsoft Teams.  
      
    Select the **X** in the upper right-hand corner of the **Marketing** window
    to close it.

28. Leave your browser and all the tabs open for the next exercise.

# End of Lab 7
