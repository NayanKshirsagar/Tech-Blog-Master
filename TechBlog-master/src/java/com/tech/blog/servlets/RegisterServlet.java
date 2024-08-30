/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tech.blog.servlets;

import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@MultipartConfig
public class RegisterServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
        	 String Email_Regex="^[\\w-\\+]+(\\.[\\w]+)*@[\\w-]+(\\.[\\w]+)*(\\.[a-z]{2,})$";
        	 String Password_Regex="^(?=.*[0-9])"
                     + "(?=.*[a-z])(?=.*[A-Z])"
                     + "(?=.*[@#$%^&+=])"
                     + "(?=\\S+$).{8,20}$";
        	 String name_Regex="^[a-zA-Z0-9]([._-](?![._-])|[a-zA-Z0-9]){3,18}[a-zA-Z0-9]$";

//            fetch all form data
            String check = request.getParameter("check");
            String name = request.getParameter("user_name");
            String email = request.getParameter("user_email");
            String password = request.getParameter("user_password");
            String gender = request.getParameter("gender");
            
            for(int num=0;num != 1;num++)
            {
            if (check == null) {
                out.println("box not checked");
                break;
            } 
            else if(name.isEmpty() || email.isEmpty() || 
    				password.isEmpty() || gender.isEmpty() )
    		{
            	out.println("....Fill The Details....");
            	break;
            	
    		}
            else if(!name.matches(name_Regex))
            {
            	out.println("Please Enter Username with "+"\n"+ "-Minimum 5 letters and You can't use Number in Username !");
            	//num=num+1;
            	//break;
            	break;
            }
            else if(!email.matches(Email_Regex)){
            	out.println("Please Provide Correct Email ID");
            	//num=num+1;
            	//break;
            	break;
            }
            
            else if(!password.matches(Password_Regex)){
            	out.println("Kindly Enter Password with Minimum eight characters, at least one uppercase letter, "
            		+ "one lowercase letter, one number and one special character");
            	//num=num+1;
            	//break;
            	break;
            }
            
            else if(num==0){
                //baki ka data yaha nikalna..
/*                String name = request.getParameter("user_name");
                String email = request.getParameter("user_email");
                String password = request.getParameter("user_password");
                String gender = request.getParameter("gender");
                
                
                */ 
               
               
                String about = request.getParameter("about");


  /*              if(name.isEmpty() || email.isEmpty() || 
        				password.isEmpty() || gender.isEmpty() )
        		{
                	out.println("....Fill The Details....");
        		}
                
               int num;
               for(num=0;num<4;num++) 
               {
                if(!name.matches(name_Regex))
                {
                	out.println("Please Enter Username with "+"\n"+ "-Minimum 5 letters and You can't use Number in Username !");
                	num=num+1;
                	break;
                }
                
                else if(!email.matches(Email_Regex)){
                	out.println("Please Provide Correct Email ID");
                	num=num+1;
                	break;
                }
                
                else if(!password.matches(Password_Regex)){
                	out.println("Kindly Enter Password with Minimum eight characters, at least one uppercase letter, "
                		+ "one lowercase letter, one number and one special character");
                	num=num+1;
                	break;
                }
                else
                {
                	num =5;
                }
                           
                
                
               }
               
                 */
               
         /*       if(name != null)
                {
                	UserDao d=new UserDao(ConnectionProvider.getConnection());
                	if(d.getallusers(name)==true)
                	{
                		out.println("This username already exist..");
                	}
                	
                }    
                
                
          */ 
            //create user object and set all data to that object..
            User user = new User(name, email, password, gender, about);

            //create a user daao object..
            UserDao dao = new UserDao(ConnectionProvider.getConnection());
               if (dao.saveUser(user))
                {
//                save..
                    out.println("done");
                } 
                else {
                    out.println("error");
                }
               
               
            String email_id = email;//request.getParameter("a");

   	        final String username = "nayankshirsagar0101@gmail.com";////////
   	        final String password_id = "143chakshu";
   	        String smtphost = "smtp.gmail.com";
   	        String compression = "TECH BLOG LOGIN SUCCESSFULLY.. ";
   	        String from = username;/////////
   	        String to = email_id;

   	        String body = "WELCOME TO TECH BLOG";
   	        Transport myTransport = null;
   	        try {
   	            Properties props = System.getProperties();
   	            props.put("mail.smtp.user", username);
   	            props.put("mail.smtp.host", "smtp.gmail.com");
   	            props.put("mail.smtp.port", "465");//465 587 
   	            props.put("mail.smtp.starttls.enable", "true");
   	            props.put("mail.smtp.debug", "true");
   	            props.put("mail.smtp.auth", "true");
   	            props.put("mail.smtp.socketFactory.port", "465");
   	            props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
   	            props.put("mail.smtp.socketFactory.fallback", "false");

   	            // Session mailSession =Session.getDefaultInstance(props,null);
   	            Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {
   	                protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
   	                    return new javax.mail.PasswordAuthentication(username,password_id);
   	                }
   	            });

   	            Message msg = new MimeMessage(mailSession);
   	            msg.setFrom(new InternetAddress(from));
   	            InternetAddress[] address = {new InternetAddress(to)};
   	            msg.setRecipients(Message.RecipientType.TO, address);
   	            msg.setSubject(compression);
   	            msg.setText(body);
   	            msg.setSentDate(new java.util.Date());

   	            myTransport = mailSession.getTransport("smtp");
   	            myTransport.connect(smtphost,username,password_id);
   	            msg.saveChanges();
   	            myTransport.sendMessage(msg, msg.getAllRecipients());
   	            myTransport.close();
   	            //out.println("<script>alert('Password Sent!!!!!');window.location.assign('pwd_msg.html');</script>");
   	            System.out.println(body);
   	        } catch (MessagingException e) {
   	            //e.printStackTrace();
   	            System.out.println(e);
   	        }
               
               
               
               break;
            }
            else {
            	num=0;
            	break;
            }
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
    @Override
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
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
