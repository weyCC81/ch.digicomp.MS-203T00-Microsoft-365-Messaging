# Module 7 - Lab 6 - Exercise 1 - Manage Roles and Permission Policies

In this exercise you will continue in your role as Holly Dickson, Adatum’s Enterprise Administrator. Holly has been tasked with managing admin roles and permission policies for Adatum. The CTO has asked Holly to create a new management role group that allows an administrator to remotely access a mailbox without having the password. 

In this exercise Holly will return to the Exchange Admin Center, but this time she will access it from her client computer (LON-CL1) through the Microsoft 365 admin center. 

## Task 1 - Create an Admin Role

A management role group is a universal security group used in the Role Based Access Control (RBAC) permissions model in Exchange Server. A management role group simplifies the assignment of management roles to a group of users. All members of a role group are assigned the same set of roles. After the role group is added, the members of the role group are granted the permissions provided by the roles assigned to the role group.

In this task, you are going to create a custom role group and then assign multiple roles to it. In this task, you will create an admin role that allows an administrator to remotely access a mailbox without having the password. You will then assign two specific administrators to this role.

1. Switch to the LON-CL1 VM and if necessary, log in as the **Administrator** with a password of **Pa55w.rd**. 

2. The Microsoft Edge browser should still be open from Lab 3, and the following tabs should be open in your browser: **Microsoft Office home** page, **Microsoft 365 admin center**, and the **Exchange admin center**.   
‎  
‎If these tabs are not open, then navigate to the **Office 365 home** page ([**https://portal.office.com**](https://portal.office.com/)), log in as **admin@M365xZZZZZZ.onmicrosoft.com,** navigate to the **Microsoft 365 admin center**, and then navigate to the **Exchange admin center**, just as you did in Lab 3. 

3. In the **Exchange admin center** tab, in the left-hand navigation pane, select **permissions.**

4. At the top of the page, the **admin roles** tab should be displayed by default; if not, then select it now.

5. The **admin roles** window displays the existing role groups. Each of these groups has one or more roles assigned to it. For example, the **Compliance Management** role group is highlighted by default as it’s the first group in the list. In the details pane on the right-hand side of the screen, it displays the properties for this role group, which includes the roles and members that have been assigned to it. In this task, you are going to create a custom role group and then assign multiple roles to it, as well as several existing members.   
‎  
‎Select the **plus (+) sign** icon on the menu bar to create a new role group.

6. In the **new role group** window, enter **Application Impersonation** in the **Name** field.

7. Enter the following text in the **Description** field: **This role group allows an administrator to remotely access a mailbox without having the mailbox owner’s password.**

8. Under **Roles**, select the **plus (+) sign** icon to assign roles to the group.

9. In the **Select a Role** window, hold down the CTRL key and select the following roles:  

	- **ApplicationImpersonation**

	- **Mail Recipients**

	- **UserApplication** 

10. Select the **add -&gt;** button and then select **OK**. 

11. In the **new role group** window, scroll down the to the **Members** section and select the **plus (+) sign** icon to assign members to the group.

12. In the **Select Members** window, hold down the CTRL key and select the following members:   

	- **Admin**

	- **TenantAdmins_-903670859**

13. Select the **add -&gt;** button and then select **OK**. 

14. Select **Save**.   

15. This returns you to the **admin roles** tab in the Exchange admin center. The new **Application Impersonation** role group should be displayed in the list of groups. This role group should be selected, and an **Application Impersonation** pane should appear that displays the details of this group. Verify the information is correct; if any corrections are needed, select the **pencil (Edit)** icon in the menu bar and make the necessary corrections.   <br/>

	**Note:** Even though the **Application Impersonation** group appears in the list of role groups, it typically takes 24 to 48 hours to fully propagate changes to the permission configuration. 

16. Leave the Exchange Admin Center open and proceed to the next task.


## Task 2 - Manage an Admin Role

In this task, you are going to add a user to a role group.

1. You should still be logged into LON-CL1 as the **Administrator** account with a password of **Pa55w.rd**; however, if the log-in screen appears, then log in now.  

2. If the **Exchange admin center** is still open in your browser from the prior task, then proceed to the next step; otherwise, if necessary, navigate to the **Office 365 home** page ([**https://portal.office.com**](https://portal.office.com/)), log in as **admin@M365xZZZZZZ.onmicrosoft.com,** navigate to the **Microsoft 365 admin center**, navigate to the **Exchange admin center**, and then select **permissions.**

3. On the **permissions page**, select the **admin roles** tab if necessary.

4. In the list of role groups, select the **Discovery Management** role group. 

5. Select the **pencil (Edit)** icon to on the menu bar to edit this group.

6. In the **Discovery Management** window, scroll down to the **Members** section and then select the **plus (+) sign** icon to add new members to this role group.

7. In the **Select Members** window, select **admin.** 

8. Select the **add -&gt;** button and then select **OK**. 

9. Select **Save**. 

10. This returns you to the **admin roles** tab in the Exchange admin center. The **Discovery Management** role group should be displayed in the list of groups. This role group should be selected, and a **Discovery Management** pane should appear that displays the details of this group. Verify the **MOD Administrator** user account appears under the list of **Members** (MOD Administrator is the full name of the admin alias); if any corrections are needed, select the **pencil (Edit)** icon in the menu bar and make the necessary corrections.   

11. Leave the Exchange Admin Center open and proceed to the next task.  

## Task 3 -Create an Outlook Web App Policy

A mobile device mailbox policy allows you to apply a common set of security and mobile device settings to a group of users. You can create multiple mobile device mailbox policies. Each recipient in your organization must have a mobile device mailbox policy assigned to them. When you install Microsoft Exchange Server 2013 or later, a default mobile device mailbox policy is created, and new users are automatically assigned this policy.

In this task, you will create a new Outlook Web App policy that will later be assigned to several test users in Holly’s pilot project. 

1. You should still be logged into LON-CL1 as the **Administrator** account with a password of **Pa55w.rd**; however, if the log-in screen appears, then log in now.  

2. If the **Exchange admin center** is still open in your browser from the prior task, then proceed to the next step; otherwise, if necessary, navigate to the **Office 365 home** page ([**https://portal.office.com**](https://portal.office.com/)), log in as **admin@M365xZZZZZZ.onmicrosoft.com,** navigate to the **Microsoft 365 admin center**, navigate to the **Exchange admin center**, and then select **permissions.**

3. On the **permissions page**, select the **Outlook Web App policies** tab.

4. In the list of Outlook Web App policies, the **OwaMailboxPolicy-Default** policy is the only current policy. By default, this policy is assigned to all user mailboxes.

5. To add a new policy, select the **plus (+) sign** icon on the menu bar.

6. In the **new Outlook Web App mailbox policy** window, enter **Test OWA Mailbox policy** in the **Policy name** field. 

7. In the **Communication Management** group, all features are selected by default. Select the **Unified Messaging** check box to unselect it. 

8. In the **Information management** group, un-check **Journaling**.

9. Under **User experience**, select **Places** and **Local events**. 

10. Select **Save** and then select **OK** once the information is successfully saved.

11. Leave the Edge browser and all tabs open and proceed to the next exercise. 

 

## Task 4: Assign an Outlook Web App Policy to a user mailbox

Assigning an Outlook on the web mailbox policy to a mailbox controls the Outlook on the web (formerly known as Outlook Web App, or OWA) experience for the user. You can apply Outlook on the web mailbox policies to one or more mailboxes or remove the policy assignments in the Exchange admin center (EAC) or Exchange Online PowerShell.

In this task, you are going to assign the Outlook Web App policy that you created in the prior task to the mailboxes of three Adatum users who are part of Holly’s pilot project.

1. You should still be logged into LON-CL1 as the **Administrator** account with a password of **Pa55w.rd**; however, if the log-in screen appears, then log in now.  

2. If the **Exchange admin center** is still open in your browser from the prior task, then proceed to the next step; otherwise, if necessary, navigate to the **Office 365 home** page ([**https://portal.office.com**](https://portal.office.com/)), log in as **admin@M365xZZZZZZ.onmicrosoft.com,** navigate to the **Microsoft 365 admin center**, and then navigate to the **Exchange admin center**.

3. In the **Exchange admin center**, in the left-hand navigation pane, select **recipients.**

4. On the **recipients** page, the **mailboxes** tab should be selected by default; if not, then select it now.

5. The prior task indicated that by default, all user mailboxes are assigned the **OwaMailboxPolicy-Default** policy. Let’s verify this before assigning the new policy to one of the user mailboxes. In the list of mailboxes, select **Joni Sherman**. 

6. In the **Joni Sherman** detail pane on the right, scroll to the bottom of the pane and in the **Email Connectivity** section, select **View details**. 

7. An **Outlook Web App mailbox policy** window should appear that displays the Outlook Web App policy that was assigned to this mailbox. Verify the **OwaMailboxPolicy-Default** policy appears, and then select **Cancel**. 

8. You will now assign the Outlook Web App mailbox policy that you created in the prior task to the mailboxes of three users who are participating in Adatum’s pilot project. In the list of mailboxes, hold down the CTRL key and select the following user mailboxes:  

	- **Diego Siciliani**

	- **Joni Sherman**

	- **Patti Fernandez**

9. By selecting multiple users, a **Bulk Edit** pane appears on the right side of the screen. Scroll down in this pane to the **Outlook on the web** section and then select **Assign a policy**.

10. In the **bulk assign Outlook Web App policy** window that opens, select **Browse.**

11. A window appears that displays the list of Outlook on the Web App Policies. Select the **Test OWA Mailbox policy** that you created in the prior task, and then select **OK**. 

12. In the **bulk assign Outlook Web App policy** window, select **Save** to apply this policy to all three user mailboxes.

13. Select **OK** once the information is successfully saved.

14. You should now verify the **Test OWA Mailbox policy** was applied to the users’ mailboxes. You will use Joni’s mailbox for this test. In the list of mailboxes, select **Joni Sherman**. 

15. In the **Joni Sherman** detail pane on the right, scroll down to the bottom of the pane and in the **Email Connectivity** section, select **View details**. 

16. An **Outlook Web App mailbox policy** window should appear that displays the Outlook Web App policy that was assigned to this mailbox. Recall in the earlier step that Joni was originally assigned the **OwaMailboxPolicy-Default** policy. You should now verify that Joni is assigned the **Test OWA Mailbox policy**. Select **Cancel**. 

17. Leave the Edge browser and all tabs open and proceed to the next lab.


# End of Lab 6 
