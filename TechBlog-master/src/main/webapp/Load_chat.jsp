<%@page import="com.tech.blog.entities.User"%>
<%@page import="com.tech.blog.dao.LikeDao"%>
<%@page import="com.tech.blog.entities.Post"%>
<%@page import="com.tech.blog.entities.Chat"%>
<%@page import="java.util.List"%>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page import="com.tech.blog.dao.PostDao"%>
<%@page import="com.tech.blog.dao.ChatDao"%>



<div class="row">

    <%
        
        User uuu=(User)session.getAttribute("currentUser");
        
        Thread.sleep(1000);
        ChatDao d = new ChatDao(ConnectionProvider.getConnection());
        
        int pId = Integer.parseInt(request.getParameter("pId"));
        List<Chat> chat = null;
        if (pId == 0) {
            chat = d.getAllChats();
        } else {
            chat = d.getChatsByPostId(pId);
        }
        
        if (chat.size() == 0) {
            out.println("<h3 class='display-3 p-5 text-light text-center primary-background font-weight-bold'>No Chats in this Post..</h3>");
            return;
        }
        
        for (Chat c : chat) {
    %>

    <div class="col-md-6 mt-2">
        <div class="card">
            <div class="card-body">
                <b><%= c.getpTitle()%></b>

            </div>
            <div class="card-footer primary-background text-center">
                <% 
                    LikeDao ld = new LikeDao(ConnectionProvider.getConnection());
                %>

                <a href="#!" onclick="doLike(<%= c.getcid()%>,<%= uuu.getId()%>)" class="btn btn-outline-light btn-sm"> <i class="fa fa-thumbs-o-up"></i> <span class="like-counter"><%= ld.countLikeOnPost(c.getmid())%></span>  </a>

                <a href="profile.jsp?chat_id=<%= c.getmid()%>" class="btn btn-outline-light btn-sm">Read More...</a>
                <a href="show_chat.jsp" class="btn btn-outline-light btn-sm"> <i class="fa fa-commenting-o"></i>   </a>
            </div>

        </div>


    </div>


    <%
        }
        

    %>

</div>