<%--
  Created by IntelliJ IDEA.
  User: 07688
  Date: 21-Oct-21
  Time: 9:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Reset Password</title>
    <link rel="stylesheet" href="./css/resetpassword.css">
    <script src="https://kit.fontawesome.com/e1eaef53f0.js" crossorigin="anonymous"></script>
</head>

<body>
<!-----------Main Nav bar---------->

<ul>
    <li style="float:right"><a href="contactus.jsp"><i class="fas fa-address-book"></i> Contact Us</a></li>
    <li style="float:right"><a href="help.jsp"><i class="fas fa-hands-helping"></i> Help</a></li>
    <li style="float:right"><a href="aboutus.jsp"><i class="fas fa-users"></i> About Us</a></li>
    <li style="float:right"><a href="index.jsp"><i class="fas fa-home"></i> Home</a></li>
</ul>


<!-----padlock image------->
<div class="left">
    <img src="./img/padlock.png" alt="Password Reset">
</div>

<!--------form---------->

<div class="right">
    <h1>Reset Password</h1>
    <form method="post" action="NewPasswordServlet">
        <section class="rtop">Select your user type:</section> <br /><br />
        <select name="type" id="userrole">
            <option value="admin">Admin</option>
            <option value="staff">Staff</option>
            <option value="teacher">Teacher</option>
            <option value="student">Student</option>
        </select>
        <br /><br />
        Enter new password:
        <br />
        <input type="text" id="email" name="password" placeholder="New Password" required>
        <br /><br />
        Confirm new password:
        <br />
        <input type="text" id="password" name="confPassword" placeholder="Confirm new Password" required>
        <br /><br />
        <input type="submit" name="resetpassword" value="Submit">
        <input type="reset" name="cancel" value="Cancel">

    </form>
</div>




</body>
</html>