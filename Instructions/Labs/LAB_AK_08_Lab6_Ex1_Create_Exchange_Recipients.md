# Module 8 – Lab 6 - Exercise 1 – Create Exchange Recipients

Adatum Corporation plans to create a hybrid Exchange deployment. They have Exchange Server 2019 and their on-premises user mailboxes installed on their on-premises Exchange Server (LON-EX1). Now that they are implementing Microsoft 365, they can also create user accounts and mailboxes in Exchange Online. 

In your role as Holly Dickson, Adatum’s Enterprise Administrator, you are interested in seeing how mailboxes are maintained in both Adatum’s on-premises Exchange Server deployment as well as its new Microsoft 365 deployment. In the earlier lab on Implementing ActiveSync, you created on-premises user mailboxes for Holly, Paul Wimmer, and Jessica Hofer. Each mailbox was created in the on-premises **adatum.com** domain on LON-EX1. In this lab, you will create an Exchange Online user mailbox for Holly, which will be added to the **M365xZZZZZZ.onmicrosoft.com** domain (where ZZZZZZ is the tenant ID provided by your lab hosting provider).

## Task 1 -  Create a Cloud Recipient

In this task you will add a user account in Microsoft 365, which will create a mailbox for the user in Exchange Online. You will perform this task in the LON-CL1 VM. 

1. You should still be logged into LON-CL1 as the **Administrator** account; if necessary, log in as the **Administrator** with a password of **Pa55w.rd**. 

2. If the **Microsoft 365 admin center** tab is still open in your browser from the prior task, then proceed to the next step; otherwise, if necessary, navigate to the **Office 365 home** page ([**https://portal.office.com**](https://portal.office.com/)), log in as **admin@M365xZZZZZZ.onmicrosoft.com,** and then navigate to the **Microsoft 365 admin center.**

3. In the **Microsoft 365 admin center**, select **Users** in the left-hand navigation pane, and then select **Active Users.** 

4. In the **Active Users** window, note the 10 existing user accounts in the **Active Users** list. These accounts were added to Adatum’s Microsoft 365 tenant by your lab hosting provider. Since Holly is not familiar with adding a new user in Microsoft 365, she wants to create a user account for herself.   
‎  
‎In the menu bar that appears above the list of active users, select **Add a user.**

5. In the **Set up the basics** window, enter the following information: <br/>

	- First name: **Holly**

	- Last name: **Dickson**

	- Display name: When you tab into this field, **Holly Dickson** will appear.

	- Username: **Holly** 

	**IMPORTANT:** To the right of the **Username** field is the domain field. It will be prefilled with the **M365xZZZZZZ.onmicrosoft.com** cloud domain (where ZZZZZZ is your tenant ID provided by your lab hosting provider).

	After configuring this field, Holly’s username should appear as: **Holly@M365xZZZZZZ.onmicrosoft.com**

	- Password settings: select the **Let me create the password** option

	- Password: **Pa55w.rd**

	- Clear (uncheck) the **Require this user to change their password when they first sign in** check box

6. Select **Next**.

7. In the **Assign product licenses** window, enter the following information: <br/>

	- Select location: **United States**

	- Licenses: Under **Assign user a product license**, select **Office 365 E5**

8. Select **Next.**

9. In the **Optional settings** window, select the drop-down arrow to the right of **Roles (User: no administration access).**

10. In the **Roles information** that appears, select **Admin center access**. By doing so, the most commonly used Microsoft 365 administrator roles are displayed below this option and are available to be assigned.<br/>

	**Note:** All the admin roles will be displayed if you select **Show all by category**. For Holly, you do not need to view all the admin roles by category, since Holly will be assigned the Exchange Admin role that appears in the list of most commonly used roles. If you are interested in seeing what additional admin roles are available, select **Show all by category**.

11. Select **Exchange admin** and then select **Next**.

12. On the **Review and finish** window, review your selections. If anything needs to be changed, select the appropriate **Edit** link and make the necessary changes. Otherwise, if everything is correct, select **Finish adding**.

13. On the **Holly Dickson added to active users** page, select **Show** that appears next to the string of asterisks for the **Password**. Verify that the password is **Pa55w.rd** and then select **Close.** <br/>

	**Note:** If you accidentally entered a different password, then once you return to the **Active Users** page, you will need to select the **Reset a password** icon (the key icon that appears when you hover over Holly's account) to change her password to the correct value.

14. If a window appears asking whether you want to respond to a survey on your experience, select **Cancel**.

15. You should now see Holly Dickson’s user account in the **Active users** list. 

16. In the **Microsoft 365 admin center**, in the left-hand navigation bar, select the **Show all** to display all the navigation menu options. 

17. In the left-hand navigation pane, under the **Admin centers** group, select **Exchange**. This will open the EAC for Exchange Online in a new tab in your browser.

18. In the **Exchange Admin Center**, in the left-hand navigation pane, select **recipients.**

19. On the **recipients** page, the **mailboxes** tab is displayed by default. In the list of recipient mailboxes, you should see the Exchange Online mailbox that was automatically created for Holly when you created her Microsoft 365 user account.

20. Leave your Edge browser open and proceed to the next exercise.


# Proceed to Lab 6 - Exercise 2
