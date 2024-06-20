<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="xml:land">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    padding: 20px;
}

fieldset {
    width: 50%;
    margin: 0 auto;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
    background-color: #fff;
}

form {
    margin: 0;
}

input[type="text"], input[type="submit"] {
    width: calc(100% - 12px);
    padding: 8px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    font-size: 14px;
}

input[type="submit"] {
    background-color: #4CAF50;
    color: white;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #45a049;
}
</style>



</head>
<body>

<fieldset>
<form name="adminDeleteForm" action="AdminDeleteServlet" method="post" onsubmit="return validateForm()">
     
    Name: <input type="text" placeholder="Enter your new name" name="name" required><br>

    Address: <input type="text" placeholder="Enter your new Address" name="address" required><br>
    District: <input type="text" placeholder="Enter your new District" name="district" required><br>
    State: <input type="text" placeholder="Enter your new State" name="state" required><br>
    Phone Number: <input type="text" placeholder="Enter your new phoneNumber" name="phoneNumber" required><br>
   Aadhaar Number: <input type="text" placeholder="Enter your new aadhaarNumber" name="aadhaarNumber" required><br>
    <input type="hidden" name="emailId" value="<%=request.getParameter("editEmailId") %>">
    <input type="submit" style="color:brown;background-color:navajowhite;border:none;padding:5px 15px;text-align:center;text-decoration:none;display:inline-block;font-size:16px;margin:4px 2px;cursor:pointer;" name="update">
</form>
</fieldset>

<script>
function validateForm() {
    var name = document.forms["adminDeleteForm"]["name"].value.trim();
    var address = document.forms["adminDeleteForm"]["address"].value.trim();
    var district = document.forms["adminDeleteForm"]["district"].value.trim();
    var state = document.forms["adminDeleteForm"]["state"].value.trim();
    var phoneNumber = document.forms["adminDeleteForm"]["phoneNumber"].value.trim();
    var aadhaarNumber = document.forms["adminDeleteForm"]["aadhaarNumber"].value.trim();

    if (name === "") {
        alert("Name must be filled out");
        return false;
    }

    if (address === "") {
        alert("Address must be filled out");
        return false;
    }

    if (district === "") {
        alert("District must be filled out");
        return false;
    }

    if (state === "") {
        alert("State must be filled out");
        return false;
    }

    if (phoneNumber === "" || isNaN(phoneNumber) || phoneNumber.length !== 10) {
        alert("Please enter a valid 10-digit phone number");
        return false;
    }

    if (aadhaarNumber === "" || isNaN(aadhaarNumber) || aadhaarNumber.length !== 12) {
        alert("Please enter a valid 12-digit Aadhaar number");
        return false;
    }

    return true;
}
</script>

</body>
</html>
