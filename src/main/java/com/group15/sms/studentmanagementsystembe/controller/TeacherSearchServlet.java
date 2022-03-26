package com.group15.sms.studentmanagementsystembe.controller;

import com.group15.sms.studentmanagementsystembe.dao.TeacherDao;
import com.group15.sms.studentmanagementsystembe.model.Teacher;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "TeacherSearchServlet", value = "/TeacherSearchServlet")
public class TeacherSearchServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String teacherID = request.getParameter("teacherID");
        TeacherDao teacherDao = new TeacherDao();
        Teacher selectedTeacher = teacherDao.searchTeacher(teacherID);

        request.setAttribute("teacherID", teacherID);
        RequestDispatcher view = request.getRequestDispatcher("admin/editTeacher.jsp");
        request.setAttribute("selectedTeacher",selectedTeacher);
        view.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
