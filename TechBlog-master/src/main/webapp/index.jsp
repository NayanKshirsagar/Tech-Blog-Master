
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <!--css-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- fa5-$-css -->
   		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css" integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ" crossorigin="anonymous">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .banner-background{
             clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 91%, 63% 100%, 22% 91%, 0 99%, 0 0);
            }
            .primary-background{
	background-color:  #32074d !important ;
	}
	.backg{
            background: url(img/future.jpg);
            background-attachment: fixed;
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
        }
      .text-color{
	color: #32074d !important ;
		}
		
		
		
		
.back-pic{
    background-color: #380c17;
}
.xyz-carousel{
    min-width: 576px;
}
.xyz-caption{
    background-color: rgba(0, 0, 0,0.4);
}
.footer{
    height: 400px;
    width: 100%;
    background-color: black;
}
.footer-name{
    margin-top: 10%;
    font-size:25px;
    text-align: left;
    font-weight: bold;
    color: white;
}
.foot-containt{
    margin-top: 60px ;
    margin-left: 10% ;
    width: 200px;
    background-color: black !important;
}
.footer-list{
    margin-top: 10px;
}
.extra{
    padding-top: 10px;
}
.footer-list a{
    text-align: left;
    font-weight: bold;
    font-size: 15px;
    color:#8c9597;
    text-decoration: none;
}
.copyright{
    width: 100%;
    margin-top: 50px;
    text-align: center;
    color:white;
    font-size: 15px;
}
.graytext{
    color:#8c9597;
    text-decoration: none;
}
.link:hover{
    text-decoration: underline;
}
.footer-list a:hover{
    color: #e9aaba;
}
		
		
		
		
        </style>

    </head>
    <body class="primary-background">

        <!--navbar-->
        <%@include file="normal_navbar.jsp" %>

        <!--//banner-->

        <div class="container-fluid p-0 m-0">

            <div class="jumbotron backg text-white banner-background">
                <div class="container">
                    <h3 class="display-4 font-weight-bold">Welcome to TechBlog</h3>

                    <p><b>Welcome to technical blog, world of technology
                        A programming language is a formal language, which comprises a set of instructions that produce various kinds of output. Programming languages are used in computer programming to implement algorithms.
                    </b></p>
                    <p><b>
                        Most programming languages consist of instructions for computers. There are programmable machines that use a set of specific instructions, rather than general programming languages. 
                    </b></p>
					<p><b>A programming language is a formal language comprising a set of strings that produce various kinds of machine code output.
			 Programming languages are one kind of computer language, and are used in computer programming to implement algorithms.
			 Most programming languages consist of instructions for computers. 
			 There are programmable machines that use a set of specific instructions, rather than general programming languages.</b></p>
			 <br>
                    <button class="btn btn-outline-light btn-lg"> <span class="fa 	fa fa-user-plus"></span>  Start ! its Free</button>
                    <a href="login_page.jsp" class="btn btn-outline-light btn-lg"> <span class="fa fa-user-circle fa-spin"></span>  Login</a>

                </div>
            </div>






        </div>



        <!--//cards-->

<!--         <div class="container primary-background">

            <div class="row mb-2">

                <div class="col-md-4">
                    <div class="card" >

                        <div class="card-body">
                            <h5 class="card-title">Java Programming</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background text-white">Read more</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card" >

                        <div class="card-body">
                            <h5 class="card-title">Java Programming</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background text-white">Read more</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card" >

                        <div class="card-body">
                            <h5 class="card-title">Java Programming</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background text-white">Read more</a>
                        </div>
                    </div>
                </div>


            </div>




            <div class="row">

                <div class="col-md-4">
                    <div class="card" >

                        <div class="card-body">
                            <h5 class="card-title">Java Programming</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background text-white">Read more</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card" >

                        <div class="card-body">
                            <h5 class="card-title">Java Programming</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background text-white">Read more</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card" >

                        <div class="card-body">
                            <h5 class="card-title">Java Programming</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background text-white">Read more</a>
                        </div>
                    </div>
                </div>


            </div>

        </div> -->

<section id="langinfo">
	<div class="container primary-background" >
		<div class="row m-4 pb-4">
			<div class="col-md-4">
				<div class="card">
					 <div class="card-header">
					    <h5 class="card-title">Java Programming</h5>
					  </div>
					  <div class="card-body">
					    Our core Java programming tutorial is designed for students and working professionals. Java is an object-oriented, class-based, concurrent, secured and general-purpose computer-programming language. It is a widely used robust technology.Java works on different platforms (Windows, Mac, Linux, Raspberry Pi, etc.)·
					  </div>
					   <div class="card-footer">
					    <a href="#" class="btn primary-background text-white">Read More...</a>
					  </div>
					</div>		
			</div>
			<div class="col-md-4">
				<div class="card">
					 <div class="card-header">
					    <h5 class="card-title">C Programming</h5>
					  </div>
					  <div class="card-body">
					    C is a powerful general-purpose programming language. It can be used to develop software like operating systems, databases, compilers, and so on. C programming is an excellent language to learn to program for beginners.
