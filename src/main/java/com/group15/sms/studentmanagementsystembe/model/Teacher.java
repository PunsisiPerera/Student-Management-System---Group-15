package com.group15.sms.studentmanagementsystembe.model;

public class Teacher {
    private String teacherID;
    private String f_name;
    private String l_name;
    private String address;
    private String email;
    private String password;
    private String contact_no;
    private String security;

    public Teacher() {
    }

    public Teacher(String teacherID, String f_name, String l_name, String address, String email, String password, String contact_no, String security) {
        this.teacherID = teacherID;
        this.f_name = f_name;
        this.l_name = l_name;
        this.address = address;
        this.email = email;
        this.password = password;
        this.contact_no = contact_no;
        this.security = security;
    }

    public String getTeacherID() {
        return teacherID;
    }

    public void setTeacherID(String teacherID) {
        this.teacherID = teacherID;
    }

    public String getF_name() {
        return f_name;
    }

    public void setF_name(String f_name) {
        this.f_name = f_name;
    }

    public String getL_name() {
        return l_name;
    }

    public void setL_name(String l_name) {
        this.l_name = l_name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getContact_no() {
        return contact_no;
    }

    public void setContact_no(String contact_no) {
        this.contact_no = contact_no;
    }

    public String getSecurity() {
        return security;
    }

    public void setSecurity(String security) {
        this.security = security;
    }
}
