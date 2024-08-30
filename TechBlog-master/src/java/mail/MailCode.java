package mail;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;

public class MailCode {

	    public static void main(String[] args) {
	        
	    
	        String email = "nayankshirsagar0101@gmail.com";//request.getParameter("a");

	        final String username = "nayankshirsagar0101@gmail.com";////////
	        final String password = "143chakshu";
	        String smtphost = "smtp.gmail.com";
	        String compression = "TECH BLOG LOGIN SUCCESSFULLY.. ";
	        String from = username;/////////
	        String to = email;

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
	                    return new javax.mail.PasswordAuthentication(username,password);
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
	            myTransport.connect(smtphost,username,password);
	            msg.saveChanges();
	            myTransport.sendMessage(msg, msg.getAllRecipients());
	            myTransport.close();
	            //out.println("<script>alert('Password Sent!!!!!');window.location.assign('pwd_msg.html');</script>");
	            System.out.println(body);
	        } catch (MessagingException e) {
	            //e.printStackTrace();
	            System.out.println(e);
	        }
	        // TODO code application logic here
	    }

	}