# Module 7 - Lab 6 - Exercise 1 - Manage Roles and Permission Policies

In this exercise you will continue in your role as Holly Dickson, Adatum’s
Messaging Administrator. Holly has been tasked with managing Microsoft 365 admin
roles and permission policies for Adatum’s Microsoft 365 messaging environment.
The CTO has asked Holly to create a new Microsoft 365 management role group that
allows an administrator to remotely access a mailbox without having the
password.

In this exercise Holly will access the Exchange admin center for Exchange Online
from her client computer (LON-CL1).

## Task 1 - Create an Admin Role

A management role group is a universal security group used in the Role Based
Access Control (RBAC) permissions model for Exchange Online. A management role
group simplifies the assignment of management roles to a group of users. All
members of a role group are assigned the same set of roles. After the role group
is added, the members of the role group are granted the permissions provided by
the roles assigned to the role group.

In this task, you are going to create a custom role group and then assign
multiple roles to it. In this task, you will create an admin role that allows an
administrator to remotely access a mailbox without having the password. You will
then assign two specific administrators to this role.

1.  Switch to the LON-CL1 VM and if necessary, log in as the **Administrator**
    with a password of **Pa55w.rd**.

2.  The Microsoft Edge browser should still be open from Lab 4 where you were
    logged into Microsoft 365 as Nestor Wilke and you had the Office 365
    Security & Compliance center open. You must log out of Microsoft 365 as
    Nestor and log back in as the MOD Administrator account so that Holly can
    manage the Exchange admin roles and permissions.  
      
    On the **Office 365 Security & Compliance** center tab, select Nestor’s
    picture in the upper right-hand corner of the screen, and in the menu that
    appears, select **Sign out**.

3.  Close all tabs in the Edge browser except for the **Sign out** tab.

4.  ‎On the **Sign out** tab, enter the following URL in the address bar:
    **https://portal.office.com**

5.  On the **Pick an account** window, select
    **admin\@xxxxxZZZZZZ.onmicrosoft.com** (where xxxxxZZZZZZ is the tenant
    prefix provided by your lab hosting provider). On the **Enter password**
    window, enter the tenant admin password provided by your lab hosting
    provider and then select **Sign in**.

6.  On the **Office 365 home** page, select the **Admin** icon in the column of
    Microsoft 365 app icons on the left-side of the screen.

7.  On the [](https://portal.office.com/)**Microsoft 365 admin center**, select
    **Show all** in the left-hand navigation pane, and then under **Admin
    centers**, select **Exchange.**

8.  In the **Exchange admin center** tab, in the left-hand navigation pane,
    select **permissions.**

9.  At the top of the **permissions** page, the **admin roles** tab should be
    displayed by default; if not, then select it now.

10. The **admin roles** window displays the existing role groups. Each of these
    groups has one or more roles assigned to it.  
      
    For example, the **Compliance Management** role group is highlighted by
    default as it’s the first group in the list. In the details pane on the
    right-hand side of the screen, it displays the properties for this role
    group, which includes the roles and members that have been assigned to it.
    In this task, you are going to create a custom role group and then assign
    multiple roles to it, as well as several existing members.  
    ‎  
    ‎Select the **plus (+) sign** icon on the menu bar to create a new role
    group.

11. In the **new role group** window, enter **Application Impersonation** in the
    **Name** field.

12. Enter (copy and paste) the following text into the **Description** field:
    **This role group allows an administrator to remotely access a mailbox
    without having the mailbox owner’s password.**

13. Under **Roles**, select the **plus (+) sign** icon to assign roles to the
    group.

14. In the **Select a Role** window, you want to add the following roles to this
    role group. The easiest way to do this is to select the first role
    (ApplicationImpersonation), then hold down the CTRL key and select the
    remaining two roles:

    -   **ApplicationImpersonation**

    -   **Mail Recipients**

    -   **UserApplication**

15. Select the **add -\&gt;** button, verify that all three roles appear in the
    field, and then select **OK**.

16. In the **new role group** window, scroll down the to the **Members** section
    and select the **plus (+) sign** icon to assign members to the group.

17. In the **Select Members** window, you want to add the following users to
    this role group. The easiest way to do this is to select the first user
    (Admin), then hold down the CTRL key and select the remaining user:

    -   **Admin**

    -   **TenantAdmins_-\#\#\#\#\#\#\#\#\#\#** (**\#\#\#\#\#\#\#** represents
        the tenant number at the end of the TenantAdmins group)

