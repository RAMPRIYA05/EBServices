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
    background-color:bisque;
    margin: 0;
    padding: 0;
}

form{
    width: 50%;
    margin: 0 auto;
    background-color:white;
    padding: 20px;
    border-radius: 5px;
}

fieldset{
    border: none;
}

h2{
    text-align: center;
    font-size: 24px;
    margin-bottom: 20px;
}

input[type="text"],
input[type="email"],
input[type="password"],
input[type="tel"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid gainsboro;
    border-radius: 5px;
}

button{
    background-color:slateblue;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

button:hover{
    background-color:green;
}

a{
    color:slateblue;
    text-decoration: none;
    margin-left: 10px;
}

a:hover{
    text-decoration: underline;
}

</style>

</head>
<body>

<form action="UserServlet" method="get">
<fieldset>
<h2>Customer Registration</h2>
Name:<input type="text" placeholder="Enter your name" name="name" required><br>
<br>Email Id:<input type="email" placeholder="Enter your EmailId" name="emailId" pattern="[a-z0-9_/-/.]+[@][a-z]+[/.][a-z]{2,3}$" required><br>
<br>Password:<input type="password" placeholder="Enter your Password" name="password" pattern=".{8,}" required><br>
 <br>Address:<input type="text" placeholder="Enter your Address" name="address" required><br>
 <br>District:<input type="text" placeholder="Enter your District" name="district" required><br>
 <br>State:<input type="text" placeholder="Enter your State" name="state" required><br>
 <br>Phone Number:<input type="tel" placeholder="Enter your Phone Number" name="phoneNumber" pattern="[0-9]{10}" required><br>
 <br>Aadhaar Number:<input type="text" placeholder="Enter your Aadhaar Number" name="aadhaarNumber" pattern="[0-9]{12}" required><br>
 <!-- <br>User Type(Customer or Officer):<input type="text" placeholder="Enter your User Type" name=">userType" required><br> -->
 <br><button onsubmit="return validationForm()">Register</button>
 <a href="UserLogIn.jsp">or LogIn</a>
 </fieldset>
 </form>
</body>
</html>