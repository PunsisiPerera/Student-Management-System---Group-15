package com.group15.sms.studentmanagementsystembe.dao;

import com.group15.sms.studentmanagementsystembe.model.OfficeAdmin;
import com.group15.sms.studentmanagementsystembe.model.Student;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class EmployeeRegisterDao {

    public int registerEmployee(OfficeAdmin officeAdmin) throws ClassNotFoundException, SQLException {

        int result = 0;
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/student_management_system","root","");
        PreparedStatement preparedStatement = connection.prepareStatement("insert into office_admin(f_name,l_name,address,contact_no,email,password,position,date_joined, security) values(?,?,?,?,?,?,?,?,?)");
        {
            preparedStatement.setString(1,officeAdmin.getF_name());
            preparedStatement.setString(2,officeAdmin.getL_name());
            preparedStatement.setString(3,officeAdmin.getAddress());
            preparedStatement.setString(4,officeAdmin.getContact_no());
            preparedStatement.setString(5,officeAdmin.getEmail());
            preparedStatement.setString(6,officeAdmin.getPassword());
            preparedStatement.setString(7,officeAdmin.getPosition());
            preparedStatement.setString(8,officeAdmin.getDate_joined());
            preparedStatement.setString(9,officeAdmin.getSecurity());

            System.out.println(preparedStatement);
            result = preparedStatement.executeUpdate();

        }
        return result;
    }
}
