# Mod 1 – Lab 1 – Exercise 1 – Create Connectors

In this exercise, you will take on the persona of Holly Dickson, Adatum’s Enterprise Administrator. As part of her pilot project for Adatum’s Exchange deployment, Holly wants to begin by creating custom send and receive connectors in her on-premises Exchange Server using the on-premises Exchange admin center. 

Exchange uses connectors to enable incoming and outgoing mail flow on Exchange servers and between services in the transport pipeline on the local Exchange server. In this lab you will log into the Exchange Server (LON-EX1) VM and create custom Receive and Send connectors using the Exchange Admin Center (EAC).

As you complete each task, you should leave the EAC open in your browser for the next lab. This will save you from having to open the EAC at the start of each lab.

## Task 1 - Obtain Your Office 365 Credentials

Once you launch the lab, a free trial tenant will be automatically created for you to access Azure in the Microsoft Virtual Lab environment. This tenant will be automatically assigned a unique username and password. You must retrieve this username and password so that you can sign into Azure within the Microsoft Virtual Lab environment

1. Because this course can be offered by learning partners using any one of several authorized lab hosting providers, the actual steps involved to retrieve the UPN name, network IP address, and tenant ID associated with your tenant may vary by lab hosting provider. Therefore, your instructor will provide you with the necessary instructions on how to retrieve this information for your course. <br/>

	You should write down the following information (provided by your instructor) for later use:

	- **Tenant suffix ID.** This ID is for the onmicrosoft.com accounts that you will use to sign into Microsoft 365 throughout the labs. This is in the format of **{username}@M365xZZZZZZ.onmicrosoft.com**, where ZZZZZZ is your unique tenant suffix ID provided by your lab hosting provider. Record this ZZZZZZ value for later use. When any of the lab steps direct you to sign into the Office 365 or Microsoft 365 portals, you must enter the ZZZZZZ value that you obtained here.  
‎
	- **Tenant password.** This is the password for the admin account provided by your lab hosting provider.


## Task 2: Create a Custom Receive Connector

In this task, you will use the Exchange admin center on the Exchange Server VM (LON-EX1) to create a custom receive connector.

1. Switch to the Exchange Server VM (LON-EX1) and log on as Adatum’s **A****dministrator** account with a password of **Pa55w.rd**. 

2. After logging in, the **Server Manager** application will automatically open. Select the **X** in the upper-right corner of the screen to close it.

3. Holly wants to create custom connectors using the on-premises **Exchange Admin Center (EAC)**. To do so, select the **Windows** icon on the taskbar, and in the Windows menu select the **Microsoft Exchange Server 2019** group. In the program group, select **Exchange Administrative Center**. 

4. This will open **Internet Explorer**, which will attempt to access the EAC. IE will display an error page indicating **This site is not secure**. Select **More information,** which displays a message indicating **The hostname in the website’s security certificate differs from the website you are trying to visit**.   <br/>
 
	You received this message because a certificate for the EAC was not needed for this VM training environment. Therefore, select **Go on to the webpage (not recommended)**. 

5. Maximize your browser window, and then log into the EAC as **adatum\Administrator** and password **Pa55w.rd.**

6. In the **Exchange admin center**, in the left-hand navigation pane, select **mail flow.**

7. You will begin by creating a custom receive connector. On the menu bar at the top of the page, select **receive connectors**.

8. On the **receive connectors** page, select the **plus sign** **(+)** icon on the menu bar above the list of existing receive connectors to add a new connector.

9. In the **new receive connector** window that appears, enter **NewReceiveConnector1** in the **Name** field.

10. Under **Role**, select **Frontend Transport**.

11. Under **Type,** select **Internet (For example, to receive internet mail)**, and then select **Next**.

