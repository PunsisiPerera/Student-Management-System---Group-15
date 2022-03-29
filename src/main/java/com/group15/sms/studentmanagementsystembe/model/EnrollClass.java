package com.group15.sms.studentmanagementsystembe.model;

public class EnrollClass {

    String enroll_id;
    String year;
    String subject;
    String stream;
    String medium;
    String class_name;
    String teacher;
    String day;
    String time;
    String fees;

    public EnrollClass() {
    }

    public EnrollClass(String enroll_id,String year, String subject, String stream, String medium, String class_ame, String teacher, String day, String time, String fees) {
        this.enroll_id = enroll_id;
        this.year = year;
        this.subject = subject;
        this.stream = stream;
        this.medium = medium;
        this.class_name = class_ame;
        this.teacher = teacher;
        this.day = day;
        this.time = time;
        this.fees = fees;
    }

    public EnrollClass(String class_name, String teacher, String day, String time, String class_fee) {
        this.class_name = class_name;
        this.teacher = teacher;
        this.day = day;
        this.time = time;
        this.fees = class_fee;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getEnroll_id() {
        return enroll_id;
    }

    public void setEnroll_id(String enroll_id) {
        this.enroll_id = enroll_id;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getStream() {
        return stream;
    }

    public void setStream(String stream) {
        this.stream = stream;
    }

    public String getMedium() {
        return medium;
    }

    public void setMedium(String medium) {
        this.medium = medium;
    }

    public String getClass_name() {
        return class_name;
    }

    public void setClass_name(String class_name) {
        this.class_name = class_name;
    }

    public String getTeacher() {
        return teacher;
    }

    public void setTeacher(String teacher) {
        this.teacher = teacher;
    }

    public String getDay() {
        return day;
    }

    public void setDay(String day) {
        this.day = day;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getFees() {
        return fees;
    }

    public void setFees(String fees) {
        this.fees = fees;
    }
}
