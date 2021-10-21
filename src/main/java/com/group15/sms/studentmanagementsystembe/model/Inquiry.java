package com.group15.sms.studentmanagementsystembe.model;

import java.util.Date;

public class Inquiry {
    private int inquiryID;
    private String subject;
    private String inquiry;
    private String date;
    private String status;
    private String email;

    public Inquiry() {
    }

    public Inquiry(int inquiryID,String subject, String inquiry, String date, String status, String email) {
        this.inquiryID = inquiryID;
        this.subject = subject;
        this.inquiry = inquiry;
        this.date = date;
        this.status = status;
        this.email = email;
    }

    public int getInquiryID() {
        return inquiryID;
    }

    public void setInquiryID(int inquiryID) {
        this.inquiryID = inquiryID;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getInquiry() {
        return inquiry;
    }

    public void setInquiry(String inquiry) {
        this.inquiry = inquiry;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
