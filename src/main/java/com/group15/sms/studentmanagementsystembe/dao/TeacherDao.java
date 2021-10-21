package com.group15.sms.studentmanagementsystembe.dao;


import com.group15.sms.studentmanagementsystembe.model.Teacher;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TeacherDao {

    public List<Teacher> selectAllTeachers() throws ClassNotFoundException, SQLException {

        List<Teacher> teachers = new ArrayList<>();

        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/student_management_system", "root", "");
        PreparedStatement preparedStatement = connection.prepareStatement("select * from teacher");
        System.out.println(preparedStatement);

        ResultSet rs = preparedStatement.executeQuery();

        while (rs.next()) {
            String teacherID = rs.getString("teacherID");
            String f_name = rs.getString("f_name");
            String l_name = rs.getString("l_name");
            String address = rs.getString("address");
            String email = rs.getString("email");
            String password = rs.getString("password");
            String contact_no = rs.getString("contact_no");
            String security = rs.getString("security");
            teachers.add(new Teacher(teacherID,f_name,l_name,address,email,password,contact_no,security));
        }
        return teachers;
    }
}
