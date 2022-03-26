package com.group15.sms.studentmanagementsystembe.controller;

import com.group15.sms.studentmanagementsystembe.dao.OfficeAdminDao;
import com.group15.sms.studentmanagementsystembe.dao.TeacherDao;
import com.group15.sms.studentmanagementsystembe.model.OfficeAdmin;
import com.group15.sms.studentmanagementsystembe.model.Teacher;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EditTeacherServlet", value = "/EditTeacherServlet")
public class EditTeacherServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String teacherId = request.getParameter("teacherID");
        String f_name = request.getParameter("f_name");
        String l_name = request.getParameter("l_name");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String contact_no = request.getParameter("contact_no");

        Teacher teacher = new Teacher(teacherId,f_name,l_name,address,contact_no,email);

        TeacherDao teacherDao = new TeacherDao();

        try {
            teacherDao.updateTeacher(teacher);
        } catch (Exception e) {
            e.printStackTrace();
        }
        response.sendRedirect("ViewTeachersServlet");
    }
}
