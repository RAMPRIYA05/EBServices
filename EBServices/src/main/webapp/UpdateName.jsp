<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<fieldset>
<form action="UserDeleteServlet" method="post">
     
     <center>Name: <input class="details" type="text" placeholder="Enter your new name" name="name" required></center><br>
      <!-- <center>EmailId: <input class="details" type="text" placeholder="Enter your new emailId" name="emailId" required></center><br> -->
      <center>Address: <input class="details" type="text" placeholder="Enter your new Address" name="address" required></center><br>
      <center>District: <input class="details" type="text" placeholder="Enter your new District" name="district" required></center><br>
      <center>State: <input class="details" type="text" placeholder="Enter your new State" name="state" required></center><br>
      <center>Phone Number: <input class="details" type="text" placeholder="Enter your new phoneNumber" name="phoneNumber" required></center><br>
      <center>Aadhaar Number: <input class="details" type="text" placeholder="Enter your new aadhaarNumber" name="aadhaarNumber" required></center><br>
      <input type="hidden" name="emailId" value="<%=request.getParameter("editEmailId") %>">
     <input type="submit" style="color:brown;background-color:navajowhite;border:none;padding:5px 15px;text-align:center;text-decoration:none;display:inline-block;font-size:16px;margin:4px 2px;cursor:pointer;"  name="update">
</form>
</fieldset>
</body>
</html>