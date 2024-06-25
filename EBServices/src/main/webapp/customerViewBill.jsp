<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.chainsys.model.Services" %>
<!DOCTYPE html>
<html lang="xml:land">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<script>
function calculateAmount() {
    var readingUnits = parseFloat(document.getElementById("readingUnits").value);
    var serviceType = document.getElementById("serviceType").value;
    var ratePerUnit;
    var amount;

    if (serviceType === "domestic") {
        if (readingUnits <= 100) {
            ratePerUnit = 0;
        } else if (readingUnits <= 200) {
            ratePerUnit = 0.50;
        } else if (readingUnits <= 300) {
            ratePerUnit = 1.00;
        } else if (readingUnits <= 500) {
            ratePerUnit = 1.50;
        } else if (readingUnits <= 1000) {
            ratePerUnit = 2.00;
        } else {
            ratePerUnit = 3.00;
        }
    } else if (serviceType === "commercial") {
        if (readingUnits < 100) {
            ratePerUnit = 0;
        } else if (readingUnits <= 200) {
            ratePerUnit = 0.75;
        } else if (readingUnits <= 300) {
            ratePerUnit = 1.25;
        } else if (readingUnits <= 500) {
            ratePerUnit = 1.75;
        } else if (readingUnits <= 1000) {
            ratePerUnit = 2.50;
        } else {
            ratePerUnit = 3.50;
        }
    }

    amount = readingUnits * ratePerUnit;
    document.getElementById("amount").value = amount.toFixed(2);
}

function validateForm() {
    var emailId = document.getElementById("emailId").value;
    var address = document.getElementById("address").value;
    var aadhaarNumber = document.getElementById("aadhaarNumber").value;
    var serviceNumber = document.getElementById("serviceNumber").value;
    var readingUnits = document.getElementById("readingUnits").value;
    var readingTakenDate = document.getElementById("readingTakenDate").value;
    var readingDueDate = document.getElementById("readingDueDate").value;

    if (emailId.trim() === "") {
        alert("Email Id must be filled out");
        return false;
    }

    if (address.trim() === "") {
        alert("Address must be filled out");
        return false;
    }

    if (aadhaarNumber.trim() === "") {
        alert("Aadhaar Number must be filled out");
        return false;
    }

    if (serviceNumber.trim() === "") {
        alert("Service Number must be filled out");
        return false;
    }

    if (readingUnits.trim() === "") {
        alert("Reading Units must be filled out");
        return false;
    }

    if (readingTakenDate.trim() === "") {
        alert("Reading Taken Date must be filled out");
        return false;
    }

    if (readingDueDate.trim() === "") {
        alert("Reading Due Date must be filled out");
        return false;
    }

    return true;
}
</script>

</head>
<body>
    <h2>Electricity Bill Form</h2>

    <form action="Bill" method="get" onsubmit="return validateForm()">
        <label for="emailId">Email Id:</label><br>
        <input type="email" id="emailId" name="emailId" required><br><br>

        <label for="address">Address:</label><br>
        <input type="text" id="address" name="address" required><br><br>

        <label for="aadhaarNumber">Aadhaar Number:</label><br>
        <input type="number" id="aadhaarNumber" name="aadhaarNumber" required><br><br>

        <label for="serviceNumber">Service Number:</label><br>
        <input type="number" id="serviceNumber" name="serviceNumber" required><br><br>

        <label for="readingUnits">Reading Units:</label><br>
        <input type="number" id="readingUnits" name="readingUnits" onkeyup="calculateAmount()" required><br><br>

        <label for="readingTakenDate">Reading Taken Date:</label><br>
        <input type="date" id="readingTakenDate" name="readingTakenDate" required><br><br>

        <label for="readingDueDate">Reading Due Date:</label><br>
        <input type="date" id="readingDueDate" name="readingDueDate" required><br><br>

        <label for="serviceType">Service Type:</label><br>
        <select id="serviceType" name="serviceType" onchange="calculateAmount()" required>
            <option value="domestic">Domestic</option>
            <option value="commercial">Commercial</option>
        </select><br><br>


        <select id="billStatus" name="billStatus">
            <option value="paid">Paid</option>
            <option value="not_paid">Not Paid</option>
            <option value="pending">Pending</option>
        </select><br><br> -->

        <label for="amount">Amount:</label><br>
        <input type="text" id="amount" name="amount" readonly><br><br>

        <input type="submit" value="Submit">
    </form>
</body>
</html>
