<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="com.chainsys.model.Services"%>
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
           opacity:0.9;
           width:1250px;
           padding:15px;
        }

        .logo,ul,li,p{
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
        .logo {
    size: 30px;
    height: 60px;
}
a{
    color:gold;
    text-decoration:none;
 
}

table{
  background-color:peachpuff;
  margin-top:100px;
  margin-left:200px;
  
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
                    <li><a href="http://localhost:8080/EBServices/AdminHome.jsp">Home</a></li>
                    <li><a href="">About Us</a></li>
                    <li><a href="">Contact Us</a></li>    
                    
               </ul>
            </nav>
      </header> 

<table border="1">
    <thead>
    <tr>
        <th>Service Number</th>
        <th>Payment ID</th>
        <th>Payment Date</th>
        <th>Amount</th>
        <th>Account Number</th>
       <th>Payed Amount</th>
        <th>Reading Due Date</th>
        <th>Total Amount</th>
         
        </tr>
    </thead>

<%List<Services> list=(ArrayList<Services>)request.getAttribute("list");
for(Services obj:list)
{
%>
<tr> 
        <td><%=obj.getServiceNumber() %></td>
        <td><%=obj.getPaymentId() %></td>
        <td><%=obj.getPaymentDate() %>
        <td><%=obj.getAmount() %></td>
        <td><%=obj.getAccountNumber() %></td>
         <td><%=obj.getPayAmount() %></td>
        <td><%=obj.getReadingDueDate() %></td>
        <td><%=obj.getTotalAmount() %></td>
       
        
         <td>
                <button onclick="generatePaymentReceipt('<%= obj.getServiceNumber() %>','<%= obj.getPaymentDate() %>','<%= obj.getAmount() %>', 
                    '<%= obj.getAccountNumber() %>','<%=obj.getPayAmount() %>','<%= obj.getReadingDueDate() %>','<%= obj.getTotalAmount() %>')">
                Generate Receipt
                </button>
            </td>
        
</tr>
<%
}
%>
</table>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.3.1/jspdf.umd.min.js"></script>
<script>
    function generatePaymentReceipt(serviceNumber, paymentDate, amount, accountNumber,payAmount, readingDueDate,totalAmount)
    {
        const { jsPDF } = window.jspdf;
        const doc = new jsPDF();

        doc.text("Payment Receipt", 10, 10);
        doc.text("Service Number: " + serviceNumber, 10, 20);
        doc.text("Payment Date: " + paymentDate, 10, 30);
        doc.text("Amount: " + amount, 10, 40);
        doc.text("Account Number: " + accountNumber, 10, 50);
        doc.text("Customer Payed Amount: " + payAmount, 10, 60);
        doc.text("Reading Due Date: " + readingDueDate, 10, 70);
        doc.text("Total Amount: " + totalAmount, 10, 80);
        
        doc.save("receipt_" + serviceNumber + ".pdf");
    }
</script>


</body>
</html>