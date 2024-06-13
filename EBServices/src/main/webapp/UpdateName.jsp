<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script>
function validateForm() {
    var name = document.forms["updateForm"]["name"].value;
    var address = document.forms["updateForm"]["address"].value;
    var district = document.forms["updateForm"]["district"].value;
    var state = document.forms["updateForm"]["state"].value;
    var phoneNumber = document.forms["updateForm"]["phoneNumber"].value;
    var aadhaarNumber = document.forms["updateForm"]["aadhaarNumber"].value;

    if (name == "") {
        alert("Please enter your new name");
        return false;
    }

    if (address == "") {
        alert("Please enter your new address");
        return false;
    }

    if (district == "") {
        alert("Please enter your new district");
        return false;
    }

    if (state == "") {
        alert("Please enter your new state");
        return false;
    }

    if (phoneNumber == "" || isNaN(phoneNumber) || phoneNumber.length != 10) {
        alert("Please enter a valid 10-digit phone number");
        return false;
    }

    if (aadhaarNumber == "" || isNaN(aadhaarNumber) || aadhaarNumber.length != 12) {
        alert("Please enter a valid 12-digit Aadhaar number");
        return false;
    }

    return true;
}
</script>
</head>
<body>
<fieldset>
<form name="updateForm" action="UserDeleteServlet" method="post" onsubmit="return validateForm()">
     
      <center>Name: <input class="details" type="text" placeholder="Enter your new name" name="name" required></center><br>
      <center>Address: <input class="details" type="text" placeholder="Enter your new Address" name="address" required></center><br>
      <center>District: <input class="details" type="text" placeholder="Enter your new District" name="district" required></center><br>
      <center>State: <input class="details" type="text" placeholder="Enter your new State" name="state" required></center><br>
      <center>Phone Number: <input class="details" type="tel" placeholder="Enter your new phoneNumber" name="phoneNumber" pattern="[0-9]{10}" required></center><br>
      <center>Aadhaar Number: <input class="details" type="number" placeholder="Enter your new aadhaarNumber" name="aadhaarNumber" pattern="[0-9]{12}" required></center><br>
      <input type="hidden" name="emailId" value="<%=request.getParameter("editEmailId") %>">
     <input type="submit" style="color:brown;background-color:navajowhite;border:none;padding:5px 15px;text-align:center;text-decoration:none;display:inline-block;font-size:16px;margin:4px 2px;cursor:pointer;"  name="update">
</form>
</fieldset>
</body>
</html>
