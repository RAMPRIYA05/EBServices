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
<form name="adminDeleteForm" action="AdminDeleteServlet" method="post" onsubmit="return validateForm()">
     
    <center>Name: <input type="text" placeholder="Enter your new name" name="name" required></center><br>
    <!-- <center>EmailId: <input class="details" type="text" placeholder="Enter your new emailId" name="emailId" required></center><br> -->
    <center>Address: <input type="text" placeholder="Enter your new Address" name="address" required></center><br>
    <center>District: <input type="text" placeholder="Enter your new District" name="district" required></center><br>
    <center>State: <input type="text" placeholder="Enter your new State" name="state" required></center><br>
    <center>Phone Number: <input type="text" placeholder="Enter your new phoneNumber" name="phoneNumber" required></center><br>
    <center>Aadhaar Number: <input type="text" placeholder="Enter your new aadhaarNumber" name="aadhaarNumber" required></center><br>
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
