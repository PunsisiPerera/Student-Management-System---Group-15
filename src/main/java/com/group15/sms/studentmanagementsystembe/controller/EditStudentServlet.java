package com.group15.sms.studentmanagementsystembe.controller;

import com.group15.sms.studentmanagementsystembe.dao.StudentDao;
import com.group15.sms.studentmanagementsystembe.model.Student;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "EditStudentServlet", value = "/EditStudentServlet")
public class EditStudentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String studentID = request.getParameter("studentID");
        String f_name = request.getParameter("f_name");
        String l_name = request.getParameter("l_name");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String contact_no = request.getParameter("contact_no");

        Student student = new Student(studentID,f_name,l_name,address,email,contact_no);

        StudentDao studentDao = new StudentDao();
        try {
            studentDao.updateStudent(student);
        } catch (Exception e) {
            e.printStackTrace();
        }
        response.sendRedirect("ViewStudentServlet");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
