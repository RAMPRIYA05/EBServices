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

}
</style>
    


</head>
<body>

    <header>
            <nav>
                <img class="logo" src="EBLogo.jpg" alt="Logo">
               <p style="color:white;font-size:300%;font-weight: 100;padding-left:100px; font-style:italic;">RP EB SERVICES AND ITS PAYMENT</p>
                <ul> 
                    <li><a href="http://localhost:8080/EBServices/">Home</a></li>
                    <li><a href="">About Us</a></li>
                    <li><a href="">Contact Us</a></li>
                    <li><a href="">Contact Us</a></li>
                    <li><a href="AdminRetrive" method="get">Profile</a></li>
                     <li><a href="ReadCustomerDetails" method="get">Customer Profile</a></li>
                     <li><a href="">Generate Customer Bill</a></li> 
                </ul>
            </nav>

</header>
</body>
</html>