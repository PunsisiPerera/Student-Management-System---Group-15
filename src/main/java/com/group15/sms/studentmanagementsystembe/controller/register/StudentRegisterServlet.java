package com.group15.sms.studentmanagementsystembe.controller.register;

import com.group15.sms.studentmanagementsystembe.dao.StudentRegisterDao;
import com.group15.sms.studentmanagementsystembe.model.Student;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "StudentRegisterServlet", value = "/StudentRegisterServlet")
public class StudentRegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("called");
        String studentID = request.getParameter("id");
        String f_name = request.getParameter("user_name1");
        String l_name = request.getParameter("user_name2");
        String address = request.getParameter("useraddress");
        String email = request.getParameter("email");
        String password = request.getParameter("pass");
        String confPassword = request.getParameter("confpass");

        String contact_no = request.getParameter("usercontact");


        Student student = new Student();

        student.setStudentID(studentID);
        student.setF_name(f_name);
        student.setL_name(l_name);
        student.setAddress(address);
        student.setEmail(email);
        student.setPassword(password);
        student.setConfPassword(confPassword);

        student.setContact_no(contact_no);


        StudentRegisterDao studentRegisterDao = new StudentRegisterDao();
        try {
            studentRegisterDao.registerStudent(student);
            response.sendRedirect("officeAdmin/studentRegistration.jsp");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}
