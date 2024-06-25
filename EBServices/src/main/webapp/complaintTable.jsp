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
        }
        nav{
           background-color:brown;
           opacity:0.9;
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
   margin-top:80px;
   margin-left:190px;
   width:800px;
   
}


}
</style>


</head>
<body>
     
      <header>
            <nav>
                <img class="logo" src="ebLogo.jpg" alt="Logo">
               <p style="color:white;font-size:300%;font-weight: 100;padding-left:100px; font-style:italic;">RP EB SERVICES AND ITS PAYMENT</p>
                <ul> 
                    <li><a href="http://localhost:8080/EBServices/userHome.jsp">Home</a></li>

                    <li><a href="http://localhost:8080/EBServices/about.jsp">About Us</a></li>
                    <li><a href="">Contact Us</a></li>
                    <li><a href="http://localhost:8080/EBServices/">LogOut</a></li>
                   
                </ul>
            </nav>
        </header> 
     
      <table border="1">
    <thead>
    <tr>
    
    <th>Service Number</th>
     <th>Complaint Id</th> 
    <th>Description</th>
    <th>Complaint Status</th>
    <th>Email Id</th>
    
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
</tr>
<%
}
%>
</table> 
</body>
</html>