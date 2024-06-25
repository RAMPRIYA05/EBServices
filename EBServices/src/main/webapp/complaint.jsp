<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="xml:land">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
form {
  background-color: peachpuff;
  width: 500px;
  margin: auto;
  margin-top: 30px;
}

fieldset {
  border: white;
  padding: 10px;
  margin-bottom: 10px;
}

h2 {
  text-align: center;
}

input[type="text"],
input[type="number"],
input[type="email"],
select,
button {
  width: 100%;
  padding: 8px;
  margin: 5px;
  box-sizing: border-box;
}

button {
  background-color: brown;
  color: white;
  border: none;
  cursor: pointer;
}

button:hover {
  background-color: green;
}
</style>

<script>
function validateForm() {
 
  var description = document.getElementById("description").value;

 /*  if (complaintId.trim() === "") {
    alert("Complaint Id must be filled out");
    return false;
  } */

  if (description.trim() === "") {
    alert("Description must be filled out");
    return false;
  }

  return true;
}
</script>

</head>
<body>
  <form action="ComplaintServlet" method="post" onsubmit="return validateForm()">
    <fieldset>
      <h2>Complaint Form</h2>
      <br>Service Number:<input type="number" placeholder="Enter your Service Number" name="serviceNumber" value="<%= request.getParameter("serviceNumber") %>" readonly></br> 
    

      <br>Description:<input type="text" id="description" placeholder="Enter your description" name="description" required></br>
      <br><label for="complaintStatus">Complaint Status:</label><br>
      <select id="complaintStatus" name="complaintStatus">
        <option value="applied">Applied</option>
        <option value="processed">Processed</option>
        <option value="rectified">Rectified</option>
      </select></br>
     <br>EmailId:<input type="email" placeholder="Enter your EmailId" name="emailId" value="<%= request.getParameter("emailId") %>" readonly></br>
      <br><button type="submit">Submit</button>
    </fieldset>
  </form>
</body>
</html>
