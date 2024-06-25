<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.chainsys.model.Services" %>
     <%@ page import="java.util.ArrayList" %>
       <%@ page import="java.util.List" %> 

<!DOCTYPE html>
<html lang="xml:land">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
}

nav {
	background-color: brown;
	opacity: 0.9;
	width: 100%;
	padding: 15px;
	box-shadow: 0 2px 5px rgba(0,0,0,0.2);
	position: fixed;
	top: 0;
	left: 0;
	z-index: 1000;
}

nav img.logo {
	width: 60px;
	height: 60px;
	vertical-align: middle;
}

nav p {
	color: white;
	font-size: 24px;
	font-weight: 100;
	font-style: italic;
	margin-left: 260px;
	display: inline-block;
	vertical-align: middle;
}

nav ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	float: right;
}

nav ul li {
	display: inline-block;
	padding-left: 15px;
	cursor: pointer;
}

nav ul li a {
	color: gold;
	text-decoration: none;
	font-size: 18px;
}

.container {
	margin-top: 100px;
	padding: 20px;
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
}

.card {
	background-color: #fff;
	box-shadow: 0 0 10px rgba(0,0,0,0.1);
	border-radius: 5px;
	padding: 20px;
	margin: 10px;
	width: 300px;
}



.card p {
	font-size: 16px;
	margin-bottom: 5px;
}

.card form {
	margin-top: 10px;
}

.card form input[type="submit"], 
.card form button {
	color: brown;
	background-color: white;
	opacity: 0.9;
	padding: 5px 10px;
	cursor: pointer;
	border: 1px solid brown;
	border-radius: 3px;
}

.card form input[type="submit"]:hover, 
.card form button:hover {
	background-color: brown;
	color: white;
}

</style>

</head>
<body>
<header>
    <nav>
        <img class="logo" src="ebLogo.jpg" alt="Logo">
        <p>RP EB SERVICES AND ITS PAYMENT</p><br>
        <ul> 
            <li><a href="http://localhost:8080/EBServices/userHome.jsp">Home</a></li>
            <li><a href="http://localhost:8080/EBServices/about.jsp">About Us</a></li>
            <li><a href="">Contact Us</a></li>    
            <!-- <li><a href="PaymentProcessForm.jsp">Payment form</a></li>
            <li><a href="CustomerPaidPayment" method="post">Paid status</a></li>
            <li><a href="Complaint.jsp">Complaint Form</a></li> -->
            <li><a href="CustomerComplaintStatus" method="post">Complaint Status</a></li>
            <li><a href="http://localhost:8080/EBServices/">LogOut</a></li>
        </ul>
    </nav>
</header>

<div class="container">
    <% List<Services> list = (ArrayList<Services>) request.getAttribute("list");
    for (Services obj : list) { %>
    <div class="card">
        <p>Email Id: <%= obj.getEmailId() %></p>
        <p>Service Number: <%= obj.getServiceNumber() %></p>
        <p>Aadhaar Number: <%= obj.getAadhaarNumber() %></p>
        <p>Amount: <%= obj.getAmount() %></p>
        <p>Reading Units: <%= obj.getReadingUnits() %></p>
        <p>Reading Taken Date: <%= obj.getReadingTakenDate() %></p>
        <p>Reading Due Date: <%= obj.getReadingDueDate() %></p>
        <p>Service Type: <%= obj.getServiceType() %></p>
        <p>Address: <%= obj.getAddress() %></p>

        <form action="paymentProcessForm.jsp">
            <input type="hidden" name="serviceNumber" value="<%= obj.getServiceNumber() %>">
            <input type="hidden" name="amount" value="<%= obj.getAmount() %>">
            <input type="hidden" name="readingDueDate" value="<%= obj.getReadingDueDate() %>">
            <input type="submit" name="pay" value="Pay"> 
        </form>

        <form action="CustomerPaidPayment" method="post">
            <input type="hidden" name="serviceNumber" value="<%= obj.getServiceNumber() %>"> 
            <input type="submit" name="paidStatus" value="Paid Status"> 
        </form>

        <form action="complaint.jsp">
            <input type="hidden" name="serviceNumber" value="<%= obj.getServiceNumber() %>"> 
            <input type="hidden" name="emailId" value="<%= obj.getEmailId() %>"> 
            <input type="submit" name="complaint" value="Complaint Form"> 
        </form>

        <form action="CustomerComplaintStatus" method="post">
            <input type="hidden" name="serviceNumber" value="<%= obj.getServiceNumber() %>"> 
            <input type="submit" name="complaintStatus" value="Complaint Status"> 
        </form>
    </div>
    <% } %>
</div>

</body>
</html>
