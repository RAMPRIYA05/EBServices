<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
        *{
            margin:0;
            padding:0;
        }
        nav{
           background-color:black;
           opacity:0.8;
           width:1250px;
           /* color:blueviolet; */
           padding:15px;
        }

        .logo,ul,li,p{
            display: inline;
            
        }
        li{
            padding-left:15px;
            cursor:pointer;
           
        }
        li.hover{
            color:red;
        }
        ul{
            
            margin-left:40%;
            padding-left:5px;
          
        }
        button{
            color:white;
            background-color: black;
            opacity:0.9;
        }
        

.logo {
    size: 30px;
    height: 60px;
}
a{
    color:gold;
    text-decoration: none;
 
}
body{
    background-repeat: no-repeat;
    background-image:url(EBBackGroundImage.jpg);
    background-attachment: fixed;  
    background-size: cover;
} 

.buttons-atag.active{
 
    color:white;
    text-decoration: underline;
    
}



.dropdown {
  color:gold;
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
  display: block;
}

.dropdown:hover .dropbtn {
  background-color: #3e8e41;
}
</style>
    </style>

</head>
<body>
   <header>
            <nav>
                <img class="logo" src="EBLogo.jpg" alt="Logo">
               <p style="color:white;font-size:300%;font-weight: 100;padding-left:100px; font-style:italic;">RP EB SERVICES AND ITS PAYMENT</p>
                <ul> 
                    <li><a class="buttons-atag active" href="">Home</a></li>
                    <li><a href="">About Us</a></li>
                    <!-- <li><a href="">Services</a></li> -->
                    <li><a href="">Contact Us</a></li>
                </ul>
                 <div class="dropdown">SignUp
                    <div class="dropdown-content">
                       <a href="AdminRegister.jsp">Admin</a>
                       <a href="UserRegister.jsp">Customer</a>
                    </div>
                 </div>
                 
                 <div class="dropdown">SignIn
                    <div class="dropdown-content">
                       <a href="AdminLogIn.jsp">Admin</a>
                       <a href="UserLogIn.jsp">Customer</a>
                    </div>
                 </div>
            </nav>
        </header> 
   
    <!-- <center><h2>RP EB SERVICES AND ITS PAYMENT</h2></center> -->
        <!--  <center><a href="UserRegister.jsp"><input style="color:white;background-color:black;margin-top:160px;border-color:sandybrown;padding:5px;width:100px;" type="submit" value="Customer"></a></center>
         <center><a href="AdminRegister.jsp"><input style="color:white;background-color:black;margin-top:20px;border-color:sandybrown;padding:5px;width:100px;" type="submit" value="Admin"></a></center> -->
         <!-- <a href="AdminRegister.jsp"><button>Admin</button></a> -->
</body>
</html>