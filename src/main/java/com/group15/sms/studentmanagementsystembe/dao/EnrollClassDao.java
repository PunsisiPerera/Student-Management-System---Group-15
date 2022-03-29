package com.group15.sms.studentmanagementsystembe.dao;

import com.group15.sms.studentmanagementsystembe.model.EnrollClass;

import java.sql.*;
import java.util.List;

public class EnrollClassDao {

    public List<EnrollClass> searchClass(EnrollClass enrollClass) throws ClassNotFoundException, SQLException {
        List<EnrollClass> selectedEnrollClass = null;
        String SELECT_CLASS = "select * from enroll_class where year=? AND subject=? AND stream=? AND medium=?";

        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/student_management_system", "root", "");
        PreparedStatement preparedStatement = connection.prepareStatement(SELECT_CLASS);
        System.out.println(preparedStatement);

        preparedStatement.setString(1, enrollClass.getYear());
        preparedStatement.setString(2, enrollClass.getSubject());
        preparedStatement.setString(3, enrollClass.getStream());
        preparedStatement.setString(4, enrollClass.getMedium());

        System.out.println(preparedStatement);
        ResultSet rs = preparedStatement.executeQuery();

        while (rs.next()){
            String class_name = rs.getString("class_name");
            String teacher = rs.getString("teacher");
            String day = rs.getString("day");
            String time = rs.getString("time");
            String class_fee = rs.getString("fees");

            selectedEnrollClass.add(new EnrollClass(class_name,teacher,day,time,class_fee));



        }

        return selectedEnrollClass;

    }

}
