<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="xml:land">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>

        nav{
           background-color:brown;
           opacity:0.9;
           width:1250px;
           padding:15px;
        }

        .logo,ul,li,p{
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
        .logo {
    size: 30px;
    height: 60px;
}
a{
    color:gold;
    text-decoration:none;
 
}
.buttons-atag.active{
 
    color:white;
    text-decoration:underline;
    
}

</style>

</head>
<body>

<header>
    <nav>
               <img class="logo" src="ebLogo.jpg" alt="Logo">
               <p style="color:white;font-size:300%;font-weight: 100;padding-left:100px; font-style:italic;">RP EB SERVICES AND ITS PAYMENT</p>
               <ul> 
                    <!-- <li><a href="http://localhost:8080/EBServices/AdminHome.jsp">Home</a></li> -->
                    <li><a  class="buttons-atag active" href="http://localhost:8080/EBServices/about.jsp">About Us</a></li>
                    <li><a href="">Contact Us</a></li>   
                  <li><a href="http://localhost:8080/EBServices/">LogOut</a></li>
               </ul>
            </nav>
      </header> 



    <h1 style="margin-left:550px;">About</h1>
    <p style="margin-left:210px">The electricity bill serves as a record of energy usage and provides important information for consumers to manage their energy consumption and expenses. It also serves as a means for utility companies to collect payments for the electricity provided to homes, businesses, and other establishments.
In recent years, there has been increasing emphasis on energy conservation and sustainability, leading to efforts to promote energy-efficient practices and technologies to reduce electricity consumption and lower bills. Additionally, some regions offer incentives or rebates for adopting renewable energy sources such as solar or wind power, which can further influence electricity bills.</p>
</body>
</html>