package com.group15.sms.studentmanagementsystembe.dao;

import com.group15.sms.studentmanagementsystembe.model.Student;

import java.sql.*;

public class StudentRegisterDao {

    public int registerStudent(Student student) throws ClassNotFoundException, SQLException {

        int result = 0;
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/student_management_system","root","");
        PreparedStatement preparedStatement = connection.prepareStatement("insert into student values(?,?,?,?,?,?,?,?)");
        {
            preparedStatement.setString(1,student.getStudentID());
            preparedStatement.setString(2,student.getF_name());
            preparedStatement.setString(3,student.getL_name());
            preparedStatement.setString(4,student.getAddress());
            preparedStatement.setString(5,student.getEmail());
            preparedStatement.setString(6,student.getPassword());
            preparedStatement.setString(7,student.getConfPassword());
            preparedStatement.setString(8,student.getContact_no());


            System.out.println(preparedStatement);
            result = preparedStatement.executeUpdate();

        }
        return result;
    }
}
