package com.group15.sms.studentmanagementsystembe.controller;

import com.group15.sms.studentmanagementsystembe.dao.EnrollClassDao;
import com.group15.sms.studentmanagementsystembe.model.EnrollClass;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "EnrollClassServlet", value = "/EnrollClassServlet")
public class EnrollClassServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String year = request.getParameter("year");
        String subject = request.getParameter("subject");
        String stream = request.getParameter("stream");
        String medium = request.getParameter("medium");

        EnrollClass enrollClass = new EnrollClass();

        enrollClass.setYear(year);
        enrollClass.setSubject(subject);
        enrollClass.setStream(stream);
        enrollClass.setMedium(medium);

        EnrollClassDao enrollClassDao = new EnrollClassDao();

        try {

            List<EnrollClass> selectedClass = enrollClassDao.searchClass(enrollClass);
            RequestDispatcher view = request.getRequestDispatcher("student/enrollclass.jsp");
            request.setAttribute("selectedClass", selectedClass);
            view.forward(request,response);
        } catch (Exception e) {
            e.printStackTrace();
        }


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
