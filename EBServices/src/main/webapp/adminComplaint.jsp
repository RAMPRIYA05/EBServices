<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="xml:land">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
         * {
	margin:0;
	padding:0;
}

nav {
	background-color: brown;
	opacity:0.9;
	width:1250px;
	padding:15px;
}

.logo, ul, li, p {
	display:inline;
}

li{
	padding-left:15px;
	cursor:pointer;
}

ul{
	margin-left:40%;
	padding-left:5px;
}



.logo{
	size:30px;
	height:60px;
}

a{
	color:gold;
	text-decoration:none;
}

.card-link {
    display:inline-block;
    
    margin-left:250px; 
    padding:30px;
    background-color:peachpuff;
    margin-top:180px;
    border:1px solid #ccc;
    border-radius:5px;
    color:brown;
    text-decoration:none;
    transition:background-color 0.3s ease;
}


</style>

</head>
<body>

<nav>
                <img class="logo" src="ebLogo.jpg" alt="Logo">
               <p style="color:white;font-size:300%;font-weight: 100;padding-left:100px; font-style:italic;">RP EB SERVICES AND ITS PAYMENT</p>
                <ul>
			<li><a href="http://localhost:8080/EBServices/adminHome.jsp">Home</a></li>
			<li><a href="">About Us</a></li>
			<li><a href="">Contact Us</a></li>
			<li><a href="PaymentProcess" method="get">Paid Bills</a></li>
			<li><a href="ReadCustomerDetails" method="get">Customer Details</a></li>
            <li><a href="http://localhost:8080/EBServices/">LogOut</a></li>

		</ul>
            </nav>

     <!-- <a style="color:blue;margin-left:350px;padding:50px;" href="RectifiedComplaintAdmin" method="get">Pending Complaint</a>
     <a style="color:blue;" href="PendingComplaintAdmin" method="get">Rectified Complaint</a> -->

<a class="card-link" href="RectifiedComplaintAdmin" method="get">Pending Complaint</a>
<a class="card-link" href="PendingComplaintAdmin" method="get">Rectified Complaint</a>


</body>
</html>