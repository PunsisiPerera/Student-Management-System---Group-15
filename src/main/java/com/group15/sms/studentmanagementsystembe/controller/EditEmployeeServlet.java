package com.group15.sms.studentmanagementsystembe.controller;

import com.group15.sms.studentmanagementsystembe.dao.OfficeAdminDao;
import com.group15.sms.studentmanagementsystembe.dao.StudentDao;
import com.group15.sms.studentmanagementsystembe.model.OfficeAdmin;
import com.group15.sms.studentmanagementsystembe.model.Student;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EditEmployeeServlet", value = "/EditEmployeeServlet")
public class EditEmployeeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int empID = Integer.parseInt(request.getParameter("empID"));
        String f_name = request.getParameter("f_name");
        String l_name = request.getParameter("l_name");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String contact_no = request.getParameter("contact_no");
        String position = request.getParameter("position");

        OfficeAdmin officeAdmin = new OfficeAdmin(empID,f_name,l_name,address,email,contact_no,position);

        OfficeAdminDao officeAdminDao = new OfficeAdminDao();
        try {
            officeAdminDao.updateOfficeAdmin(officeAdmin);
        } catch (Exception e) {
            e.printStackTrace();
        }
        response.sendRedirect("ViewEmployeeServlet");
    }
}
