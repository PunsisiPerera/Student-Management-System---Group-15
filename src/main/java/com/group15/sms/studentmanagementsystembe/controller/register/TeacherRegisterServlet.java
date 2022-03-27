package com.group15.sms.studentmanagementsystembe.controller.register;

import com.group15.sms.studentmanagementsystembe.dao.TeacherRegisterDao;
import com.group15.sms.studentmanagementsystembe.model.Teacher;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "TeacherRegisterServlet", value = "/TeacherRegisterServlet")
public class TeacherRegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String teacherID = request.getParameter("teacherID");
        String f_name = request.getParameter("user_name1");
        String l_name = request.getParameter("user_name2");
        String address = request.getParameter("useraddress");
        String contact_no = request.getParameter("usercontact");
        String email = request.getParameter("email");
        String password = request.getParameter("pass");

        Teacher teacher = new Teacher();

        teacher.setTeacherID(teacherID);
        teacher.setF_name(f_name);
        teacher.setL_name(l_name);
        teacher.setAddress(address);
        teacher.setContact_no(contact_no);
        teacher.setEmail(email);
        teacher.setPassword(password);


        TeacherRegisterDao teacherRegisterDao = new TeacherRegisterDao();
        try{
            teacherRegisterDao.registerTeacher(teacher);
            response.sendRedirect("admin/teacherregistration.jsp");
        }catch (ClassNotFoundException | SQLException e){
            e.printStackTrace();
        }

    }
}
