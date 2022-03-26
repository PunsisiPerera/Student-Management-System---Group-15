package com.group15.sms.studentmanagementsystembe.dao;

import com.group15.sms.studentmanagementsystembe.model.NewClass;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ClassDao {

    public int createClass(NewClass newClass) throws ClassNotFoundException, SQLException{
        int result = 0;
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/student_management_system","root","");
        PreparedStatement preparedStatement = connection.prepareStatement("insert into class(name,year,student_count,medium,day,start_time,end_time,teacher,class_room,subject) values(?,?,?,?,?,?,?,?,?,?)");

        preparedStatement.setString(1,newClass.getName());
        preparedStatement.setInt(2,newClass.getYear());
        preparedStatement.setInt(3,newClass.getStudent_count());
        preparedStatement.setString(4,newClass.getMedium());
        preparedStatement.setString(5,newClass.getDay());
        preparedStatement.setString(6,newClass.getStart_time());
        preparedStatement.setString(7,newClass.getEnd_time());
        preparedStatement.setString(8,newClass.getTeacher());
        preparedStatement.setString(9,newClass.getClass_room());
        preparedStatement.setString(10,newClass.getSubject());

        System.out.println(preparedStatement);
        result = preparedStatement.executeUpdate();

        return result;

    }
}
