package com.group15.sms.studentmanagementsystembe.controller;

import com.group15.sms.studentmanagementsystembe.dao.InquiryDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "DeleteInquiryServlet", value = "/DeleteInquiryServlet")
public class DeleteInquiryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int inqId = Integer.parseInt(request.getParameter("inqId"));
        InquiryDao inquiryDao = new InquiryDao();

        try {
            inquiryDao.deleteInquiry(inqId);
        } catch (Exception e) {
            e.printStackTrace();
        }
        response.sendRedirect("InquiryServlet");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
