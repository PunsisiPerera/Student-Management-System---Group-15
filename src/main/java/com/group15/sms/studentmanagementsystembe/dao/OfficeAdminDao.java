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
           String position = rs.getString("position");

           officeAdmins.add(new OfficeAdmin(staffID,f_name,l_name,address,contact_no,email,position));

        }
        return officeAdmins;
    }

    public OfficeAdmin searchOfficeAdmin(int empID){
        OfficeAdmin selectedOfficeAdmin = null;
        String SELECT_OFFICEADMIN_BY_ID = "select * from office_admin where staffID = ?";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/student_management_system", "root", "");
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_OFFICEADMIN_BY_ID);
            System.out.println(preparedStatement);

            preparedStatement.setInt(1,empID);
            ResultSet rs = preparedStatement.executeQuery();


            while (rs.next()){
                int staffID = rs.getInt("staffID");
                String f_name = rs.getString("f_name");
                String l_name = rs.getString("l_name");
                String email = rs.getString("email");
                String contact_no = rs.getString("contact_no");
                String address = rs.getString("address");
                String position = rs.getString("position");
                selectedOfficeAdmin = new OfficeAdmin(staffID,f_name,l_name,address,email,contact_no,position);
            }

        }catch (Exception exception){
            System.out.println(exception.getMessage());
        }
        return selectedOfficeAdmin;
    }

    public boolean updateOfficeAdmin (OfficeAdmin officeAdmin) throws SQLException, ClassNotFoundException{
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/student_management_system", "root", "");
        PreparedStatement preparedStatement = connection.prepareStatement("update office_admin set f_name = ?, l_name=?, address =?, email=?,contact_no=?, position=? where staffID=?");

        preparedStatement.setString(1,officeAdmin.getF_name());
        preparedStatement.setString(2,officeAdmin.getL_name());
        preparedStatement.setString(3,officeAdmin.getAddress());
        preparedStatement.setString(4,officeAdmin.getEmail());
        preparedStatement.setString(5,officeAdmin.getContact_no());
        preparedStatement.setString(6,officeAdmin.getPosition());
        preparedStatement.setInt(7,officeAdmin.getStaffID());

        System.out.println(preparedStatement);

        boolean rowUpdated = preparedStatement.executeUpdate()>0;
        return rowUpdated;
    }

    public boolean deleteOfficeAdmin(int empID) throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/student_management_system", "root", "");
        PreparedStatement preparedStatement = connection.prepareStatement("delete from office_admin where staffID=?");

        preparedStatement.setInt(1, empID);
        boolean rawDeleted = preparedStatement.executeUpdate() > 0;

        return rawDeleted;
    }

}
