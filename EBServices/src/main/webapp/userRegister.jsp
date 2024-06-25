<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="xml:land">
<head>
<meta charset="ISO-8859-1">
<title>Customer Registration</title>

<style>
body {
    font-family: 'Times New Roman', Times, serif;
    background-color: bisque;
    margin: 0;
    padding: 0;
}

form {
    width: 50%;
    margin: 0 auto;
    background-color: white;
    padding: 20px;
    border-radius: 5px;
}

fieldset {
    border: none;
}

h2 {
    text-align: center;
    font-size: 24px;
    margin-bottom: 20px;
}

input[type="text"],
input[type="number"],
input[type="email"],
input[type="password"],
input[type="tel"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid gainsboro;
    border-radius: 5px;
}

button {
    background-color: slateblue;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

button:hover {
    background-color: green;
}

a {
    color: slateblue;
    text-decoration: none;
    margin-left: 10px;
}

a:hover {
    text-decoration: underline;
}

</style>

<script>
function validationForm() {
    var name = document.forms["registrationForm"]["name"].value;
    var email = document.forms["registrationForm"]["emailId"].value;
    var password = document.forms["registrationForm"]["password"].value;
    var address = document.forms["registrationForm"]["address"].value;
    var district = document.forms["registrationForm"]["district"].value;
    var state = document.forms["registrationForm"]["state"].value;
    var phoneNumber = document.forms["registrationForm"]["phoneNumber"].value;
    var aadhaarNumber = document.forms["registrationForm"]["aadhaarNumber"].value;

    if (name.trim() === "") {
        alert("Name must be filled out");
        return false;
    }
    
    var emailRegex = /^[a-z0-9_\-\.]+@[a-z]+\.[a-z]{2,3}$/;
    if (!emailRegex.test(email)) {
        alert("Invalid email format");
        return false;
    }

    if (password.length < 8) {
        alert("Password must be at least 8 characters long");
        return false;
    }

    return true;
}
</script>

</head>
<body>

<form name="registrationForm" action="UserServlet" method="get" onsubmit="return validationForm()">
    <fieldset>
        <h2>Customer Registration</h2>
        Name:<input type="text" placeholder="Enter your name" name="name" required><br>
        <br>Email Id:<input type="email" placeholder="Enter your EmailId" name="emailId" pattern="[a-z0-9_/-/.]+[@][a-z]+[/.][a-z]{2,3}$" required><br>
        <br>Password:<input type="password" placeholder="Enter your Password" name="password" pattern=".{8,}" required><br>
        <br>Address:<input type="text" placeholder="Enter your Address" name="address" required><br>
        <br>District:<input type="text" placeholder="Enter your District" name="district" required><br>
        <br>State:<input type="text" placeholder="Enter your State" name="state" required><br>
        <br>Phone Number:<input type="tel" placeholder="Enter your Phone Number" name="phoneNumber" pattern="[0-9]{10}" required><br>
        <br>Aadhaar Number:<input type="number" placeholder="Enter your Aadhaar Number" name="aadhaarNumber" pattern="[0-9]{12}" required><br>
        <br><button type="submit">Register</button>
        <a href="adminLogIn.jsp">or LogIn</a>
    </fieldset>
</form>

</body>
</html>
