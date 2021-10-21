package com.group15.sms.studentmanagementsystembe.controller;

import com.group15.sms.studentmanagementsystembe.dao.TeacherDao;
import com.group15.sms.studentmanagementsystembe.model.Inquiry;
import com.group15.sms.studentmanagementsystembe.model.Teacher;


import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "ViewTeachersServlet", value = "/ViewTeachersServlet")
public class ViewTeachersServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TeacherDao teacherDao = new TeacherDao();
        try {
            List<Teacher> teacherList = teacherDao.selectAllTeachers();
            request.setAttribute("teacherList",teacherList);
            RequestDispatcher dispatcher = request.getRequestDispatcher("admin/viewTeachers.jsp");
            dispatcher.forward(request, response);
        }catch (ClassNotFoundException | SQLException e){
            e.printStackTrace();
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
