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
	margin-top:60px;
	margin-left:250px;
	margin-right:5px;
}
</style>


</head>
<body>

    <nav>
                <img class="logo" src="EBLogo.jpg" alt="Logo">
               <p style="color:white;font-size:300%;font-weight: 100;padding-left:100px; font-style:italic;">RP EB SERVICES AND ITS PAYMENT</p>
                <ul> 
                    <li><a href="http://localhost:8080/EBServices/AdminHome.jsp">Home</a></li>
                    <li><a href="">About Us</a></li>
                    <li><a href="">Contact Us</a></li>
     
                   
                </ul>
            </nav>
<table border="1">
    <thead>
    <tr>
    
    <th scope="col">Service Number</th>
    <th scope="col">Complaint Id</th>
    <th scope="col">Description</th>
    <th scope="col">Complaint Status</th>
    <th scope="col">Email Id</th>
    <th scope="col">Update</th>
    
    </tr>
    </thead>
<%List<Services> list=(ArrayList<Services>)request.getAttribute("list");
for(Services obj:list)
{
%>
<tr>
        <td><%=obj.getServiceNumber() %></td>
        <td><%=obj.getComplaintId() %></td>
        <td><%=obj.getDescription() %></td>
        <td><%=obj.getComplaintStatus() %></td>
        <td><%=obj.getEmailId() %></td>
       
<th scope="col">
<%-- <input type="hidden" name="serviceNumber" value="<%=obj.getServiceNumber() %>">
<a href="UpdateComplaintStatus.jsp?editServiceNumber=<%=obj.getServiceNumber() %>">
<button style="color:brown;background-color:navajowhite;" type="button">Update</button></a> --%>

<input type="hidden" name="complaintId" value="<%=obj.getComplaintId() %>">
<a href="UpdateComplaintStatus.jsp?editComplaintId=<%=obj.getComplaintId() %>">
<button style="color:brown;background-color:navajowhite;" type="button">Update</button></a>
</th> 
        
       
        
        
        
             
</tr>


<%
}
%>
</table> 

</body>
</html>