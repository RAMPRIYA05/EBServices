<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import=" com.chainsys.model.Services" %>
     <%@ page import="java.util.ArrayList" %>
     <%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
        *{
            margin:0;
            padding:0;
        }
        nav{
           background-color:black;
           opacity:0.8;
           width:1250px;
           /* color:blueviolet; */
           padding:15px;
        }

        .logo,ul,li,p{
            display: inline;
            
        }
        li{
            padding-left:15px;
            cursor:pointer;
           
        }
        li.hover{
            color:red;
        }
        ul{
            
            margin-left:40%;
            padding-left:5px;
          
        }
        button{
            color:white;
            background-color: black;
            opacity:0.9;
        }
        

.logo {
    size: 30px;
    height: 60px;
}
a{
    color:gold;
    text-decoration: none;
 
}
body{
    background-repeat: no-repeat;
    background-image:url(EBBackGroundImage.jpg);
    background-attachment: fixed;  
    background-size: cover;
} 

.buttons-atag.active{
 
    color:white;
    text-decoration: underline;
    
}

}
</style>

</head>
<body>

<nav>
                <img class="logo" src="EBLogo.jpg" alt="Logo">
               <p style="color:white;font-size:300%;font-weight: 100;padding-left:100px; font-style:italic;">RP EB SERVICES AND ITS PAYMENT</p>
                <ul> 
                    <li><a href="http://localhost:8080/EBServices/">Home</a></li>
                    <li><a href="">About Us</a></li>
                    <li><a href="">Contact Us</a></li>
                    <li><a href="CustomerRetriveBill" method="get">View Bill</a></li> 
                    <li><a href="">Pay Bill</a></li> 
                </ul>
            </nav>
        </header> 
     <table border="1">
    <thead>
    <tr>
    
    <th>Name</th>
    <th>Email Id</th>
    <th>Address</th>
    <th>District</th>
    <th>State</th>
    <th>Phone Number</th>
    <th>Aadhaar Number</th>
    </tr>
    </thead>

<%List<Services> list=(ArrayList<Services>)request.getAttribute("list");
for(Services obj:list)
{
%>
<tr>
        <td><%=obj.getName() %></td>
        <td><%=obj.getEmailId() %></td>
        <td><%=obj.getAddress() %></td>
        <td><%=obj.getDistrict() %></td>
        <td><%=obj.getState() %></td>
        <td><%=obj.getPhoneNumber() %></td>
        <td><%=obj.getAadhaarNumber() %></td>
        
<th>
<form action="UserDeleteServlet" method="get">
  <input type="hidden" name="deleteemailId" value="<%=obj.getEmailId()%>">
  <input type="submit" style="color:brown;background-color:navajowhite;" name="delete" value="Delete">
</form>
</th>
   
 <th>
<input type="hidden" name="emailId" value="<%=obj.getEmailId() %>">
<a href="UpdateName.jsp?editEmailId=<%=obj.getEmailId() %>">
<button style="color:brown;background-color:navajowhite;" type="button">Update</button></a>
</th>     
        
</tr>
<%
}
%>
</table>

</body>
</html>