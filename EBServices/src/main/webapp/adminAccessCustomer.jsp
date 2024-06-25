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
        *{
            margin:0;
            padding:0;
            box-sizing: border-box;
            
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

h4{
    margin-left:450px;
    padding:20px;
}

table{
	background-color:peachpuff;
	border-collapse: collapse;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
	border: 1px solid #ddd;
	margin-left:35px;
	margin-right:2px;
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
    

h2{
margin-top:30px;
margin-left:500px;
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

.buttons-atag.active{
 
    color:white;
    text-decoration:underline;
    
}

 
 
 
 
 </style>
    


</head>
<body>
      
    <header>
            <nav>
                <img class="logo" src="ebLogo.jpg" alt="Logo">
               <p style="color:white;font-size:300%;font-weight: 100;padding-left:100px; font-style:italic;">RP EB SERVICES AND ITS PAYMENT</p>
                <ul> 
                    <li><a href=http://localhost:8080/EBServices/adminHome.jsp>Home</a></li>
                    <li><a href="http://localhost:8080/EBServices/about.jsp">About Us</a></li>
                    <li><a href="">Contact Us</a></li>
                    <li><a class="buttons-atag active" href="ReadCustomerDetails" method="get">Customer Details</a></li>
                    <li><a href="CustomerRetriveBill" method="get">View Customer Bill Details</a></li>
                <li><a href="PaymentProcess" method="get">Paid Bills</a></li>
                
                <div class="dropdown">Complaint
                     <div class="dropdown-content">
                        
                        <a href="RectifiedComplaintAdmin" method="get">Pending Complaint</a>
                        <a href="PendingComplaintAdmin" method="get">Rectified Complaint</a>
                        
                     </div>
                     </div>
                
                <li><a href="http://localhost:8080/EBServices/">LogOut</a></li>
                </ul>
            </nav>
        </header> 
<h2>Customer Details</h2>

<form action="ReadCustomerDetails" method="post"> 
         
         <h4>Search:<input type="email" placeholder="Enter your Search EmailId" name="emailId" required><br></h4>
 </form>
     <table border="1">
    <thead>
    <tr>
    
    <th scope="col">Name</th>
    <th scope="col">Email Id</th>
    <th scope="col">Address</th>
    <th scope="col">District</th>
    <th scope="col">State</th>
    <th scope="col">Phone Number</th>
    <th scope="col">Aadhaar Number</th>
    <th scope="col">Delete</th>
    <th scope="col">Update</th>
    <th scope="col">Enter Customer Bill</th>
    
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
        
<th scope="col">
<form action="UpdateCustomerDetails" method="get">
  <input type="hidden" name="deleteemailId" value="<%=obj.getEmailId()%>">
  <input type="submit" name="delete" value="Delete">
</form>
</th>
        
        
<th scope="col">
<input type="hidden" name="emailId" value="<%=obj.getEmailId() %>">
<a href="updateAllCustomerName.jsp?editEmailId=<%=obj.getEmailId() %>">
<button type="button">Update</button></a>
</th> 

<th scope="col">
<form action="billTable.jsp">
  
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