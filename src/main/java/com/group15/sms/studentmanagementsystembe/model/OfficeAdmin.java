package com.group15.sms.studentmanagementsystembe.model;

public class OfficeAdmin {
    private int staffID;
    private String f_name;
    private String l_name;
    private String address;
    private String contact_no;
    private String email;
    private String password;
    private String position;
   // private String date_joined;
    private String security;

    public OfficeAdmin() {
    }

    public OfficeAdmin(int staffID, String f_name, String l_name, String address, String contact_no, String email, String password, String position, String security) {
        this.staffID = staffID;
        this.f_name = f_name;
        this.l_name = l_name;
        this.address = address;
        this.contact_no = contact_no;
        this.email = email;
        this.password = password;
        this.position = position;
        this.security = security;
    }

    public OfficeAdmin(int staffID, String f_name, String l_name, String address, String email, String contact_no, String position) {
        this.staffID =staffID;
        this.f_name = f_name;
        this.l_name = l_name;
        this.address = address;
        this.contact_no = contact_no;
        this.email = email;
        this.position = position;
    }


    public int getStaffID() {
        return staffID;
    }

    public void setStaffID(int staffID) {
        this.staffID = staffID;
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

    public String getContact_no() {
        return contact_no;
    }

    public void setContact_no(String contact_no) {
        this.contact_no = contact_no;
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

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

//    public String getDate_joined() {
//        return date_joined;
//    }
//
//    public void setDate_joined(String date_joined) {
//        this.date_joined = date_joined;
//    }

    public String getSecurity() {
        return security;
    }

    public void setSecurity(String security) {
        this.security = security;
    }
}
