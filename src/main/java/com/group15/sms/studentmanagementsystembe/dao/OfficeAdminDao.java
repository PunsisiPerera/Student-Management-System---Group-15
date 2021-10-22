package com.group15.sms.studentmanagementsystembe.dao;

import com.group15.sms.studentmanagementsystembe.model.OfficeAdmin;
import com.group15.sms.studentmanagementsystembe.model.Student;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class OfficeAdminDao {
    public List<OfficeAdmin> selectAllEmployees() throws ClassNotFoundException, SQLException {

        List<OfficeAdmin> officeAdmins = new ArrayList<>();

        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/student_management_system", "root", "");
        PreparedStatement preparedStatement = connection.prepareStatement("select * from office_admin");
        System.out.println(preparedStatement);

        ResultSet rs = preparedStatement.executeQuery();

        while (rs.next()) {
           int staffID = rs.getInt("staffID");
           String f_name = rs.getString("f_name");
           String l_name = rs.getString("l_name");
           String address = rs.getString("address");
           String contact_no = rs.getString("contact_no");
           String email = rs.getString("email");
           String password = rs.getString("password");
           String position = rs.getString("position");
           String security = rs.getString("security");
           officeAdmins.add(new OfficeAdmin(staffID,f_name,l_name,address,contact_no,email,password,position,security));

        }
        return officeAdmins;
    }
}
