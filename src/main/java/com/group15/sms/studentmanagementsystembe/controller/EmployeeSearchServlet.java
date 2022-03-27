package com.group15.sms.studentmanagementsystembe.controller;

import com.group15.sms.studentmanagementsystembe.dao.OfficeAdminDao;
import com.group15.sms.studentmanagementsystembe.dao.StudentDao;
import com.group15.sms.studentmanagementsystembe.model.OfficeAdmin;
import com.group15.sms.studentmanagementsystembe.model.Student;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EmployeeSearchServlet", value = "/EmployeeSearchServlet")
public class EmployeeSearchServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int empId = Integer.parseInt(request.getParameter("empId"));
        OfficeAdminDao officeAdminDao = new OfficeAdminDao();
        OfficeAdmin selectedOfficeAdmin = officeAdminDao.searchOfficeAdmin(empId);

        request.setAttribute("empID", empId);
        RequestDispatcher view = request.getRequestDispatcher("admin/editEmployee.jsp");
        request.setAttribute("selectedOfficeAdmin",selectedOfficeAdmin);
        view.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
