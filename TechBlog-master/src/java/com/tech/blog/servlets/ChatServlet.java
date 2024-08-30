package com.tech.blog.servlets;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.tech.blog.dao.ChatDao;
import com.tech.blog.dao.PostDao;
import com.tech.blog.entities.Category;
import com.tech.blog.entities.Chat;
import com.tech.blog.entities.Post;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;
import com.tech.blog.helper.Helper;

public class ChatServlet {
	
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
        	//int pid= Integer.parseInt("pid");
            //int cid = Integer.parseInt(request.getParameter("cid"));
           // int uid = Integer.parseInt("uid");
            String pTitle = request.getParameter("pTitle");
            String msg = request.getParameter("msg");
            
            
            
      //      String imageFileName=part.getSubmittedFileName();
            
            
//            getting currentuser id
            HttpSession session = request.getSession();
            User user = (User) session.getAttribute("currentUser");
            Category cat=(Category) session.getAttribute("currentUser");
            Post post=(Post) session.getAttribute("currentUser");

//            out.println("your post title is " + pTitle);
//            out.println(part.getSubmittedFileName());
            Chat c = new Chat(post.getPid(), cat.getCid(), user.getId(),post.getpTitle(), msg, null);
            ChatDao dao = new ChatDao(ConnectionProvider.getConnection());
            if (dao.saveChat(c)) {
                out.println("done");
            } else {
                out.println("error");
            }

        }
    }

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>


}
