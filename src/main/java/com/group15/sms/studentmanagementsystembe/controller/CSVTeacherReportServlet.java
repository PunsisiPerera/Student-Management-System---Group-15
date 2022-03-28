package com.group15.sms.studentmanagementsystembe.controller;

import com.group15.sms.studentmanagementsystembe.dao.OfficeAdminDao;
import com.group15.sms.studentmanagementsystembe.dao.TeacherDao;
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

@WebServlet(name = "CSVTeacherReportServlet", value = "/CSVTeacherReportServlet")
public class CSVTeacherReportServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/csv");
        String reportName = "CurrentTeacherList" + System.currentTimeMillis()+".csv";
        response.setHeader("Content-disposition", "attachment; "+ "filename=" + reportName);

        ArrayList<String> rows = new ArrayList<>();
        rows.add("Teacher ID, First Name, Last Name, Address Line1, Address Line 2, Email, Contact Number");
        rows.add("\n");

        TeacherDao teacherDao = new TeacherDao();
        try {
            List<Teacher> arraylist = teacherDao.selectAllTeachers();
            for(Teacher oa : arraylist){
                String ROW_DATA = oa.getTeacherID()+","+oa.getF_name()+","+oa.getL_name()+","+
                        oa.getAddress()+","+oa.getEmail()+","+oa.getContact_no();
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
