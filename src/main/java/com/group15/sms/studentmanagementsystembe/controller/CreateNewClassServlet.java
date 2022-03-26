package com.group15.sms.studentmanagementsystembe.controller;

import com.group15.sms.studentmanagementsystembe.dao.ClassDao;
import com.group15.sms.studentmanagementsystembe.model.NewClass;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "CreateNewClassServlet", value = "/CreateNewClassServlet")
public class CreateNewClassServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("name");
        int year = Integer.parseInt(request.getParameter("year"));
        int student_count = Integer.parseInt(request.getParameter("student_count"));
        String medium = request.getParameter("medium");
        String day = request.getParameter("day");
        String start_time = request.getParameter("start_time");
        String end_time = request.getParameter("end_time");
        String teacher = request.getParameter("teacher");
        String class_room = request.getParameter("class_room");
        String subject = request.getParameter("subject");

        NewClass newClass = new NewClass();

        newClass.setName(name);
        newClass.setYear(year);
        newClass.setStudent_count(student_count);
        newClass.setMedium(medium);
        newClass.setDay(day);
        newClass.setStart_time(start_time);
        newClass.setEnd_time(end_time);
        newClass.setTeacher(teacher);
        newClass.setClass_room(class_room);
        newClass.setSubject(subject);

        ClassDao classDao = new ClassDao();
        try {
            classDao.createClass(newClass);
            response.sendRedirect("admin/createnewclass.jsp");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

    }
}
