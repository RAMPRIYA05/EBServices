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
           background-color:brown;
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
        
        ul{
            
            margin-left:40%;
            padding-left:5px;
          
        }
        button{
            color:brown;
            background-color:white;
            opacity:0.9;
            padding:2px;
        }
        input[type="submit"]
       {
            color:brown;
            background-color:white;
            opacity:0.9;
            padding:2px;
        }

.logo {
    size: 30px;
    height: 60px;
}
a{
    color:gold;
    text-decoration: none;
 
}

table{
	background-color:peachpuff;
	
	margin-left:110px;
	margin-right:2px;
}
h2{
margin-top:70px;
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
                    <li><a href=http://localhost:8080/EBServices/AdminHome.jsp>Home</a></li>
                    <li><a href="">About Us</a></li>
                    <li><a href="">Contact Us</a></li>
                    
                    <li><a href="CustomerRetriveBill" method="get">View Customer Bill Details</a></li>
                </ul>
            </nav>
        </header> 
<center><h2>Customer Details</h2></center>
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
    <th>Delete</th>
    <th>Update</th>
    <th>Enter Customer Bill</th>
    <th></th>
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
<form action="UpdateCustomerDetails" method="get">
  <input type="hidden" name="deleteemailId" value="<%=obj.getEmailId()%>">
  <input type="submit" name="delete" value="Delete">
</form>
</th>
        
        
<th>
<input type="hidden" name="emailId" value="<%=obj.getEmailId() %>">
<a href="UpdateAllCustomerName.jsp?editEmailId=<%=obj.getEmailId() %>">
<button type="button">Update</button></a>
</th> 

<th>
<form action="BillTable.jsp">
  
     <input type="hidden" name="emailId" value="<%=obj.getEmailId() %>"> 
     <input type="hidden" name="aadhaarNumber" value="<%=obj.getAadhaarNumber() %>"> 
     <input type="hidden" name="address" value="<%=obj.getAddress() %>"> 
     <input type="submit" name="Enter Customer Bill" value="Enter Customer Bill"> 
</form>
  
</th>
</tr>
<%
}
%>
</table>
    
</body>
</html>