package com.group15.sms.studentmanagementsystembe.model;

public class Student {
    private String studentID;
    private String f_name;
    private String l_name;
    private String address;
    private String email;
    private String password;
    private String confPassword;
    private String qrCode;
    private String contact_no;
    private String security;

    public Student() {
    }

    public Student(String studentID, String f_name, String l_name, String address, String email, String password, String confPassword, String qrCode, String contact_no, String security) {
        this.studentID = studentID;
        this.f_name = f_name;
        this.l_name = l_name;
        this.address = address;
        this.email = email;
        this.password = password;
        this.confPassword = confPassword;
        this.qrCode = qrCode;
        this.contact_no = contact_no;
        this.security = security;
    }

    public Student(String studentID, String f_name, String l_name, String address, String email, String contact_no) {
        this.studentID = studentID;
        this.f_name = f_name;
        this.l_name = l_name;
        this.address = address;
        this.email = email;
        this.contact_no = contact_no;
    }

    public String getConfPassword() {
        return confPassword;
    }

    public void setConfPassword(String confPassword) {
        this.confPassword = confPassword;
    }

    public String getStudentID() {
        return studentID;
    }

    public void setStudentID(String studentID) {
        this.studentID = studentID;
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

    public String getQrCode() {
        return qrCode;
    }

    public void setQrCode(String qrCode) {
        this.qrCode = qrCode;
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
