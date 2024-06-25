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


</head>
<body>


<table border="1">
    <thead>
    <tr>
    
    <th>Service Number</th>
    <th>Complaint Id</th>
    <th>Description</th>
    <th>Complaint Status</th>
    
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
    </tr>
<%
}
%>
</table> 
</body>
</html>