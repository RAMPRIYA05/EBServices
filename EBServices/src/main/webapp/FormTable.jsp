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
</head>
<body>
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