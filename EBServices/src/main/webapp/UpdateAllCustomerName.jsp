<!DOCTYPE html>
<html lang="xml:land">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>

form {
  background-color:peachpuff;
  width:500px;
  margin:auto;
}


fieldset {
  border:white;
  padding:10px;
  margin-bottom:10px;
}
h2{
text-align:center;
}
input[type="text"],
input[type="number"]
{
  width:60%;
  padding:6px;
  margin:5px;
  box-sizing:border-box; 
  margin-left:30px;
}

.error {
  color: red;
}
</style>

<script>
function validateForm() {
  var name = document.forms["updateForm"]["name"].value;
  var address = document.forms["updateForm"]["address"].value;
  var district = document.forms["updateForm"]["district"].value;
  var state = document.forms["updateForm"]["state"].value;
  var phoneNumber = document.forms["updateForm"]["phoneNumber"].value;
  var aadhaarNumber = document.forms["updateForm"]["aadhaarNumber"].value;

  if (name.trim() == "") {
    document.getElementById("nameError").innerHTML = "Name is required";
    return false;
  } else {
    document.getElementById("nameError").innerHTML = "";
  }

  if (address.trim() == "") {
    document.getElementById("addressError").innerHTML = "Address is required";
    return false;
  } else {
    document.getElementById("addressError").innerHTML = "";
  }

  if (district.trim() == "") {
    document.getElementById("districtError").innerHTML = "District is required";
    return false;
  } else {
    document.getElementById("districtError").innerHTML = "";
  }

  if (state.trim() == "") {
    document.getElementById("stateError").innerHTML = "State is required";
    return false;
  } else {
    document.getElementById("stateError").innerHTML = "";
  }

  if (phoneNumber.trim() == "" || isNaN(phoneNumber) || phoneNumber.length != 10) {
    document.getElementById("phoneNumberError").innerHTML = "Please enter a valid 10-digit phone number";
    return false;
  } else {
    document.getElementById("phoneNumberError").innerHTML = "";
  }

  if (aadhaarNumber.trim() == "" || isNaN(aadhaarNumber) || aadhaarNumber.length != 12) {
    document.getElementById("aadhaarNumberError").innerHTML = "Please enter a valid 12-digit Aadhaar number";
    return false;
  } else {
    document.getElementById("aadhaarNumberError").innerHTML = "";
  }

  return true;
}
</script>

</head>
<body>
<fieldset>
<form name="updateForm" action="UpdateCustomerDetails" method="post" onsubmit="return validateForm()">
      <h2>Update Form</h2>
      Name:<br>  <input class="details" type="text" placeholder="Enter your new name" name="name" required>
      <span id="nameError" class="error"></span><br>
      Address:<br> <input class="details" type="text" placeholder="Enter your new Address" name="address" required>
      <span id="addressError" class="error"></span><br>
      District:<br> <input class="details" type="text" placeholder="Enter your new District" name="district" required>
      <span id="districtError" class="error"></span><br>
      State:<br> <input class="details" type="text" placeholder="Enter your new State" name="state" required>
      <span id="stateError" class="error"></span><br>
      Phone Number:<br> <input class="details" type="number" placeholder="Enter your new phoneNumber" name="phoneNumber" pattern="[0-9]{10}" required>
      <span id="phoneNumberError" class="error"></span><br>
      Aadhaar Number:<br> <input class="details" type="number" placeholder="Enter your new aadhaarNumber" name="aadhaarNumber" pattern="[0-9]{12}" required>
      <span id="aadhaarNumberError" class="error"></span><br>
      
      <input type="hidden" name="emailId" value="<%=request.getParameter("editEmailId") %>">
      <input type="submit" style="color:brown;background-color:white;border:none;padding:5px 15px;text-align:center;text-decoration:none;display:inline-block;font-size:16px;margin:4px 2px;cursor:pointer;"  name="update">
</form>
</fieldset>

</body>
</html>
