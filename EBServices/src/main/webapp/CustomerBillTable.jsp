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

<!-- <a href="PaymentProcessForm.jsp">Pay</a> -->
 <form action="PaymentProcessForm.jsp">
                    <input type="hidden" name="serviceNumber" value="<%= obj.getServiceNumber() %>">
                  
                    <input type="hidden" name="amount" value="<%= obj.getAmount() %>">
                    
                    <input type="submit" name="pay" value="Pay">
                </form>
</th>
      
 </tr>     
 
<%
}
%>


</body>
</html>