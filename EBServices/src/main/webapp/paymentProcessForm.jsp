<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="xml:land">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>

form {
  background-color:peachpuff;
  width:500px;
  margin:auto;
}


fieldset {
  border:white;
  padding:10px;
  margin-bottom:10px;
}
h2{
text-align:center;
}
input[type="text"],
input[type="date"],
input[type="number"],
button {
  width:100%;
  padding:8px;
  margin:5px;
  box-sizing:border-box; 
}

button {
  background-color:brown;
  color: white;
  border: none;
  cursor: pointer;
}

button:hover {
  background-color:green;
}

</style>

</head>
<body>
        <h2>Payment Form</h2>
        <form name="paymentForm" action="PaymentProcess" method="post" onsubmit="return validateForm()">
        <fieldset>
        <br>Service Number:<input type="number" id="serviceNumber" name="serviceNumber" value="<%= request.getParameter("serviceNumber") %>"  readonly></br>

              
        <br>Payment Date:<input type="date" id="paymentDate" name="paymentDate" onchange="calculateTotalAmount()"></br>
        <br>Amount(Pay on or before due date):<input type="number" id="amount" name="amount" value="<%= request.getParameter("amount") %>" readonly></br>
        <br>Account Number: <input type="number" id="accountNumber" name="accountNumber" required></br>
        <br>Reading Due Date:<input type="date" id="readingDueDate" name="readingDueDate" value="<%= request.getParameter("readingDueDate") %>"  readonly></br>

        <br>Total Amount:<input type="number" id="totalAmount" name="totalAmount" readonly></br>
        <br>Payed amount:<input type="number" id="payAmount" name="payAmount" required></br>
     
       
     
         
        <br><button>Submit</button> 
        </fieldset>
        </form>
	
	
	<script>
        function calculateTotalAmount() {
            var readingDueDate = new Date(document.getElementById("readingDueDate").value);
            var paymentDate = new Date(document.getElementById("paymentDate").value);
            var amount = parseFloat(document.getElementById("amount").value);

            var days= Math.floor((paymentDate - readingDueDate) / (1000 * 60 * 60 * 24)); 
            var penalty=0;
            if(days<= 0) {
                penalty=0;
            } else if(days>0 && days<=10) {
                penalty=days*10;
            } else if(days>10 && days<=15) {
                penalty=days* 20;
            } else if(days>15 && days<=25) {
                penalty=days*30;
            } else {
                penalty = NaN; 
            }

            var totalAmount=amount+penalty;
            document.getElementById("totalAmount").value = totalAmount.toFixed(2); 
            }
        
        function validateForm() {
           /*  var paymentId = document.getElementById("paymentId").value; */
            var accountNumber = document.getElementById("accountNumber").value;
            var payAmount = document.getElementById("payAmount").value;

           /*  if (paymentId.trim() === "") {
                alert("Payment ID must be filled out");
                return false;
            } */

            if (accountNumber.trim() === "") {
                alert("Account Number must be filled out");
                return false;
            }

            if (isNaN(payAmount) || payAmount.trim() === "") {
                alert("Payed amount must be a valid number");
                return false;
            }

            return true;
        }
    </script>
	
</body>
</html>
