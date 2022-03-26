package com.group15.sms.studentmanagementsystembe.controller;

import com.group15.sms.studentmanagementsystembe.dao.OfficeAdminDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteEmployeeServlet", value = "/DeleteEmployeeServlet")
public class DeleteEmployeeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int staffID = Integer.parseInt(request.getParameter("staffID"));
        try {
            OfficeAdminDao officeAdminDao = new OfficeAdminDao();
            officeAdminDao.deleteOfficeAdmin(staffID);
        }catch (Exception e){
            e.printStackTrace();
        }
        response.sendRedirect("ViewEmployeeServlet");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