18. Select the **add -\&gt;** button, verify that both users appear in the
    field, and then select **OK**.

19. Select **Save**.

20. This returns you to the **admin roles** tab in the Exchange admin center.
    The new **Application Impersonation** role group should be displayed in the
    list of groups. This role group should be selected, and an **Application
    Impersonation** pane should appear on the right-side of the page that
    displays the details of this group.  
      
    Verify the information is correct; if any corrections are needed, select the
    **pencil (Edit)** icon in the menu bar and make the necessary corrections.

    **Important:** Even though the **Application Impersonation** group appears
    in the list of role groups, it typically takes 24 to 48 hours to fully
    propagate changes to the permission configuration.

21. Leave the Exchange Admin Center open and proceed to the next task.

## Task 2 - Manage an Admin Role

In the prior task, you created a custom role group and added roles to the role
group. In this task, you are going to add a user to a role group.

1.  You should still be logged into LON-CL1 as the **Administrator** account
    with a password of **Pa55w.rd**; however, if the log-in screen appears, then
    log in now.

2.  The **Exchange admin center** for Exchange Online should still be open in
    your Edge browser. You should still be on the **permissions** page, which
    should be displaying the **admin roles** tab from the prior task.  
      
    In the list of admin role groups, select the **Discovery Management** role
    group.

3.  Select the **pencil (Edit)** icon to on the menu bar to edit this group.

4.  In the **Discovery Management** window, scroll down to the **Members**
    section and then select the **plus (+) sign** icon to add new members to
    this role group.

5.  In the **Select Members** window, select **admin** (this is the MOD
    Administrator user account).

6.  Select the **add -\&gt;** button and then select **OK**.

7.  Select **Save**.

8.  This returns you to the **admin roles** tab on the **permissions** page. The
    **Discovery Management** role group should be displayed in the list of
    groups. This role group should be selected, and a **Discovery Management**
    pane should appear that displays the details of this group.  
      
    Verify the **MOD Administrator** user account appears under the list of
    **Members**; if any corrections are needed, select the **pencil (Edit)**
    icon in the menu bar and make the necessary corrections.

9.  Leave the Exchange Admin Center open in your Edge browser and proceed to the
    next task.

## Task 3 -Create an Outlook Web App Policy

A mobile device mailbox policy allows you to apply a common set of security and
mobile device settings to a group of users. You can create multiple mobile
device mailbox policies. Each recipient in your organization must have a mobile
device mailbox policy assigned to them. When you install Microsoft Exchange
Server 2013 or later, a default mobile device mailbox policy is created, and new
users are automatically assigned this policy.

In this task, you will create a new Outlook Web App policy that will later be
assigned to several test users in Holly’s pilot project.

1.  You should still be logged into LON-CL1 as the **Administrator** account
    with a password of **Pa55w.rd**; however, if the log-in screen appears, then
    log in now.

2.  The **Exchange admin center** for Exchange Online should still be open in
    your Edge browser. You should still be on the **permissions** page from the
    prior task. At the top of the **permissions** page, select the **Outlook Web
    App policies** tab.

3.  In the list of Outlook Web App policies, the **OwaMailboxPolicy-Default**
    policy is the only current policy. By default, this policy is assigned to
    all user mailboxes.

4.  To create a new Outlook Web App policy, select the **plus (+) sign** icon on
    the menu bar.

