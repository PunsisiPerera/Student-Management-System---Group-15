package com.group15.sms.studentmanagementsystembe.dao;

import com.group15.sms.studentmanagementsystembe.model.Student;
import com.group15.sms.studentmanagementsystembe.model.Teacher;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class StudentDao {
    public List<Student> selectAllStudents() throws ClassNotFoundException, SQLException {

        List<Student> students = new ArrayList<>();

        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/student_management_system", "root", "");
        PreparedStatement preparedStatement = connection.prepareStatement("select * from student");
        System.out.println(preparedStatement);

        ResultSet rs = preparedStatement.executeQuery();

        while (rs.next()) {
            String studentID = rs.getString("studentID");
            String f_name = rs.getString("f_name");
            String l_name = rs.getString("l_name");
            String address = rs.getString("l_name");
            String email = rs.getString("email");
            String password = rs.getString("password");
            String confPassword = rs.getString("confPassword");
            String qrCode = rs.getString("QR_code");
            String contact_no = rs.getString("contact_no");
            String security = rs.getString("security");
            students.add(new Student(studentID,f_name,l_name,address,email,password,confPassword,qrCode,contact_no,security));

        }
        return students;
    }
}
