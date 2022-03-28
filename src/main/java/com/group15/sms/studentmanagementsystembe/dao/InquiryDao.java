package com.group15.sms.studentmanagementsystembe.dao;

import com.group15.sms.studentmanagementsystembe.model.Inquiry;
import com.group15.sms.studentmanagementsystembe.model.OfficeAdmin;
import com.group15.sms.studentmanagementsystembe.model.Student;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class InquiryDao {

    public int addInquiry(Inquiry inquiry) throws ClassNotFoundException, SQLException {

        int result = 0;
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/student_management_system", "root", "");
        PreparedStatement preparedStatement = connection.prepareStatement("insert into inquiry(email,subject,inquiry,date,status) values(?,?,?,?,?)");
        {
            preparedStatement.setString(1, inquiry.getEmail());
            preparedStatement.setString(2, inquiry.getSubject());
            preparedStatement.setString(3, inquiry.getInquiry());
            preparedStatement.setString(4, inquiry.getDate());
            preparedStatement.setString(5, inquiry.getStatus());

            System.out.println(preparedStatement);
            result = preparedStatement.executeUpdate();

        }
        return result;
    }

    public List<Inquiry> selectAllInquiry() throws ClassNotFoundException, SQLException {

        List<Inquiry> inquiries = new ArrayList<>();

        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/student_management_system", "root", "");
        PreparedStatement preparedStatement = connection.prepareStatement("select * from inquiry");
        System.out.println(preparedStatement);

        ResultSet rs = preparedStatement.executeQuery();

        while (rs.next()) {
            int inquiryID  = rs.getInt("inquiryID");
            String email = rs.getString("email");
            String subject = rs.getString("subject");
            String inquiry = rs.getString("inquiry");
            String date = rs.getString("date");
            String status = rs.getString("status");
            inquiries.add(new Inquiry(inquiryID,subject,inquiry,date,status,email));
        }
        return inquiries;
    }

    public Inquiry searchInquiry(int inqId){
        Inquiry selectedInquiry = null;
        String SELECT_INQUIRY_BY_ID = "select * from inquiry where inquiryID = ?";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/student_management_system", "root", "");
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_INQUIRY_BY_ID);
            System.out.println(preparedStatement);

            preparedStatement.setInt(1,inqId);
            ResultSet rs = preparedStatement.executeQuery();


            while (rs.next()){
                int inquiryId = rs.getInt("inquiryID");
                String email = rs.getString("email");
                String subject = rs.getString("subject");
                String inquiry = rs.getString("inquiry");
                String status = rs.getString("status");
                String date = rs.getString("date");
                selectedInquiry = new Inquiry(inquiryId,subject,inquiry,date,status,email);
            }

        }catch (Exception exception){
            System.out.println(exception.getMessage());
        }
        return selectedInquiry;
    }

    public boolean updateInquiry(Inquiry inquiry) throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/student_management_system", "root", "");
        PreparedStatement preparedStatement = connection.prepareStatement("update inquiry set status=? where inquiryID=?");

        preparedStatement.setString(1,inquiry.getStatus());
        preparedStatement.setInt(2,inquiry.getInquiryID());

        boolean rowUpdated = preparedStatement.executeUpdate()>0;
        return rowUpdated;


    }

    public boolean deleteInquiry(int inqId) throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/student_management_system", "root", "");
        PreparedStatement preparedStatement = connection.prepareStatement("delete from inquiry where inquiryID=?");

        preparedStatement.setInt(1,inqId);
        boolean rawDeleted = preparedStatement.executeUpdate()>0;

        return rawDeleted;

    }
}


