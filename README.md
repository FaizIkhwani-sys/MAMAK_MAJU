## GROUP MEMBERS : 
### MOHAMAD FAIZ IKHWANI HAKIMI BIN MD FAZLI (1712163) 
### MUHAMAD DANIAL BIN MOHAMAD RADZI (1714493)
## TITLE : MAMAK MAJU ORDER SYSTEM

### **INTRODUCTION**
We are developing an mobile application to change from manual ordering system to self ordering system when the customer wants to eat at mamak restaurant. This will helps the restaurant to have a systematic ordering system and data storing system so that they can track their data when they need it for example, customer’s order data. This system will reduce the workers needed for that restaurant and it will also make the ordering smooth because customers will have their own time to make order which will make the customer feels comfortable at the restaurant. 

### **OBJECTIVES**
The main objectives of this project is to:

- 	Make the ordering flow more systematic
- 	Change the database management from manual to digital
- 	Reduce the amount of workers in the restaurant
- 	Make the customers feel more comfortable at the restaurant

### **FEATURES AND FUNCTIONALITIES**
In this mobile application, all menu that are available at the mamak restaurant will be displayed for example Tandoori Chicken and Naan Cheese. Other than that, in this mobile application will need the user which is the admin of the restaurant to authenticate themselves when they want to check the summary of order and for the accountant to check the bills when customers want to pay. This requires the Firebase Cloud Firestore to authenticate the admin where they will insert the username(email) and password. Lastly, this mobile application will have all functions that will enable customers to order food from their table.

### **SCREEN NAVIGATION AND WIDGETS**
1.	Main Page
- a.	Customers : Input table number
- b.	Admin : Login
2.	Dashboard
- a.	Display Menus
- b.	Select Menus
3.	Order Page
- a.	Order Menus
- b.	Suggestion Related Menus
- c.	Quantities
- d.	Submit Order
4.	Admin Page
- a.	Fetch Order Data

### **SEQUENCE DIAGRAM**
![sequenceDiagram](https://user-images.githubusercontent.com/69358635/103472092-123f5000-4dc4-11eb-94ee-13e3504e8cf3.png)

### **PROJECT DELEGATION**
1. MOHAMAD FAIZ IKHWANI HAKIMI BIN MD FAZLI (1712163)
- dashboardpage.dart page
- submitpage.dart page
- tandooripage.dart page
- Constant 
2. MUHAMAD DANIAL BIN MOHAMAD RADZI (1714493)
- firebase
- favouritetab.dart page
- recommended.dart page
- foodtab.dart page
 
### **REFERENCES**
- Flutter Tutorial – Cloud Firestore | Flutter Firestore CRUD | Flutter Firestrore Tutorial; https://www.youtube.com/watch?v=lyZQa7hqoVY
- Flutter Development; https://flutter.dev/docs/development 

