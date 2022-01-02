<%--
  Created by IntelliJ IDEA.
  User: 07688
  Date: 21-Oct-21
  Time: 11:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Generate Reports | Student</title>
    <link rel="stylesheet" href="../css/generatereports.css">
    <script src="https://kit.fontawesome.com/e1eaef53f0.js" crossorigin="anonymous"></script>
</head>
<body>

<form action="" method="post">

    <div>
        <ul>

            <li style="float:right"><a href="../index.jsp"><i class="fas fa-sign-out-alt"></i> Sign Out</a></li>
            <li style="float:right"><a href="../contactus.jsp"><i class="fas fa-address-book"></i> Contact Us</a></li>
            <li style="float:right"><a href="../help.jsp"><i class="fas fa-hands-helping"></i> Help</a></li>
            <li style="float:right"><a href="../aboutus.jsp"><i class="fas fa-users"></i> About Us</a></li>
            <li style="float:right"><a href="studenthome.jsp"><i class="fas fa-home"></i> Home</a></li>
        </ul>
    </div>


    <a href="studentaccountsettings.jsp"><img src="../img/avatar.png" alt="Avatar" class="avatar" style="padding:0px;"></a>

    <div class="hdiv">
        <h2 align="center" id=removepadding style="margin-top: 70px;">Generate Reports</h2>
        <p id=removepadding>Welcome!<br /><br /><br /><p>

        <form method="post">
            <br /><br /><br /><br /><br>
            <h1>Generate Reports</h1>

            <p id=textdecors id=removepadding style="text-align: left;">Select the class:</p>

            <select name="classes" id="classes">
                <option value="Bio2023">Bio2023</option>
                <option value="Maths2023">Maths2023</option>
                <option value="Arts2023">Arts2023</option>
                <option value="Commerce2023">Commerce2023</option>
            </select>
            <br><br>

            <p id=textdecors id=removepadding style="text-align: left;">Select the time span:</p>

            <select name="classes" id="classes">
                <option value="Bio2023">Last day</option>
                <option value="Maths2023">Last week</option>
                <option value="Arts2023">Last month</option>
                <option value="Commerce2023">Last 6 months</option>
                <option value="Commerce2023">Last year</option>
            </select>
            <br><br><br>

            <p id=textdecors id=removepadding>Select the details that want to be sorted out:</p>
            <input type="checkbox" id="mark" name="mark" value="Marks">
            <label for="studmarks">Marks</label><br><br>

            <input type="submit" name="submitbutton4" value="Generate Report"><br />
            <input type="reset" name="resetbutton4" value="Reset">

    </div>

</form>
</body>
</html>
