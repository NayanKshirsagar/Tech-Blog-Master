<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.tech.blog.dao.LikeDao"%>
<%@page import="java.text.DateFormat"%>
<%@page import="com.tech.blog.dao.UserDao"%>
<%@page import="com.tech.blog.dao.ChatDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.tech.blog.entities.Category"%>
<%@page import="com.tech.blog.entities.Category"%>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page import="com.tech.blog.dao.PostDao"%>
<%@page import="com.tech.blog.entities.Post"%>
<%@page import="com.tech.blog.entities.User"%>
<%@page import="com.tech.blog.entities.*" %>
<%@page  errorPage="error_page.jsp" %>

<%

    User user = (User) session.getAttribute("currentUser");
    if (user == null) {
        response.sendRedirect("login_page.jsp");
    }


%>
<%    int mId = Integer.parseInt(request.getParameter("msg_id"));
	int pId = Integer.parseInt(request.getParameter("post_id"));
    ChatDao d = new ChatDao(ConnectionProvider.getConnection());
	PostDao pd= new PostDao(ConnectionProvider.getConnection());
    Chat p = d.getChatByChatId(mId);
    Post post=pd.getPostByPostId(pId);
    
%>
<!DOCTYPE html>
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%= p.getpTitle()%> || Comments </title>

        <!--css-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
			.primary-background{
				background-color: #32074d !important ;
				}


            .banner-background{
                clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 91%, 63% 100%, 22% 91%, 0 99%, 0 0);
            }
            .post-title{
                font-weight: 100;
                font-size: 30px;
            }
            .post-content{
                font-weight: 100;
                font-size: 25px;

            }
            .post-date{
                font-style: italic;
                font-weight: bold;
            }
            .post-user-info{
                font-size: 20px;

            }


            .row-user{
                border:1px solid #e2e2e2;
                padding-top: 15px;
            }

            body{
                background:url(img/back6.jpg);
                background-size: cover;
                background-attachment: fixed;
            }

        </style>
    </head>
<body>



        <!--navbar--> 

        <nav class="navbar navbar-expand-lg navbar-dark primary-background">
        
            <a class="navbar-brand" href="index.jsp"><span class="fa fa-cogs"></span>  TechBlog</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="profile.jsp"> <span class="	fa fa-bell-o"></span> LearnCode with TechBlog <span class="sr-only">(current)</span></a>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="	fa fa-check-square-o"></span> Categories
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">Programming Language</a>
                            <a class="dropdown-item" href="#">Project Implementation</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Data Structure</a>
                        </div>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="#"> <span class="	fa fa-address-card-o"></span> Contact</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="#" data-toggle="modal" data-target="#add-post-modal" > <span class="	fa fa-asterisk"></span> Do Post</a>
                    </li>



                </ul>

                <ul class="navbar-nav mr-right">
                    <li class="nav-item">
                        <a class="nav-link" href="#!" data-toggle="modal" data-target="#profile-modal"> <span class="fa fa-user-circle "></span> <%= user.getName()%> </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="LogoutServlet"> <span class="fa fa-user-plus "></span> Logout</a>
                    </li>
                </ul>
            </div>
        </nav>



<!-- <div class="container"> -->

<!--             <div class="row my-4"> -->

<!--                 <div class="col-md-8 offset-md-2"> -->


<!--                     <div class="card"> -->

<!--                         <div class="card-header primary-background text-white"> -->

<%--                             <h4 class="post-title"><%= p.getpTitle()%></h4> --%>


<!--                         </div> -->

<!--                         <div class="card-body"> -->

<%--                             <img class="card-img-top my-2" src="img/<%= post.getpPic()%>"> --%>


<!--                             <div class="row my-3 row-user"> -->
<!--                                 <div class="col-md-8"> -->
<%--                                     <% UserDao ud = new UserDao(ConnectionProvider.getConnection());%> --%>

<%--                                     <p class="post-user-info"> <a href="#!"> <%= ud.getUserByUserId(post.getUserId()).getName()%></a> has posted : </p> --%>
<!--                                 </div> -->

