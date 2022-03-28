package com.group15.sms.studentmanagementsystembe.controller;

import com.group15.sms.studentmanagementsystembe.dao.InquiryDao;
import com.group15.sms.studentmanagementsystembe.model.Inquiry;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "EditInquiryServlet", value = "/EditInquiryServlet")
public class EditInquiryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int inqId = Integer.parseInt(request.getParameter("inquiryID"));
        String status = request.getParameter("status");

        Inquiry inquiry = new Inquiry(inqId,status);

        InquiryDao inquiryDao = new InquiryDao();

        try {
            inquiryDao.updateInquiry(inquiry);
        } catch (Exception e) {
            e.printStackTrace();
        }

        response.sendRedirect("InquiryServlet");

    }
}
