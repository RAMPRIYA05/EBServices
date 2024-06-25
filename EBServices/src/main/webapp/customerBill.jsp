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



.dropdown {
  color:gold;
  position:relative;
  display:inline-block;
}

.dropdown-content {
  display:none;
  position:absolute;
  background-color:white;
  min-width:60px;
  font-size:12px;
  box-shadow:0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index:1;
}

.dropdown-content a {
  color:black;
  
  text-decoration:none;
  display:block;
}

.dropdown-content a:hover {
  background-color:grey
}

.dropdown:hover .dropdown-content {
  display:block;
}

.dropdown:hover .dropbtn {
  background-color:white;
}

table{
	background-color:peachpuff;
	border-collapse: collapse;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
	border: 1px solid #ddd;
	margin-left:10px;
	margin-right:2px;
	margin-top:20px;
}

table thead {
        background-color: brown;
        color: white;
        
    }
table th, table td {
        padding: 7px;
        text-align: center;
        border: 1px solid #ddd;
    }
     table tr:nth-child(even) {
        background-color:white;
    
    }
    
    .buttons-atag.active{
 
    color:white;
    text-decoration:underline;
    
}

</style>
</head>
<body>
<nav>
                <img class="logo" src="ebLogo.jpg" alt="Logo">
               <p style="color:white;font-size:300%;font-weight: 100;padding-left:100px; font-style:italic;">RP EB SERVICES AND ITS PAYMENT</p>
                <ul> 
                    <li><a href="http://localhost:8080/EBServices/adminHome.jsp">Home</a></li>
                    <li><a href="http://localhost:8080/EBServices/about.jsp">About Us</a></li>
                    <li><a href="">Contact Us</a></li>
                   
                    <li><a class="buttons-atag active" href="CustomerRetriveBill" method="get">View Customer Bill Details</a></li>
                     <div class="dropdown">Complaint
                     <div class="dropdown-content">
                        
                        <a href="RectifiedComplaintAdmin" method="get">Pending Complaint</a>
                        <a href="PendingComplaintAdmin" method="get">Rectified Complaint</a>
                        
                     </div>
                     </div>
                     
                    
                    <li><a href="PaymentProcess" method="get">Paid Bills</a></li>
                    <li><a href="ReadCustomerDetails" method="get">Customer Details</a></li>
                   <li><a href="http://localhost:8080/EBServices/">LogOut</a></li>
                </ul>
            </nav>
            
            <form action="CustomerRetriveBill" method="post"> 
         <h2  style="margin-left:480px;padding:15px">Customer Bill Details</h2>
         <h4 style="margin-left:480px;padding:10px">Search:<input type="email" placeholder="Enter your Search EmailId" name="emailId" required><br></h4>
 </form>
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
     <%--  <td><%=obj.getStatus() %></td> --%>
      <td><%=obj.getAddress() %></td>
      

 <%-- <th scope="col">
  <form action="ComplaintStatus" method="post">
   <input type="hidden" name="serviceNumber" value="<%= obj.getServiceNumber() %>"> 
 
  <input type="submit" name="complaintStatus" value="Complaint Status"> 
  </form> 
  
  
 </th>
 
 
  <th scope="col">
  <form action="RectifiedComplaint" method="post">
   <input type="hidden" name="serviceNumber" value="<%= obj.getServiceNumber() %>"> 
 
  <input type="submit" name="rectifiedComplaint" value="RectifiedComplaint"> 
  </form> 
  
  
 </th>
       --%>
      
 </tr>     
 <%
}
%>
    

</table>

</body>
</html>