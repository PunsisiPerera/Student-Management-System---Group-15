package com.group15.sms.studentmanagementsystembe.controller;

import com.group15.sms.studentmanagementsystembe.dao.InquiryDao;
import com.group15.sms.studentmanagementsystembe.model.Inquiry;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "InquiryServlet", value = "/InquiryServlet")
public class InquiryServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        InquiryDao inquiryDao = new InquiryDao();
        try {
            List <Inquiry>  inquiryList = inquiryDao.selectAllInquiry();
            request.setAttribute("inquiryList",inquiryList);
            RequestDispatcher dispatcher = request.getRequestDispatcher("admin/inquiry.jsp");
            dispatcher.forward(request, response);
        }catch (ClassNotFoundException | SQLException e){
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String email = request.getParameter("email");
        String subject = request.getParameter("subject");
        String inquiry = request.getParameter("inquiry");
        String date = request.getParameter("date");
        String status = request.getParameter("status");

        Inquiry inq = new Inquiry();

        inq.setEmail(email);
        inq.setSubject(subject);
        inq.setInquiry(inquiry);
        inq.setDate(date);
        inq.setStatus(status);

        InquiryDao inquiryDao = new InquiryDao();
        try {
            inquiryDao.addInquiry(inq);
            response.sendRedirect("help.jsp");
        }catch (ClassNotFoundException | SQLException e){
            e.printStackTrace();
        }

    }
}
