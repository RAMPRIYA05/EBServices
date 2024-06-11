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
                    <li><a href="http://localhost:8080/EBServices/UserHome.jsp">Home</a></li>
                    <li><a href="">About Us</a></li>
                    <li><a href="">Contact Us</a></li>
                    
                   
                    
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
    <th>Status</th>
    <th>Address</th>  
    <th>Pay</th>
    <th>Complaint</th>
    <th>Complaint Status</th>
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
      <td><%=obj.getStatus() %></td>
      <td><%=obj.getAddress() %></td>
      
 <th>

 <form action="PaymentProcessForm.jsp">
                    <input type="hidden" name="serviceNumber" value="<%= obj.getServiceNumber() %>">
                  
                    <input type="hidden" name="amount" value="<%= obj.getAmount() %>">
                    
                    <input type="submit" name="pay" value="Pay"> 
                </form>              
</th>
 
<th>
<form action="Complaint.jsp">
     <input type="hidden" name="serviceNumber" value="<%=obj.getServiceNumber() %>"> 
     <input type="hidden" name="emailId" value="<%=obj.getEmailId() %>"> 
     <input type="submit" name="complaint" value="Complaint Form"> 
</form>
</th> 

<th>
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