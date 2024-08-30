package com.tech.blog.dao;
import com.tech.blog.entities.Category;
import com.tech.blog.entities.Chat;
import com.tech.blog.entities.Post;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
public class ChatDao {
	
	
	
	
	Connection con;

    public ChatDao(Connection con) {
        this.con = con;
    }

   public ArrayList<Post> getAllPosts() {
        ArrayList<Post> list = new ArrayList<>();

        try {

            String q = "select * from posts";
            Statement st = this.con.createStatement();
            ResultSet set = st.executeQuery(q);
            while (set.next()) {
            	
            	int pid = set.getInt("pid");
            	int cid = set.getInt("cid");
            	int uid = set.getInt("uid");
                String pTitle = set.getString("pTitle");            	

                Post c = new Post(pid,cid, uid,pTitle);
                list.add(c);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
   
    public boolean saveChat(Chat p) {
        boolean f = false;
        try {

            String q = "insert into chats(pId,catId,userId,pTitle,msg) values(?,?,?,?,?)";
            PreparedStatement pstmt = con.prepareStatement(q);
            pstmt.setInt(1, p.getpid());
            pstmt.setInt(2, p.getcid());
            pstmt.setInt(3, p.getuid());
            pstmt.setString(4, p.getpTitle());
            pstmt.setString(5,p.getmsg());
            pstmt.executeUpdate();
            f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }

//    get all the posts
    public List<Chat> getAllChats() {

        List<Chat> list = new ArrayList<>();
        //fetch all the post
        try {

            PreparedStatement p = con.prepareStatement("select * from chats order by mid ");

            ResultSet set = p.executeQuery();

            while (set.next()) {

                int mid = set.getInt("mid");
                int pid = set.getInt("pid");
                int catId = set.getInt("catId");
                int userId  = set.getInt("userId");
                String pTitle = set.getString("pTitle");
                String msg = set.getString("msg");
                Timestamp date = set.getTimestamp("pDate");

                Chat ch = new Chat(mid, pid,catId, userId, pTitle, msg, date);

                list.add(ch);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Chat> getChatsByPostId(int pId) {
        List<Chat> list = new ArrayList<>();
        //fetch all post by id
        //fetch all the post
        try {

            PreparedStatement p = con.prepareStatement("select * from chats where pId=?");
            p.setInt(1, pId);
            ResultSet set = p.executeQuery();

            while (set.next()) {
            	int mid = set.getInt("mid");
            	int pid = set.getInt("pid");
                int catId = set.getInt("catId");
                int userId = set.getInt("userId");
                String pTitle = set.getString("pTitle");
                String msg = set.getString("msg");
                Timestamp date = set.getTimestamp("pDate");

                Chat ch = new Chat(mid,pId, catId, userId, pTitle, msg, date);

                list.add(ch);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public Chat getChatByChatId(int mid) {
        Chat ch = null;
        String q = "select * from chats where mid=?";
        try {
            PreparedStatement p = this.con.prepareStatement(q);
            p.setInt(1, mid);

            ResultSet set = p.executeQuery();

            if (set.next()) {

            //	int mid = set.getInt("mid");
            	int pid = set.getInt("pid");
                int catId = set.getInt("catId");
                int userId = set.getInt("userId");
                String pTitle = set.getString("pTitle");
                String msg = set.getString("msg");
                Timestamp date = set.getTimestamp("pDate");

                ch = new Chat(mid, pid, catId, userId, pTitle, msg, date);

            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return ch;
    }
}

	

