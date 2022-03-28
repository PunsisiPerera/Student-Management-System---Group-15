package com.group15.sms.studentmanagementsystembe.controller;

import com.group15.sms.studentmanagementsystembe.dao.InquiryDao;
import com.group15.sms.studentmanagementsystembe.dao.OfficeAdminDao;
import com.group15.sms.studentmanagementsystembe.dao.TeacherDao;
import com.group15.sms.studentmanagementsystembe.model.Inquiry;
import com.group15.sms.studentmanagementsystembe.model.OfficeAdmin;
import com.group15.sms.studentmanagementsystembe.model.Teacher;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@WebServlet(name = "CSVInquiryReportServlet", value = "/CSVInquiryReportServlet")
public class CSVInquiryReportServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/csv");
        String reportName = "CurrentInquiryList" + System.currentTimeMillis()+".csv";
        response.setHeader("Content-disposition", "attachment; "+ "filename=" + reportName);

        ArrayList<String> rows = new ArrayList<>();
        rows.add("Inquiry ID, Inquirer's email, Inquiry Subject, Inquiry Content, Date, Status");
        rows.add("\n");

        InquiryDao inquiryDao = new InquiryDao();
        try {
            List<Inquiry> arraylist = inquiryDao.selectAllInquiry();
            for(Inquiry oa : arraylist){
                String ROW_DATA = String.valueOf(oa.getInquiryID())+","+oa.getEmail()+","+oa.getSubject()+","+
                        oa.getInquiry()+","+oa.getDate()+","+oa.getStatus();
                rows.add(ROW_DATA);
                rows.add("\n");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        Iterator<String> iterator = rows.iterator();
        while (iterator.hasNext()){
            String outputString = (String) iterator.next();
            response.getOutputStream().print(outputString);
        }

        response.getOutputStream().flush();

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