5.  In the **new Outlook Web App mailbox policy** window, enter **Test OWA
    Mailbox policy** in the **Policy name** field.

6.  In the **Communication Management** group, all features are selected by
    default. Select the **Unified Messaging** check box to unselect it.

7.  In the **Information management** group, un-check **Journaling**.

8.  In the **User experience** group, select **Places** and **Local events**.

9.  Select **Save** and then select **OK** once the information is successfully
    saved. Your new custom policy should appear in the list of Outlook Web App
    policies.

10. Leave the Edge browser and all tabs open and proceed to the next exercise.

## Task 4: Assign an Outlook Web App Policy to a user mailbox

Assigning an Outlook on the web mailbox policy to an Exchange Online mailbox
controls the Outlook on the web (formerly known as Outlook Web App, or OWA)
experience for the user. You can apply Outlook on the web mailbox policies to
one or more mailboxes or remove the policy assignments in the Exchange admin
center (EAC) or Exchange Online PowerShell.

In this task, you are going to assign the Outlook Web App policy that you
created in the prior task to the mailboxes of three Adatum users who are part of
Holly’s pilot project.

1.  You should still be logged into LON-CL1 as the **Administrator** account
    with a password of **Pa55w.rd**; however, if the log-in screen appears, then
    log in now.

2.  The **Exchange admin center** for Exchange Online should still be open in
    your Edge browser. In the left-hand navigation pane, select **recipients.**

3.  On the **recipients** page, the **mailboxes** tab should be selected by
    default; if not, then select it now.

4.  The prior task indicated that by default, all user mailboxes are assigned
    the **OwaMailboxPolicy-Default** policy. Let’s verify this before assigning
    the new policy to one of the user mailboxes. In the list of Microsoft 365
    user account mailboxes that were created by your lab hosting provider,
    select **Joni Sherman**.

5.  In the **Joni Sherman** detail pane on the right, scroll to the bottom of
    the pane and in the **Email Connectivity** section, select **View details**.

6.  An **Outlook Web App mailbox policy** window should appear that displays the
    Outlook Web App policy that was assigned to this mailbox. Verify the
    **OwaMailboxPolicy-Default** policy appears, and then select **Cancel**.

    -   You will now assign the Outlook Web App mailbox policy that you created
        in the prior task to the mailboxes of three users who are participating
        in Adatum’s pilot project.  
          
        In the list of mailboxes, select **Diego Siciliani** and then hold down
        the CTRL key and select **Joni Sherman** and then **Patti Fernandez.**

7.  By selecting multiple users, a **Bulk Edit** pane appears on the right side
    of the screen. Scroll down in this pane to the **Outlook on the web**
    section and then select **Assign a policy**.

8.  In the **bulk assign Outlook Web App policy** window that opens, select
    **Browse.**

9.  A window appears that displays the list of Outlook on the Web App Policies.
    Select the **Test OWA Mailbox policy** that you created in the prior task
    and then select **OK**.

10. In the **bulk assign Outlook Web App policy** window, select **Save** to
    apply this policy to all three user mailboxes.

11. Select **OK** once the information is successfully saved.

12. You should now verify the **Test OWA Mailbox policy** was applied to the
    users’ mailboxes. You will use Joni’s mailbox for this test. In the list of
    mailboxes, select **Joni Sherman**.

13. In the **Joni Sherman** detail pane on the right, scroll down to the bottom
    of the pane and in the **Email Connectivity** section, select **View
    details**.

14. An **Outlook Web App mailbox policy** window should appear that displays the
    Outlook Web App policy that was assigned to this mailbox. Recall in the
    earlier step that Joni was originally assigned the
    **OwaMailboxPolicy-Default** policy. You should now verify that Joni is
    assigned the **Test OWA Mailbox policy**. Select **Cancel**.

15. Leave the Edge browser and all tabs open and proceed to the next lab.

# End of Lab 6
