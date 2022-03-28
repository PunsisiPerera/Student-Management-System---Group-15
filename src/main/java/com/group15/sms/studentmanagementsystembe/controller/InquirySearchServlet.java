package com.group15.sms.studentmanagementsystembe.controller;

import com.group15.sms.studentmanagementsystembe.dao.InquiryDao;
import com.group15.sms.studentmanagementsystembe.dao.StudentDao;
import com.group15.sms.studentmanagementsystembe.model.Inquiry;
import com.group15.sms.studentmanagementsystembe.model.Student;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "InquirySearchServlet", value = "/InquirySearchServlet")
public class InquirySearchServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int inqID = Integer.parseInt(request.getParameter("inqId"));
        InquiryDao inquiryDao = new InquiryDao();
        Inquiry selectedInquiry = inquiryDao.searchInquiry(inqID);

        request.setAttribute("inqID", inqID);
        RequestDispatcher view = request.getRequestDispatcher("admin/editInquiry.jsp");
        request.setAttribute("selectedInquiry",selectedInquiry);
        view.forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
