<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin LogIn</title>

<style>

body{
    
    font-family:'Times New Roman', Times, serif;
     background-color:peachpuff;
    margin: 0;
    padding: 0;
   
}

form{
    width: 20%;
    margin: 0 auto;
    background-color:white;
    padding: 20px;
    border-radius: 5px;
    margin-top:130px;
}

fieldset{
    border: none;
}

h2{
    text-align: center;
    font-size: 24px;
    margin-bottom: 20px;
}


input[type="email"],
input[type="password"]
{
    width:100%;
    padding:10px;
    margin-bottom:10px;
    border:1px solid gainsboro;
    border-radius:5px;
  
}


button{
    background-color:darkblue;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    
}

button:hover{
    background-color:green;
}

.error {
    color: red;
}

</style>

</head>
<body>

<form action="AdminServlet" method="post" onsubmit="return validateForm()">
<fieldset>
    <h2>Admin LogIn</h2>
    Email Id:<input type="email" placeholder="Enter your Email Id" name="emailId" id="emailId" required><br>
    <span id="emailError" class="error"></span><br>
    Password:<input type="password" placeholder="Enter your Password" name="password" id="password" required><br>
    <span id="passwordError" class="error"></span><br>
    <button type="submit">Submit</button><br>
</fieldset>
</form>

<script>
function validateForm() {
    var emailId = document.getElementById("emailId").value;
    var password = document.getElementById("password").value;

    var emailPattern = /[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$/;

    if (!emailPattern.test(emailId)) {
        document.getElementById("emailError").innerText = "Please enter a valid email address";
        return false;
    } else {
        document.getElementById("emailError").innerText = "";
    }

    if (password.length < 8) {
        document.getElementById("passwordError").innerText = "Password must be at least 8 characters long";
        return false;
    } else {
        document.getElementById("passwordError").innerText = "";
    }

    return true;
}
</script>

</body>
</html>