Our C tutorials will guide you to learn C programming one step at a time.
					  </div>
					   <div class="card-footer">
					    <a href="#" class="btn primary-background text-white">Read More...</a>
					  </div>
					</div>	
			</div>
			<div class="col-md-4">
				<div class="card">
					 <div class="card-header">
					    <h5 class="card-title">C++ Programming</h5>
					  </div>
					  <div class="card-body">
					    C++ is a powerful general-purpose programming language. It can be used to develop operating systems, browsers, games, and so on. C++ supports different ways of programming like procedural, object-oriented, functional, and so on.
					     <br>This makes C++ powerful as well as flexible.
					  </div>
					   <div class="card-footer">
					    <a href="#" class="btn primary-background text-white">Read More...</a>
					  </div>
					</div>
			</div>
		</div>
		
		<div class="row m-4 pb-4">
			<div class="col-md-4">
				<div class="card">
					 <div class="card-header">
					    <h5 class="card-title">C# Programming</h5>
					  </div>
					  <div class="card-body">
					    C# is a simple, modern, general-purpose, object-oriented programming language developed by Microsoft within its .NET initiative led by Anders Hejlsberg.<br> This tutorial will teach you basic C# programming and will also take you through various advanced concepts related to C# programming language.
					  </div>
					   <div class="card-footer">
					    <a href="#" class="btn primary-background text-white">Read More...</a>
					  </div>
					</div>		
			</div>
			<div class="col-md-4">
				<div class="card">
					 <div class="card-header">
					    <h5 class="card-title">Python Programming</h5>
					  </div>
					  <div class="card-body">
					    Python is an easy to learn, powerful programming language. It has efficient high-level data structures and a simple but effective approach to object-oriented programming. Python elegant syntax and dynamic typing, together with its interpreted nature, make it an ideal language for scripting and rapid application development.
					  </div>
					   <div class="card-footer">
					    <a href="#" class="btn primary-background text-white">Read More...</a>
					  </div>
					</div>	
			</div>
			<div class="col-md-4">
				<div class="card">
					 <div class="card-header">
					    <h5 class="card-title">HTML</h5>
					  </div>
					  <div class="card-body">
					    HTML (HyperText Markup Language) is the most basic building block of the Web.<br> It defines the meaning and structure of web content.<br> Other technologies besides HTML are generally used to describe a web page's appearance/presentation (CSS) or functionality/behavior (JavaScript).
					  </div>
					   <div class="card-footer">
					    <a href="#" class="btn primary-background text-white">Read More...</a>
					  </div>
					</div>
			</div>
		</div>
	</div>
</section>
<div class="footer">
          <div class="row">
              <div class="col-4">
                <div class="foot-containt">
                    <div class="footer-name">PRODUCTS</div>
                    <div class="footer-list extra">
                        <a href="">>  Our Work</a>
                    </div>
                    <div class="footer-list">
                        <a href="">>  Club</a>
                    </div>
                    <div class="footer-list">
                        <a href="">>  News</a>
                    </div>
                    <div class="footer-list">
                        <a href="">>  Announcement</a>
                    </div>
                </div>
            </div>
            <div class="col-4">
                <div class="foot-containt ">
                    <div class="footer-name">INFORMATION</div>
                    <div class="footer-list extra">
                        <a href="">>  Pricing</a>
                    </div>
                    <div class="footer-list">
                        <a href="">>  Terms</a>
                    </div>
                    <div class="footer-list">
                        <a href="">>  Affiliates</a>
                    </div>
                    <div class="footer-list">
                        <a href="">>  Blog</a>
                    </div>
                </div>
            </div>
            <div class="col-4">
                <div class="foot-containt">
                    <div class="footer-name">SUPPORT</div>
                    <div class="footer-list extra">
                        <a href="">>  Documentation</a>
                    </div>
                    <div class="footer-list">
                        <a href="">>  FAQs</a>
                    </div>
                    <div class="footer-list">
                        <a href="">>  Forms</a>
                    </div>
                    <div class="footer-list">
                        <a href="">>  Contact</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright">
            <p><a href="" class="graytext link">Nayan_Kshirsagar </a> <i class="fas fa-copyright"></i> Copyright2017.All Rights Reserved.</p>
        </div>
    </div>	

        <!--javascripts-->
        <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/myjs.js" type="text/javascript"></script>

    </body>
</html>
