package com.group15.sms.studentmanagementsystembe.dao;

import com.group15.sms.studentmanagementsystembe.model.LoginModel;

import java.sql.*;

public class LoginDao {


//validate student
    public boolean validateStudent(LoginModel loginModel) throws ClassNotFoundException, SQLException {
        boolean state = false;

        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/student_management_system","root","");
        PreparedStatement preparedStatement = connection.prepareStatement("select * from student where email=? and password=?");
        {
            preparedStatement.setString(1,loginModel.getEmail());
            preparedStatement.setString(2,loginModel.getPassword());

            System.out.println(preparedStatement);
            ResultSet resultSet = preparedStatement.executeQuery();
            state = resultSet.next();
        }
        return state;

    }
    //validate teacher
    public boolean validateTeacher(LoginModel loginModel) throws ClassNotFoundException, SQLException {
        boolean state = false;

        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/student_management_system","root","");
        PreparedStatement preparedStatement = connection.prepareStatement("select * from teacher where email=? and password=?");
        {
            preparedStatement.setString(1,loginModel.getEmail());
            preparedStatement.setString(2,loginModel.getPassword());

            System.out.println(preparedStatement);
            ResultSet resultSet = preparedStatement.executeQuery();
            state = resultSet.next();
        }
        return state;

    }

    //validate staff
    public boolean validateStaff(LoginModel loginModel) throws ClassNotFoundException, SQLException {
        boolean state = false;

        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/student_management_system","root","");
        PreparedStatement preparedStatement = connection.prepareStatement("select * from office_admin where email=? and password=?");
        {
            preparedStatement.setString(1,loginModel.getEmail());
            preparedStatement.setString(2,loginModel.getPassword());

            System.out.println(preparedStatement);
            ResultSet resultSet = preparedStatement.executeQuery();
            state = resultSet.next();
        }
        return state;

    }

    //validate admin
    public boolean validateAdmin(LoginModel loginModel) throws ClassNotFoundException, SQLException {
        boolean state = false;

        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/student_management_system","root","");
        PreparedStatement preparedStatement = connection.prepareStatement("select * from admin where email=? and password=?");
        {
            preparedStatement.setString(1,loginModel.getEmail());
            preparedStatement.setString(2,loginModel.getPassword());

            System.out.println(preparedStatement);
            ResultSet resultSet = preparedStatement.executeQuery();
            state = resultSet.next();
        }
        return state;

    }

}
