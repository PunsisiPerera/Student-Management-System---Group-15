package com.group15.sms.studentmanagementsystembe.controller;

import com.group15.sms.studentmanagementsystembe.dao.OfficeAdminDao;
import com.group15.sms.studentmanagementsystembe.dao.StudentDao;
import com.group15.sms.studentmanagementsystembe.model.OfficeAdmin;
import com.group15.sms.studentmanagementsystembe.model.Student;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "ViewEmployeeServlet", value = "/ViewEmployeeServlet")
public class ViewEmployeeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        OfficeAdminDao officeAdminDao = new OfficeAdminDao();
        try {
            List<OfficeAdmin> officeAdminList = officeAdminDao.selectAllEmployees();
            request.setAttribute("officeAdminList",officeAdminList);
            RequestDispatcher dispatcher = request.getRequestDispatcher("admin/viewEmployees.jsp");
            dispatcher.forward(request, response);
        }catch (ClassNotFoundException | SQLException e){
            e.printStackTrace();
        }

    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
