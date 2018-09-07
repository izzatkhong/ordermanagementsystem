###################
ORDER MANAGEMENT SYSTEM
###################

Build a Resource Order System using your own PHP MVC framework.  
The system must able to view list of orders, view the order details, add new order, edit order and delete order. 
The order details have the following information (store in database):
1.	Order Id
2.	Service Number
3.	Segment Group
4.	Product Name
5.	Order Status
6.	Remark
7.	State
Pre-requisite: Install XAMP (Apache, MySQL, PHP etc)

Business rules: 
1.	The system must be able to list all orders and display name, order id, service number, segment group and order status.
2.	The list should be able to sort either ascending ordescending when click on the table header.
3.	A Order Detail window will be popped up when click on the Order Id link.
4.	An Add New Order window will be popped up when click on the ‘Add New Order’ button.
5.	The system must be able to delete and modify the order detail including service number, segment group, product name, remark, order status and state.
6.	Order Id text box cannot be modified and must be disabled.
7.	System should not allowed user to proceed if Service Number, Remark, Order Status and State are empty.
8.	Successful message will appear after successful delete/edit action.  
9.	The system must be able to delete and modify the order detail including service number, segment group, product name, remark, order status and state.
10.	Order Id text box cannot be modified and must be disabled.
11.	System should not allowed user to proceed if Service Number, Remark, Order Status and State are empty.
12.	Successful message will appear after successful delete/edit action.  

************
Installation
************

1. Download & Install XAMPP
2. Download & Install SQLYog(for windows) 
	- https://github.com/webyog/sqlyog-community/wiki/Downloads
	 Download & Install Sequel Pro(for mac)
	- https://sequelpro.com/download#auto-start
3. Download Codeignitter & install to XAMPP
	- https://www.codeigniter.com/download
4. Download or clone project 
6. Open XAMPP run your apache web server & your Mysql Database
5. Create a folder and put all files in a folder (this will affect your URL)
6. Copy/Cut the folder to XAMPP htdocs file
7. Open your SQLYog or Sequel Pro and import database "order_management_2018-09-07.sql"
8. Open your browser and head to :
	http://127.0.0.1/{foldername}/ordermanagementsystem/







