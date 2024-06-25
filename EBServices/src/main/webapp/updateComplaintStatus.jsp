<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="xml:land">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


<style>
         * {
	margin:0;
	padding:0;
}

nav {
	background-color: brown;
	opacity:0.9;
	width:1250px;
	padding:15px;
}

.logo, ul, li, p {
	display:inline;
}

li{
	padding-left:15px;
	cursor:pointer;
}

ul{
	margin-left:40%;
	padding-left:5px;
}



.logo{
	size:30px;
	height:60px;
}

a{
	color:gold;
	text-decoration:none;
}
form{
  margin-left:500px;
  padding:20px;
}
table{
	background-color:peachpuff;
	margin-top:60px;
	margin-left:250px;
	margin-right:5px;
}
</style>


<script>
function validateForm() {
    var complaintStatus = document.getElementById("complaintStatus").value;

    if (complaintStatus == "") {
        alert("Please select a complaint status");
        return false;
    }

    return true;
}
</script>


</head>
<body>
 <nav>
                <img class="logo" src="ebLogo.jpg" alt="Logo">
               <p style="color:white;font-size:300%;font-weight: 100;padding-left:100px; font-style:italic;">RP EB SERVICES AND ITS PAYMENT</p>
                <ul> 
                    <li><a href="http://localhost:8080/EBServices/adminHome.jsp">Home</a></li>
                    <li><a href="http://localhost:8080/EBServices/about.jsp">About Us</a></li>
                    <li><a href="">Contact Us</a></li>
                    <li><a href="http://localhost:8080/EBServices/">LogOut</a></li>
                   
                </ul>
            </nav>

<fieldset>
<form action="ComplaintStatus" method="get">
<br><label for="complaintStatus">Complaint Status:</label><br>
    <select id="complaintStatus" name="complaintStatus">
        <option value="applied">Applied</option>
        <option value="processed">Processed</option>
        <option value="rectified">Rectified</option>
    </select></br>

      <%-- <input type="hidden" name="serviceNumber" value="<%=request.getParameter("editServiceNumber") %>">
      <input type="submit" name="update">  --%>
      
      <input type="hidden" name="complaintId" value="<%=request.getParameter("editComplaintId") %>">
      <input type="submit" style="margin-top:5px" name="update">
</form>
</fieldset>

</body>
</html>