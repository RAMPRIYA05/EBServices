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
    background-color:peachpuff;
    margin: 0;
    padding: 0;
   
}

form{
  /*   margin-bottom:20px; */
    width: 20%;
    margin: 0 auto;
    background-color:white;
    padding: 20px;
    border-radius: 5px;
    margin-top:130px;
}

fieldset{
    border: none;
}

h2{
    text-align: center;
    font-size: 24px;
    margin-bottom: 20px;
}


input[type="email"],
input[type="password"]
{
    width:100%;
    padding:7px;
    margin-bottom:10px;
    border:1px solid gainsboro;
    border-radius:5px;
  
}


button{
 
    background-color:darkblue;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    
}

button:hover{
    background-color:green;
}
</style>


</head>
<body>
<form action="UserServlet" method="post">
   <h2>Customer LogIn</h2>
    Email Id:<input type="email" placeholder="Enter your Email Id" name="emailId" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required><br>
    Password:<input type="password" placeholder="Enter your Password" name="password" pattern=".{8,}" required><br>
    <button type="submit">Submit</button><br>
</form>
</body>
</html>