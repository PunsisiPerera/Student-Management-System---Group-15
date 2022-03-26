package com.group15.sms.studentmanagementsystembe.controller.login;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet(name = "NewPasswordServlet", value = "/NewPasswordServlet")
public class NewPasswordServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        String newPassword = request.getParameter("password");
        String confPassword = request.getParameter("confPassword");
        String type = request.getParameter("type");
        RequestDispatcher requestDispatcher = null;

        if(type.equals("staff")){
            if (newPassword != null && confPassword != null && newPassword.equals(confPassword)){
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/student_management_system", "root", "");
                    PreparedStatement preparedStatement = connection.prepareStatement("update office_admin set password=? where email=?");
                    preparedStatement.setString(1,newPassword);
                    preparedStatement.setString(2,(String) session.getAttribute("email"));

                    int rowCount = preparedStatement.executeUpdate();
                    if (rowCount > 0){
                        request.setAttribute("status", "resetSuccess");
                        requestDispatcher = request.getRequestDispatcher("login.jsp");
                    }else {
                        request.setAttribute("status", "resetFailed");
                        requestDispatcher = request.getRequestDispatcher("login.jsp");
                    }
                    requestDispatcher.forward(request,response);

                } catch (Exception e) {
                    e.printStackTrace();
                }
        }




        }
    }
}
