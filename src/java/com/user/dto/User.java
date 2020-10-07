package com.user.dto;

/**
 *
 * @author Amit
 */
public class User {
    
    private int id;
    private String fname;
    private String lname;
    private String email;
    private String mobile;
    private String password;
    
    public String getFname() {
        return fname;
    }

    public String getLname() {
        return lname;
    }

    public String getEmail() {
        return email;
    }

    public String getMobile() {
        return mobile;
    }

    public String getPassword() {
        return password;
    }
    
    

    public User(String fname, String lname, String email, String mobile, String password) {
        this.fname = fname;
        this.lname = lname;
        this.email = email;
        this.mobile = mobile;
        this.password = password;
    }

}