<!--                                 <div class="col-md-4"> -->
<%--                                     <p class="post-date"> <%=  DateFormat.getDateTimeInstance().format(post.getpDate())%>  </p> --%>
<!--                                 </div> -->
<!--                             </div> -->


<%--                             <p class="post-content"><%= post.getpContent()%></p>  --%>

<!--                             <br> -->
<!--                             <br> -->

<!--                             <div> -->
<!--                             	<p class="post-code"> -->
<%--                                 	<pre><%= post.getpCode()%></pre> --%>
<!--                                 </p> -->
<!--                             </div> -->

<!--                         </div> -->
<!--                         <div class="card-footer primary-background"> -->


<%--                             <% --%>
//                                 LikeDao ld = new LikeDao(ConnectionProvider.getConnection());
<%--                             %> --%>

<%--                             <a href="#!" onclick="doLike(<%= post.getPid()%>,<%= user.getId()%>)" class="btn btn-outline-light btn-sm"> <i class="fa fa-thumbs-o-up"></i> <span class="like-counter"><%= ld.countLikeOnPost(post.getPid())%></span>  </a> --%>
<!--                             <a href="#!" class="btn btn-outline-light btn-sm"> <i class="fa fa-commenting-o"></i>   </a> -->



<!--                         </div> -->



<!--                     </div> -->


<!--                 </div> -->

<!--             </div> -->

<!--         </div> -->



        <!--end of main content  of body-->




 <!-- add chat -->
        <div class="modal fade" id="add-chat-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Comment</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">

                        <form id="add-chat-form" action="ChatServlet" method="post" enctype="multipart/form-data">

                            <div class="form-group">
                                <select class="form-control" name="cid">
                                    <option selected disabled>---Select Comment---</option>

                                    <%
                                        ChatDao cd = new ChatDao(ConnectionProvider.getConnection());
                                        ArrayList<Post> list = cd.getAllPosts();
                                        for (Post c : list) {
                                    %>
                                    <option value="<%= c.getPid() %>"> <%= c.getpTitle()%></option>

                                    <%
                                        }
                                    %>
                                </select>
                            </div>

                          

                            <div class="form-group">
                                <textarea name="msg" class="form-control" style="height: 200px;" placeholder="Enter your Comment.."></textarea>
                            </div>
                    

                            <div class="container text-center">
                                <button type="submit" class="btn btn-outline-primary primary-background text-white">Post </button>
                            </div>

                        </form>


                    </div>

                </div>
            </div>
        </div>


        <!--END add chat modal-->
         <!--javascripts-->
        <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
        <script src="js/myjs.js" type="text/javascript"></script>

        <script>
//                                 $(document).ready(function () {
//                                     let editStatus = false;

//                                     $('#edit-profile-button').click(function ()
//                                     {

//                                         if (editStatus == false)
//                                         {
//                                             $("#profile-details").hide()

//                                             $("#profile-edit").show();
//                                             editStatus = true;
//                                             $(this).text("Back")
//                                         } else
//                                         {
//                                             $("#profile-details").show()

//                                             $("#profile-edit").hide();
//                                             editStatus = false;
//                                             $(this).text("Edit")

//                                         }


//                                     })
//                                 });

        </script>
        <!--now add post js-->
        <script>
            $(document).ready(function (e) {
                //
                $("#add-chat-form").on("submit", function (event) {
                    //this code gets called when form is submitted....
                    event.preventDefault();
                    console.log("you have clicked on submit..")
                    let form = new FormData(this);

                    //now requesting to server
                    $.ajax({
                        url: "ChatServlet",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            //success ..
                            console.log(data);
                            if (data.trim() == 'done')
                            {
                                swal("Thank You For Your Response !", "saved successfully", "success");
                            } else
                            {
                                swal("Error!!", "Something went wrong try again...", "error");
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            //error..
                            swal("Error!!", "Something went wrong try again...", "error");
                        },
                        processData: false,
                        contentType: false
                    })
                })
            })
        </script>
        
        
</body>
</html>