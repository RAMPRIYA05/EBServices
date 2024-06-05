<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="AdminServlet" method="get">
<fieldset>
<h2>Admin Registration</h2>
Name:<input type="text" placeholder="Enter your name" name="name"  required><br>
<br>Email Id:<input type="email" placeholder="Enter your EmailId" name="emailId" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required><br>
<br>Password:<input type="password" placeholder="Enter your Password" name="password" pattern=".{8,}" required><br>
 <br>Address:<input type="text" placeholder="Enter your Address" name="address" required><br>
 <br>District:<input type="text" placeholder="Enter your District" name="district" required><br>
 <br>State:<input type="text" placeholder="Enter your State" name="state" required><br>
 <br>Phone Number:<input type="tel" placeholder="Enter your Phone Number" name="phoneNumber" pattern="[0-9]{10}" required><br>
 <br>Aadhaar Number:<input type="text" placeholder="Enter your Aadhaar Number" name="aadhaarNumber" pattern="[0-9]{12}" required><br>
 <!-- <br>User Type(Customer or Officer):<input type="text" placeholder="Enter your User Type" name=">userType" required><br> -->
 <br><button >Register</button>
 <a href="AdminLogIn.jsp">or LogIn</a>
 </fieldset>
 </form>

</body>
</html>