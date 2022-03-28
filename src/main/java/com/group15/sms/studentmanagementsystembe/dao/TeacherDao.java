package com.group15.sms.studentmanagementsystembe.dao;


import com.group15.sms.studentmanagementsystembe.model.OfficeAdmin;
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
            String contact_no = rs.getString("contact_no");
            teachers.add(new Teacher(teacherID,f_name,l_name,address,email,contact_no));
        }
        return teachers;
    }
    public Teacher searchTeacher(String teacherID){
        Teacher selectedTeacher = null;
        String SELECT_TEACHER_BY_ID = "select * from teacher where teacherID = ?";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/student_management_system", "root", "");
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_TEACHER_BY_ID);
            System.out.println(preparedStatement);

            preparedStatement.setString(1,teacherID);
            ResultSet rs = preparedStatement.executeQuery();


            while (rs.next()){
                String teacherId = rs.getString("teacherID");
                String f_name = rs.getString("f_name");
                String l_name = rs.getString("l_name");
                String address = rs.getString("address");
                String email = rs.getString("email");
                String contact_no = rs.getString("contact_no");

                selectedTeacher = new Teacher(teacherId,f_name,l_name,address,email,contact_no);

            }

        }catch (Exception exception){
            System.out.println(exception.getMessage());
        }
        return selectedTeacher;
    }

    public boolean updateTeacher (Teacher teacher) throws SQLException, ClassNotFoundException{
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/student_management_system", "root", "");
        PreparedStatement preparedStatement = connection.prepareStatement("update teacher set f_name = ?, l_name=?, address =?, email=?,contact_no=? where teacherID=?");

        preparedStatement.setString(1,teacher.getF_name());
        preparedStatement.setString(2,teacher.getL_name());
        preparedStatement.setString(3,teacher.getAddress());
        preparedStatement.setString(4,teacher.getEmail());
        preparedStatement.setString(5,teacher.getContact_no());
        preparedStatement.setString(6,teacher.getTeacherID());

        System.out.println(preparedStatement);

        boolean rowUpdated = preparedStatement.executeUpdate()>0;
        return rowUpdated;
    }
}
