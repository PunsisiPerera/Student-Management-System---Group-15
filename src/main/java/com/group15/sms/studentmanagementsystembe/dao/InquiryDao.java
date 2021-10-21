package com.group15.sms.studentmanagementsystembe.dao;

import com.group15.sms.studentmanagementsystembe.model.Inquiry;
import com.group15.sms.studentmanagementsystembe.model.Student;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class InquiryDao {

    public int addInquiry(Inquiry inquiry) throws ClassNotFoundException, SQLException {

        int result = 0;
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/student_management_system","root","");
        PreparedStatement preparedStatement = connection.prepareStatement("insert into inquiry(email,subject,inquiry,date,status) values(?,?,?,?,?)");
        {
            preparedStatement.setString(1,inquiry.getEmail());
            preparedStatement.setString(2,inquiry.getSubject());
            preparedStatement.setString(3,inquiry.getInquiry());
            preparedStatement.setString(4,inquiry.getDate());
            preparedStatement.setString(5,inquiry.getStatus());

            System.out.println(preparedStatement);
            result = preparedStatement.executeUpdate();

        }
        return result;
    }
}