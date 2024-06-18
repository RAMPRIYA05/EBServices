<!DOCTYPE html>

<html lang="xml:land">
<head>
<meta charset="ISO-8859-1">
<title>Admin Registration</title>

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


</head>
<body>

<form action="AdminServlet" method="get" onsubmit="return validateForm()">
<fieldset>
<h2>Admin Registration</h2>
Name:<input type="text" placeholder="Enter your name" name="name" required><br>
<br>Email Id:<input type="email" placeholder="Enter your EmailId" name="emailId" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required><br>
<br>Password:<input type="password" placeholder="Enter your Password" name="password" pattern=".{8,}" required><br>
<br>Address:<input type="text" placeholder="Enter your Address" name="address" required><br>
<br>District:<input type="text" placeholder="Enter your District" name="district" required><br>
<br>State:<input type="text" placeholder="Enter your State" name="state" required><br>
<br>Phone Number:<input type="tel" placeholder="Enter your Phone Number" name="phoneNumber" pattern="[0-9]{10}" required><br>
<br>Aadhaar Number:<input type="number" placeholder="Enter your Aadhaar Number" name="aadhaarNumber" pattern="[0-9]{12}" required><br>
<br><button>Register</button>
<a href="AdminLogIn.jsp">or LogIn</a>
</fieldset>
</form>

<script>
function validateForm() {
    var emailId = document.getElementsByName("emailId")[0].value;
    var password = document.getElementsByName("password")[0].value;
    var phoneNumber = document.getElementsByName("phoneNumber")[0].value;
    var aadhaarNumber = document.getElementsByName("aadhaarNumber")[0].value;

    
    var emailPattern = /^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$/;
    if (!emailPattern.test(emailId)) {
        alert("Please enter a valid email address");
        return false;
    }

    
    if (password.length < 8) {
        alert("Password must be at least 8 characters long");
        return false;
    }

    var phonePattern = /^[0-9]{10}$/;
    if (!phonePattern.test(phoneNumber)) {
        alert("Please enter a valid phone number (10 digits only)");
        return false;
    }

  
    var aadhaarPattern = /^[0-9]{12}$/;
    if (!aadhaarPattern.test(aadhaarNumber)) {
        alert("Please enter a valid Aadhaar number (12 digits only)");
        return false;
    }

    return true; 
}
</script>

</body>
</html>
