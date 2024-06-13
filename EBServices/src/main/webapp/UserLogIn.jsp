<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>

body{
    
    font-family:'Times New Roman', Times, serif;
    background-color:peachpuff;
    margin: 0;
    padding: 0;
   
}

form{
  /*   margin-bottom:20px; */
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
    padding:7px;
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
</style>
<script>
function validateForm() {
    var email = document.forms["loginForm"]["emailId"].value;
    var password = document.forms["loginForm"]["password"].value;
    var emailRegex = /^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$/;

   
    if (email == "") {
        document.getElementById("emailError").innerHTML = "Email is required";
        return false;
    } else if (!emailRegex.test(email)) {
        document.getElementById("emailError").innerHTML = "Invalid email format";
        return false;
    } else {
        document.getElementById("emailError").innerHTML = "";
    }

   
    if (password == "") {
        document.getElementById("passwordError").innerHTML = "Password is required";
        return false;
    } else if (password.length < 8) {
        document.getElementById("passwordError").innerHTML = "Password must be at least 8 characters long";
        return false;
    } else {
        document.getElementById("passwordError").innerHTML = "";
    }

    return true;
}
</script>

</head>
<body>
<form name="loginForm" action="UserServlet" method="post" onsubmit="return validateForm()">
    <h2>Customer LogIn</h2>
    Email Id:<br>
    <input type="email" placeholder="Enter your Email Id" name="emailId" required><br>
    <span id="emailError" class="error"></span><br>
    Password:<br>
    <input type="password" placeholder="Enter your Password" name="password" required><br>
    <span id="passwordError" class="error"></span><br>
    <button type="submit">Submit</button><br>
</form>
</body>
</html>