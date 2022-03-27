package com.group15.sms.studentmanagementsystembe.dao;

import com.group15.sms.studentmanagementsystembe.model.OfficeAdmin;
import com.group15.sms.studentmanagementsystembe.model.Teacher;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class TeacherRegisterDao {

    public int registerTeacher(Teacher teacher) throws ClassNotFoundException, SQLException {

        int result = 0;
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/student_management_system","root","");
        PreparedStatement preparedStatement = connection.prepareStatement("insert into teacher values(?,?,?,?,?,?,?)");
        {
            preparedStatement.setString(1,teacher.getTeacherID());
            preparedStatement.setString(2,teacher.getF_name());
            preparedStatement.setString(3,teacher.getL_name());
            preparedStatement.setString(4,teacher.getAddress());
            preparedStatement.setString(5,teacher.getEmail());
            preparedStatement.setString(6,teacher.getPassword());
            preparedStatement.setString(7,teacher.getContact_no());


            System.out.println(preparedStatement);
            result = preparedStatement.executeUpdate();

        }
        return result;
    }

}
