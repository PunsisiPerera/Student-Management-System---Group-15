package com.group15.sms.studentmanagementsystembe.controller.login;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Properties;
import java.util.Random;

@WebServlet(name = "ForgotPasswordServlet", value = "/ForgotPasswordServlet")
public class ForgotPasswordServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String email = request.getParameter("email");
        RequestDispatcher requestDispatcher= null;
        int otpValue = 0;
        HttpSession mySession = request.getSession();

        if (email!=null || !email.equals("")){
            //sending otp
            Random random = new Random();
            otpValue = random.nextInt(1255650);

            String to = email;

            Properties properties = new Properties();
            properties.put("mail.smtp.host", "smtp.gmail.com");
            properties.put("mail.smtp.socketFactory.port", "465");
            properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
            properties.put("mail.smtp.auth", "true");
            properties.put("mail.smtp.port", "465");

            Session session = Session.getDefaultInstance(properties, new javax.mail.Authenticator(){
                protected PasswordAuthentication getPasswordAuthentication(){
                    return new PasswordAuthentication("subhani.3647@gmail.com","bwcrtlwqspkehsjk");

                }
            });

            try {
                MimeMessage message = new MimeMessage(session);
                message.setFrom(new InternetAddress(email));
                message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
                message.setSubject("Hello");
                message.setText("Your OTP is: "+ otpValue);

                //send message
                Transport.send(message);
                System.out.println("message sent successfully");
            } catch (MessagingException e) {
                e.printStackTrace();
            }
            requestDispatcher = request.getRequestDispatcher("EnterOtp.jsp");
            request.setAttribute("message","OTP is sent to your email id");
             mySession.setAttribute("otp",otpValue);
             mySession.setAttribute("email",email);
             requestDispatcher.forward(request,response);
        }
    }
}
