<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import=" com.chainsys.model.Services" %>
     <%@ page import="java.util.ArrayList" %>
       <%@ page import="java.util.List" %> 
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

table{
	background-color:peachpuff;
	margin-top:100px;
	margin-left:40px;
	margin-right:2px;
}
</style>


</head>
<body>

<nav>
                <img class="logo" src="ebLogo.jpg" alt="Logo">
               <p style="color:white;font-size:300%;font-weight: 100;padding-left:100px; font-style:italic;">RP EB SERVICES AND ITS PAYMENT</p>
                <ul> 
                    <li><a href="http://localhost:8080/EBServices/">Home</a></li>
                    <li><a href="http://localhost:8080/EBServices/about.jsp">About Us</a></li>
                    <li><a href="">Contact Us</a></li>
                     <li><a href="CustomerRetriveBill" method="get">View Customer Bill Details</a></li>
                   <li><a href="http://localhost:8080/EBServices/">LogOut</a></li>
                    
                </ul>
            </nav>
      </header> 

        <table border="1">
    <thead>
    <tr>
    
    
    <th>Email Id</th>
    <th>Service Number</th>
    <th>Aadhaar Number</th>
    <th>Amount</th>
    <th>Reading Units</th>
    <th>Reading Taken Date</th>
    <th>Reading Due Date</th>
    <th>Service Type</th>

    <th>Address</th>  
    </tr>
    </thead>
    
<%List<Services> list=(ArrayList<Services>)request.getAttribute("list");
for(Services obj:list)
{
%>
<tr>
      <td><%=obj.getEmailId() %></td>
      <td><%=obj.getServiceNumber() %></td>
      <td><%=obj.getAadhaarNumber() %></td>
      <td><%=obj.getAmount() %></td>
      <td><%=obj.getReadingUnits() %></td>
      <td><%=obj.getReadingTakenDate() %></td>
      <td><%=obj.getReadingDueDate() %></td>
      <td><%=obj.getServiceType() %></td>
<%--  <td><%=obj.getStatus() %></td>--%>
      
  <td><%=obj.getAddress() %></td>
 </tr>     
 
<%
}
%>



</body>
</html>