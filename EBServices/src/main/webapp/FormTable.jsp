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
	margin: 0;
	padding: 0;
}

nav {
	background-color:brown;
	opacity:0.9;
	width: 1250px;
	/* color:blueviolet; */
	padding: 15px;
}

.logo, ul, li, p {
	display: inline;
}

li {
	padding-left: 15px;
	cursor: pointer;
}



ul {
	margin-left: 40%;
	padding-left: 5px;
}

.submit {
	margin-top: 10px;
	margin-left: 90px;
}

.customer-details {
	background-color:chocolate;
	color: white;
	padding: 20px;
	margin-top: 50px;
	margin-bottom: 20px;
	width: 350px;
	margin-left: 450px;
	margin-right: 250px;
	opacity: 0.8;
}

.details {
	padding: 20px;
	width: 300px;
	margin-buttom: 10px;
}

.logo {
	size: 30px;
	height: 60px;
}

a {
	color: gold;
	text-decoration: none;
}

h2{
    color:white;
    text-align:center;
}
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
                   
                </ul>
            </nav>
         </header>
     
    
    
<form>

<div class="customer-details">
<h2>Profile</h2>
<%List<Services> list=(ArrayList<Services>)request.getAttribute("list");
for(Services obj:list)
{
%>
  <div class="details">
        Name:<%=obj.getName() %><br>
        Email Id:<%=obj.getEmailId() %><br>
        Address:<%=obj.getAddress() %><br>
        District:<%=obj.getDistrict() %><br>
        State:<%=obj.getState() %><br>
        Phone Number:<%=obj.getPhoneNumber() %><br>
        Aadhaar Number:<%=obj.getAadhaarNumber() %><br>
        
  </div>
  <div class="submit">
      <form action="UserDeleteServlet" method="get">
      <input type="hidden" name="deleteemailId" value="<%=obj.getEmailId()%>">
      <input type="submit" style="color:brown;background-color:navajowhite;" name="delete" value="Delete">
      </form>

      <input type="hidden" name="emailId" value="<%=obj.getEmailId() %>">
      <a href="UpdateName.jsp?editEmailId=<%=obj.getEmailId() %>">
      <button style="color:brown;background-color:navajowhite;" type="button">Update</button></a>
   </div>
</div>
        

<%
}
%>
</form>

</body>
</html>