



package com.tech.blog.entities;

public class Post_Chat {
	private int pid;
    private String title;
    private String uname;

    public Post_Chat(int pid, String title, String description) {
        this.pid = pid;
        this.title = title;
        this.uname = uname;
    }

    public Post_Chat() {
    }

    public Post_Chat(String name, String description) {
        this.title = title;
        this.uname = uname;
    }

    public int getCid() {
        return pid;
    }

    public void setCid(int cid) {
        this.pid = pid;
    }

    public String gettitle() {
        return title;
    }

    public void settitle(String name) {
        this.title = title;
    }

    public String getuname() {
        return uname;
    }

    public void setuname(String description) {
        this.uname = description;
    }
    
    
    
    
    
}
