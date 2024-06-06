<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import=" com.chainsys.model.Services" %>
<!DOCTYPE html>
<html>
<head>
    <title>Electricity Bill Form</title>
    <script>
        function calculateAmount() {
            var readingUnits = parseFloat(document.getElementById("readingUnits").value);
            var serviceType = document.getElementById("serviceType").value;
            var ratePerUnit;

            
            if (serviceType === "domestic") {
                
                if (readingUnits <= 100) {
                    ratePerUnit = 0;
                    var amount = (readingUnits-100) * ratePerUnit;
                } else if (readingUnits <= 200) {
                    ratePerUnit = 0.50; 
                    var amount = (readingUnits-100) * ratePerUnit;
                } else if (readingUnits <= 300) {
                    ratePerUnit = 1.00; 
                    var amount = (readingUnits-200)*ratePerUnit+(100*0.50)+(100*0) ;
                   
                } else if (readingUnits <= 500) {
                    ratePerUnit = 1.50; 
                    var amount = (readingUnits-300) * ratePerUnit+(100*0)+(100*0.50)+(100*1.00);
                    
                } else if (readingUnits <= 1000) {
                    ratePerUnit = 2.00;
                    var amount = (readingUnits-500) * ratePerUnit+(100*0)+(100*0.50)+(100*1.00)+(200*1.50);
                    
                } else {
                    ratePerUnit = 3.00; 
                    var amount = (readingUnits-1000) * ratePerUnit+(100*0)+(100*0.50)+(100*1.00)+(200*1.50)+(500*2.00);
                    //var amount = (readingUnits-100) * ratePerUnit;
                }
            } else if (serviceType === "commercial") {
               
                if (readingUnits < 100) {
                    ratePerUnit = 0; 
                    var amount = (readingUnits-100) * ratePerUnit;
                } else if (readingUnits <= 200) {
                    ratePerUnit = 0.75; 
                    var amount = (readingUnits-100) * ratePerUnit;
                } else if (readingUnits <= 300) {
                    ratePerUnit = 1.25; 
                    var amount = (readingUnits-100) * ratePerUnit;
                } else if (readingUnits <= 500) {
                    ratePerUnit = 1.75; 
                    var amount = (readingUnits-100) * ratePerUnit;
                } else if (readingUnits <= 1000) {
                    ratePerUnit = 2.50; 
                    var amount = (readingUnits-100) * ratePerUnit;
                } else {
                    ratePerUnit = 3.50; 
                    var amount = (readingUnits-100) * ratePerUnit;
                }
            }

           
           // var amount = (readingUnits-100) * ratePerUnit;

          
            document.getElementById("amount").value = amount.toFixed(2);
        }
    </script>
</head>
<body>

<h2>Electricity Bill Form</h2>

<form action="Bill" method="post">
    <label for="emailId">Email Id:</label><br>
    <input type="email" id="emailId" name="emailId"><br><br>

    <label for="address">Address:</label><br>
    <input type="text" id="address" name="address"><br><br>

    <label for="aadhaarNumber">Aadhaar Number:</label><br>
    <input type="text" id="aadhaarNumber" name="aadhaarNumber"><br><br>

    <label for="serviceNumber">Service Number:</label><br>
    <input type="text" id="serviceNumber" name="serviceNumber"><br><br>

    <label for="readingUnits">Reading Units:</label><br>
    <input type="text" id="readingUnits" name="readingUnits" onkeyup="calculateAmount()"><br><br>

    <label for="readingTakenDate">Reading Taken Date:</label><br>
    <input type="date" id="readingTakenDate" name="readingTakenDate"><br><br>

    <label for="readingDueDate">Reading Due Date:</label><br>
    <input type="date" id="readingDueDate" name="readingDueDate"><br><br>

    <label for="serviceType">Service Type:</label><br>
    <select id="serviceType" name="serviceType" onchange="calculateAmount()">
        <option value="domestic">Domestic</option>
        <option value="commercial">Commercial</option>
    </select><br><br>

    <label for="billStatus">Bill Status:</label><br>
    <select id="billStatus" name="billStatus">
        <option value="paid">Paid</option>
        <option value="not_paid">Not Paid</option>
        <option value="pending">Pending</option>
    </select><br><br>

    <label for="amount">Amount:</label><br>
    <input type="text" id="amount" name="amount" readonly><br><br>

    <input type="submit" value="Submit">
</form>

</body>
</html>
    