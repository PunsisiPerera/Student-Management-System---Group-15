package com.group15.sms.studentmanagementsystembe.controller.register;

import com.group15.sms.studentmanagementsystembe.dao.EmployeeRegisterDao;
import com.group15.sms.studentmanagementsystembe.model.OfficeAdmin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "EmployeeRegisterServlet", value = "/EmployeeRegisterServlet")
public class EmployeeRegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("called");
        String f_name = request.getParameter("user_name1");
        String l_name = request.getParameter("user_name2");
        String position = request.getParameter("userposition");
        String address = request.getParameter("useraddress");
        String contact_no = request.getParameter("usercontact");
        String email = request.getParameter("email");
        String password = request.getParameter("pass");

        OfficeAdmin officeAdmin = new OfficeAdmin();

        officeAdmin.setF_name(f_name);
        officeAdmin.setL_name(l_name);
        officeAdmin.setAddress(address);
        officeAdmin.setEmail(email);
        officeAdmin.setContact_no(contact_no);
        officeAdmin.setPosition(position);
        officeAdmin.setPassword(password);

        EmployeeRegisterDao employeeRegisterDao = new EmployeeRegisterDao();
        try{
            employeeRegisterDao.registerEmployee(officeAdmin);
            response.sendRedirect("admin/employeeregistration.jsp");
        }catch (ClassNotFoundException | SQLException e){
            e.printStackTrace();
        }


    }
}
