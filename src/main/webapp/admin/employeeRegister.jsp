<%--
  Created by IntelliJ IDEA.
  User: punsisi_p
  Date: 10/20/2021
  Time: 11:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employee Registration Form</title>
    <link rel="stylesheet" href="../css/employeeregistration.css">
    <script src="https://kit.fontawesome.com/e1eaef53f0.js" crossorigin="anonymous"></script>
</head>
<body>



    <div>
        <ul>

            <li style="float:right"><a href=""><i class="fas fa-sign-out-alt"></i> Sign Out</a></li>
            <li style="float:right"><a href=""><i class="fas fa-address-book"></i> Contact Us</a></li>
            <li style="float:right"><a href=""><i class="fas fa-hands-helping"></i> Help</a></li>
            <li style="float:right"><a href=""><i class="fas fa-users"></i> About Us</a></li>
            <li style="float:right"><a href=""><i class="fas fa-home"></i> Home</a></li>
        </ul>

    </div>


    <div class="hdiv">
        <h1 align="center" class=removepadding>Sign Up</h1>
        <p class=removepadding>Welcome!<br /><br /><br /><p>
        <form method="post" action="EmployeeRegisterServlet">
            <br /><br /><br /><br />
            <h1>Employee Registration Form</h1>

            <p class=textdecors class=removepadding>First Name:</p>
            <input type="text" id="name" name="user_name1" placeholder="Enter your first name">
            <br />
            <p class=textdecors class=removepadding>Last Name:</p>
            <input type="text" id="fullname" name="user_name2" placeholder="Enter your last name">
            <br />
            <p class=textdecors class=removepadding>Position:</p>
            <input type="text" id="addres1s" name="userposition" placeholder="Enter your position"><br><br>
            <p class=textdecors class=removepadding>Address:</p>
            <input type="text" id="address" name="useraddress" placeholder="Enter your address"><br><br>
            <p class=textdecors class=removepadding>Contact number:</p>
            <input type="text" id="contact" name="usercontact" placeholder="Enter your contact number"><br><br>
            <p class=textdecors class=removepadding>Email:</p>
            <input type="text" id="email" name="email" placeholder="Enter your email address"><br><br>
            <p class=textdecors class=removepadding>Mother's Maiden Name (For Security Purposes):</p>
            <input type="text" id="guardianname" name="userguardianname" placeholder="Enter your Mother's Maiden Name"><br><br>
            <p class=textdecors class=removepadding>New Password:</p>
            <input type="password" id="pass1" name="pass" placeholder="Enter your new password"><br><br>
            <p class=textdecors class=removepadding>Confirm Password:</p>
            <input type="password" id="pass" name="passs" placeholder="Enter your new password again"><br><br>
            <br /><br /><br />
            <input type="submit" name="submitbutton4" value="Sign Up"><br><br><br><br><br><br>
        </form>

    </div>



<div class="footer">
    <p style="color: white;">Copyright © 2021 - Group 12. All rights reserved.</p>
    <p style="color: white;">Emergency</p>
</div>

</body>
</html>
