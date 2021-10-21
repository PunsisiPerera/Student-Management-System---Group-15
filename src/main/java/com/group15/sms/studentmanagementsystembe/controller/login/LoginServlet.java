package com.group15.sms.studentmanagementsystembe.controller.login;

import com.group15.sms.studentmanagementsystembe.dao.LoginDao;
import com.group15.sms.studentmanagementsystembe.model.LoginModel;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {

    private LoginDao loginDao;


    public void init(){
        loginDao = new LoginDao();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            String email = request.getParameter("email");
            String password = request.getParameter("pass");
            String type = request.getParameter("type");
            LoginModel loginModel = new LoginModel();
            loginModel.setEmail(email);
            loginModel.setPassword(password);
            loginModel.setType(type);

            if(loginModel.getType().equals("staff")){
                try{
                    if(loginDao.validateStaff(loginModel))
                    {
                        HttpSession session = request.getSession();
                        session.setAttribute("name",email);
                        response.sendRedirect("officeAdmin/officeadmindashboard.jsp");
                    }
                    else
                    {
                        response.sendRedirect("login.jsp");
                    }

                }
                catch (ClassNotFoundException | SQLException e) {
                    e.printStackTrace();
                }

            }
            else if(loginModel.getType().equals("student")){
                try {
                    if(loginDao.validateStudent(loginModel))
                    {
                        HttpSession session = request.getSession();
                        session.setAttribute("email",email);
                        response.sendRedirect("student/studenthome.jsp");
                    }
                    else
                    {
                        response.sendRedirect("login.jsp");
                    }
                } catch (ClassNotFoundException | SQLException e) {
                    e.printStackTrace();
                }

            }
            else if (loginModel.getType().equals("teacher")){
                try {
                    if(loginDao.validateTeacher(loginModel))
                    {
                        HttpSession session = request.getSession();
                        session.setAttribute("email",email);
                        response.sendRedirect("teacher/teacherHome.jsp");
                    }
                    else
                    {
                        response.sendRedirect("login.jsp");
                    }
                } catch (ClassNotFoundException | SQLException e) {
                    e.printStackTrace();
                }
            }
            else
            {
                try {
                    if(loginDao.validateAdmin(loginModel))
                    {
                        HttpSession session = request.getSession();
                        session.setAttribute("email",email);
                        response.sendRedirect("admin/employeeregistration.jsp");
                    }
                    else
                    {
                        response.sendRedirect("login.jsp");
                    }
                } catch (ClassNotFoundException | SQLException e) {
                    e.printStackTrace();
                }
            }


    }

}
