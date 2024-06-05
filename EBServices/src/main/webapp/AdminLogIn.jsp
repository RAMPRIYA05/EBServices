<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="AdminServlet" method="post">
    <h2>Admin LogIn</h2>
    Email Id:<input type="text" placeholder="Enter your Email Id" name="emailId" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required><br>
    Password:<input type="password" placeholder="Enter your Password" name="password" pattern=".{8,}" required><br>
   <button type="submit">Submit</button><br>
   </form>
</body>
</html>