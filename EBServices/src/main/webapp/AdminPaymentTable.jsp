<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="com.chainsys.model.Services"%>
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
	border-collapse: collapse;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
	border: 1px solid #ddd;
	margin-left:85px;
	margin-right:2px;
	margin-top:30px;
	
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
               <img class="logo" src="EBLogo.jpg" alt="Logo">
               <p style="color:white;font-size:300%;font-weight: 100;padding-left:100px; font-style:italic;">RP EB SERVICES AND ITS PAYMENT</p>
               <ul> 
                    <li><a href="http://localhost:8080/EBServices/AdminHome.jsp">Home</a></li>
                    <li><a href="http://localhost:8080/EBServices/About.jsp">About Us</a></li>
                    <li><a href="">Contact Us</a></li>   
                      <li><a class="buttons-atag active" href="PaymentProcess" method="get">Paid Bills</a></li>   
                   
                     <div class="dropdown">Complaint
                     <div class="dropdown-content">
                        
                        <a href="RectifiedComplaintAdmin" method="get">Pending Complaint</a>
                        <a href="PendingComplaintAdmin" method="get">Rectified Complaint</a>
                        
                     </div>
                     </div>
                     
                    
                  <li><a href="ReadCustomerDetails" method="get">Customer Details</a></li> 
                  <li><a href="http://localhost:8080/EBServices/">LogOut</a></li>
               </ul>
            </nav>
      </header> 
 <h2 style="margin-left:550px;padding:10px;">Paid Bills</h2>
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
         <th>Generate Receipt</th>
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