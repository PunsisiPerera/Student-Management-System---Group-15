package com.group15.sms.studentmanagementsystembe.dao;

import com.group15.sms.studentmanagementsystembe.model.Student;
import com.group15.sms.studentmanagementsystembe.model.Teacher;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class StudentDao {
    Student student = new Student();

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
            String address = rs.getString("address");
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

    public Student searchStudent(String stdID){
        Student selectedStudent = null;
        String SELECT_STUDENT_BY_ID = "select * from student where studentID = ?";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/student_management_system", "root", "");
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_STUDENT_BY_ID);
            System.out.println(preparedStatement);

            preparedStatement.setString(1,stdID);
            ResultSet rs = preparedStatement.executeQuery();


            while (rs.next()){
                String studentId = rs.getString("studentID");
                String f_name = rs.getString("f_name");
                String l_name = rs.getString("l_name");
                String email = rs.getString("email");
                String contact_no = rs.getString("contact_no");
                String address = rs.getString("address");
                selectedStudent = new Student(studentId,f_name,l_name,address,email,contact_no);
            }

        }catch (Exception exception){
            System.out.println(exception.getMessage());
        }
        return selectedStudent;
    }

    public boolean updateStudent(Student student) throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/student_management_system", "root", "");
        PreparedStatement preparedStatement = connection.prepareStatement("update student set f_name = ?, l_name=?, address =?, email=?,contact_no=? where studentID=?");
        System.out.println(preparedStatement);

        preparedStatement.setString(1, student.getF_name());
        preparedStatement.setString(2,student.getL_name());
        preparedStatement.setString(3,student.getAddress());
        preparedStatement.setString(4,student.getEmail());
        preparedStatement.setString(5,student.getContact_no());
        preparedStatement.setString(6,student.getStudentID());

        boolean rowUpdated = preparedStatement.executeUpdate()>0;
        return rowUpdated;
    }
}
