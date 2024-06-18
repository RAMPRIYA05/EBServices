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

input[type="submit"], 
button {
	color:brown;
	background-color:white;
	opacity:0.9;
	padding:2px;
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
	margin-left:2px;
	margin-right:2px;
}
</style>


</head>
<body>
   <header>
    <nav>
                <img class="logo" src="EBLogo.jpg" alt="Logo">
               <p style="color:white;font-size:300%;font-weight: 100;padding-left:100px; font-style:italic;">RP EB SERVICES AND ITS PAYMENT</p>
                <ul> 
                    <li><a href="http://localhost:8080/EBServices/UserHome.jsp">Home</a></li>
                    <li><a href="">About Us</a></li>
                    <li><a href="">Contact Us</a></li>    
                    <li><a href="CustomerPayment.jsp">Payment</a></li>
                  
                </ul>
            </nav>
      </header> 
      
<table border="1">
    <thead>
    <tr>   
    <th scope="col">Email Id</th>
    <th scope="col">Service Number</th>
    <th scope="col">Aadhaar Number</th>
    <th scope="col">Amount</th>
    <th scope="col">Reading Units</th>
    <th scope="col">Reading Taken Date</th>
    <th scope="col">Reading Due Date</th>
    <th scope="col">Service Type</th>

    <th scope="col">Address</th>  
    <th scope="col">Pay</th>
    <th scope="col">PaidStatus</th>
    <th scope="col">Complaint</th>
    <th scope="col">Complaint Status</th>
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
      <%-- <td><%=obj.getStatus() %></td> --%>
      <td><%=obj.getAddress() %></td>
      
 <th scope="col">

 <form action="PaymentProcessForm.jsp">
                    <input type="hidden" name="serviceNumber" value="<%= obj.getServiceNumber() %>">
                  
                    <input type="hidden" name="amount" value="<%= obj.getAmount() %>">
                    
                    <input type="hidden" name="readingDueDate" value="<%= obj.getReadingDueDate() %>">
                    
                    <input type="submit" name="pay" value="Pay"> 
                </form>              
</th>

<th scope="col">
<form action="CustomerPaidPayment" method="post">
     <input type="hidden" name="serviceNumber" value="<%=obj.getServiceNumber() %>"> 
     <input type="submit" name="paidStatus" value="Paid Status"> 
</form>
 </th>
 
<th scope="col">
<form action="Complaint.jsp">
     <input type="hidden" name="serviceNumber" value="<%=obj.getServiceNumber() %>"> 
     <input type="hidden" name="emailId" value="<%=obj.getEmailId() %>"> 
     <input type="submit" name="complaint" value="Complaint Form"> 
</form>
</th> 

<th scope="col">
<form action="CustomerComplaintStatus" method="post">
     <input type="hidden" name="serviceNumber" value="<%=obj.getServiceNumber() %>"> 
     <input type="submit" name="complaintStatus" value="Complaint Status"> 
</form>
</th>  
 
</tr>     
 

 <%
}
%>
</table>


</body>
</html>