12. This returns a **new receive connector** window in which you can update **Network Adapter Bindings** for the new receive connector. The purpose of this page is to identify the accepted IP addresses and port that are bound to this new receive connector. In other words, this new receive connector will only receive email from the IP address and port identified here before in turn sending it to the Exchange Server.  
‎  
‎**Note:** In a real-world environment, some companies will create a receive connector that receives email from all IP addresses and a specific port, which in effect forces their email filters to do the heavy lifting of validating email from specific IP addresses for possible threats. Conversely, other companies that may have been hit by known threats will use custom receive connectors to only accept email from specific IP addresses that they know are safe.   
‎  
‎When you create a new receive connector, you can select the IP addresses for that connector from the following options:  
‎  
‎- All available IPv4 addresses  
‎- All available IPv6 addresses  
‎- A specific IPv4 or IPv6 address  
‎  
‎When creating a new receive connector, this page displays the default combination of **All available IPv4** addresses and **Port 25** .   
‎  
‎Select **Finish** to assign this default combination of IP addresses and port number to the new receive connector.  
‎  
‎**IMPORTANT:** By selecting **Finish**, you will receive an **Error** message. We purposely had you select **Finish** so that you can see this error, which indicates that the **Default Frontend LON-EX1** receive connector is already configured to accept all available IPv4 addresses (in other words, IP addresses 0.0.0.0 through 255.255.255.255) for Port 25. Therefore, this new receive connector that you are creating must have a unique combination of IP address and port number that is different from any existing receive connectors.   
‎  
‎Select **OK** to close the **Error** message.

13. Select the **pencil (edit)** icon to edit the IP address and port number that will be linked to this new receive connector.

14. In the **edit IP address** window, under the **Address** field, select the **Specify an IPv4 address or an IPv6 address** option. 

15. Adatum’s IT Administrator has identified **172.16.0.11** as the IP address he wants bound to this receive connector (for port 25); therefore, enter this value in the **Address** field.

16. Leave the **Port** at **25**, and then select **Save**. Note how the Network adapter binding for this new receive connector now points to this IP address and port number.   
‎  
‎**Note:** All email sent from the Internet and from IP address 172.16.0.11 through port 25 will be received by this new connector, which in turn will send it to the Exchange Server. 

17. Select **Finish**. Your new receive connector should appear in the list of receive connectors.

18. Leave the Exchange Admin Center open in your browser for the next task.

 

## Task 3: Create a Custom Send Connector

You will now create a custom send connector in Adatum’s on-premises Exchange Server (LON-EX1) using the on-premises EAC.

1. You should still be logged into LON-EX1 as the **Administrator**, and you should have the EAC open in Internet Explorer; if not, then do so now.

2. In the **Exchange admin center**, you should still be displaying the **mail flow** tab from the left-hand navigation pane. On the menu bar at the top of the page, select **send connectors**.

3. On the **send connectors** window, select the **plus (+) sign** to add a new send connector.

4. In the **new send connector** window, enter **NewSendConnector1** in the **Name** field.

5. Under **Type,** select **Internet (For example, to send internet email)**, and then select **Next**.

6. This returns a **new send connector** window in which you can update **Network settings** for the new send connector. Select the **MX record** **associated with recipient domain** option and then select **Next**.

7. This returns a **new send connector** window in which you can update the connector’s **Address space**. Select the **plus (+) sign** to add a new address space record.

8. In the **add domain** window, you must enter the **Full Qualified Domain Name (FQDN)**.   <br/>

	**Note:** In Task 1 of this exercise, your instructor provided instruction on how to retrieve your tenant email address. Your FQDN is the value to the right of the @ sign in the **Tenant Email** (for example, **M365xZZZZZZ.onmicrosoft.com**, where ZZZZZZ is your tenant ID). Enter your FQDN in the **Full Qualified Domain Name (FQDN)** field.

9. Leave the value of the **Cost** field to **1**, and then select **Save.**

10. Your new **Address space** record for this send connector should now be displayed. Select **Next**.

11. This returns a **new send connector** window in which you can update the **Source server** for the new send connector. Select the **plus (+) sign** to add a new Source server record.

12. In the **Select a Server** window, you want to select your **Mail server**, which in this virtual lab environment is your **LON-EX1** VM. Since the LON-EX1 server is selected by default, select the **add -&gt;** button, and then select **OK**.

13. Your LON-EX1 VM should now appear in the Source server list for this new send connector. Select **Finish**.

14. Leave your browser open and the EAC tab open and proceed to the next exercise.


# END OF LAB 1  

