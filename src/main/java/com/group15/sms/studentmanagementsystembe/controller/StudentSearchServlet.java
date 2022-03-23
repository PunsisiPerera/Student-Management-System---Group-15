package com.group15.sms.studentmanagementsystembe.controller;

import com.group15.sms.studentmanagementsystembe.dao.StudentDao;
import com.group15.sms.studentmanagementsystembe.model.Student;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "StudentSearchServlet", value = "/StudentSearchServlet")
public class StudentSearchServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String stdId = request.getParameter("stdId");
        StudentDao studentDao = new StudentDao();
        Student selectedStudent = studentDao.searchStudent(stdId);

        request.setAttribute("stdId", stdId);
        RequestDispatcher view = request.getRequestDispatcher("officeAdmin/editStudent.jsp");
        request.setAttribute("selectedStudent",selectedStudent);
        view.forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
