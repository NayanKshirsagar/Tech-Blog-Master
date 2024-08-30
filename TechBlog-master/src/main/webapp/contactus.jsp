<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <!--css-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- fa5-$-css -->
   		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css" integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ" crossorigin="anonymous">
		
        <style>
        	.banner-background{
             clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 91%, 63% 100%, 22% 91%, 0 99%, 0 0);
            }
            .primary-background{
	background-color: #32074d !important ;
	}
	.backg{
            background: url(img/back6.jpg);
            background-attachment: fixed;
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
        }
      .text-color{
	color: #32074d !important ;
		}
        </style>
</head>
    <body class="primary-background">

        <!--navbar-->
        <%@include file="normal_navbar.jsp" %>

        <!--//banner-->

        <div class="container-fluid p-0 m-0">
 

            <div class="jumbotron backg text-color banner-background">
                <div class="container text-center font-weight-bold">
                	<h3 class="display-4 font-weight-bold">Contact Us</h3>
                	<hr style="height:2px; width:100%; border-width:0; color:red; background-color:red">
                	<br />
                	
                        <i class="fas fa-globe fa-5x"></i>
                        <br/>
                        <h4 class="font-weight-bold">Find Us</h4>
                        <br />
                        
                        <br />
                	<p class="text-justify text-center">You can search us on Google or you can visit our official website. You can contact us on:<br />
                            Email: abc@gmail.com<br />
                            No : 7766554433
                        </p>
					<hr style="height:2px; width:100%; border-width:0; color:red; background-color:red">
					
					
                        <br />
                          <i class="fas fa-search fa-5x "></i>
                        <br />
                    
                        <h4 class="font-weight-bold">Visit Us</h4><br/>
                        <p class="text-justify  text-center">You can visit us at the location give below:<br />
                            Address: abc building, plot no-101, xyz(east), Maharashtra, India.<br />
                            Pincode :123456
                        </p>
                    <hr style="height:2px; width:100%; border-width:0; color:red; background-color:red">
                    
                    
                    <button class="btn btn-outline-light btn-lg"> <span class="fa 	fa fa-user-plus"></span>  Start ! its Free</button>
                    <a href="login_page.jsp" class="btn btn-outline-light btn-lg"> <span class="fa fa-user-circle fa-spin"></span>  Login</a>
                </div>
            </div>
        
        </div>
        
	
</body>
</html>