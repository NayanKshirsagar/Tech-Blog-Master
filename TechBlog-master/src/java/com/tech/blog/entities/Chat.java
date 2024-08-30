

package com.tech.blog.entities;

import java.sql.*;

public class Chat {

    private int mid;
    private int pid;
    private int cid;
    private int uid;
    private String pTitle;
    private String msg;
    private Timestamp pDate;


    public Chat() {
    }

    public Chat(int mid,int pid,int cid,int uid,String pTitle,String msg,Timestamp pDate) {
    	this.mid = mid;
    	this.pid = pid;
    	this.cid = cid;
    	this.uid = uid;
        this.pTitle = pTitle;
        this.msg = msg;
        this.pDate = pDate;
    }
    public Chat(int pid,int cid,int uid,String pTitle,String msg,Timestamp pDate) {
    	this.pid = pid;
    	this.cid = cid;
    	this.uid = uid;
        this.pTitle = pTitle;
        this.msg = msg;
        this.pDate = pDate;
    }
    public Chat(int mid,int pid,int cid,int uid,String msg,Timestamp pDate) {
    	this.mid = mid;
    	this.pid = pid;
    	this.cid = cid;
    	this.uid = uid;
        this.pTitle = pTitle;
        this.msg = msg;
        this.pDate = pDate;
    }
    public Chat(int mid,String pTitle,String msg,Timestamp pDate) {
    	this.mid = mid;
        this.pTitle = pTitle;
        this.msg = msg;
        this.pDate = pDate;
    }
    


    
    public int getmid() {
        return mid;
    }

    public void setmid(int mid) {
        this.mid = mid;
    }
    
    public int getpid() {
        return pid;
    }

    public void setpid(int pid) {
        this.pid = pid;
    }
    
    public int getcid() {
        return cid;
    }

    public void setcid(int cid) {
        this.cid = cid;
    }
    
    public int getuid() {
        return uid;
    }

    public void setuid(int uid) {
        this.uid = uid;
    }
    
    
    
    public String getpTitle() {
        return pTitle;
    }

    public void setpTitle(String pTitle) {
        this.pTitle = pTitle;
    }

    public String getmsg() {
        return msg;
    }

    public void setpContent(String msg) {
        this.msg = msg;
    }

    public Timestamp getpDate() {
        return pDate;
    }

    public void setpDate(Timestamp pDate) {
        this.pDate = pDate;
    }



}
