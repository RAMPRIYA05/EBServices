<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="UserServlet" method="post">
   <h2>User LogIn</h2>
    Email Id:<input type="text" placeholder="Enter your Email Id" name="emailId" required><br>
    Password:<input type="password" placeholder="Enter your Password" name="password" required><br>
    <button type="submit">Submit</button><br>
</form>
</body>
</html>