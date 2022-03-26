package com.group15.sms.studentmanagementsystembe.model;

public class NewClass {

    private int classID;
    private String name;
    private int year;
    private int student_count;
    private String medium;
    private String day;
    private String start_time;
    private String end_time;
    private String teacher;
    private String class_room;
    private String subject;

    public NewClass() {
    }

    public NewClass(int classID, String name, int year, int student_count, String medium, String day, String start_time, String end_time, String teacher, String class_room, String subject) {
        this.classID = classID;
        this.name = name;
        this.year = year;
        this.student_count = student_count;
        this.medium = medium;
        this.day = day;
        this.start_time = start_time;
        this.end_time = end_time;
        this.teacher = teacher;
        this.class_room = class_room;
        this.subject = subject;
    }

    public int getClassID() {
        return classID;
    }

    public void setClassID(int classID) {
        this.classID = classID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public int getStudent_count() {
        return student_count;
    }

    public void setStudent_count(int student_count) {
        this.student_count = student_count;
    }

    public String getMedium() {
        return medium;
    }

    public void setMedium(String medium) {
        this.medium = medium;
    }

    public String getDay() {
        return day;
    }

    public void setDay(String day) {
        this.day = day;
    }

    public String getStart_time() {
        return start_time;
    }

    public void setStart_time(String start_time) {
        this.start_time = start_time;
    }

    public String getEnd_time() {
        return end_time;
    }

    public void setEnd_time(String end_time) {
        this.end_time = end_time;
    }

    public String getTeacher() {
        return teacher;
    }

    public void setTeacher(String teacher) {
        this.teacher = teacher;
    }

    public String getClass_room() {
        return class_room;
    }

    public void setClass_room(String class_room) {
        this.class_room = class_room;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }
}
