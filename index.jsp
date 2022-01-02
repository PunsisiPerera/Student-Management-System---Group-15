<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Landing Page </title>
    <link rel="stylesheet" href="./css/landing.css">
    <script src="https://kit.fontawesome.com/e1eaef53f0.js" crossorigin="anonymous"></script>
</head>
<body>
<!-----------Nav bar---------->
<div>
    <ul>
        <li style="float:right"><a href="contactus.jsp"><i class="fas fa-address-book"></i> Contact Us</a></li>
        <li style="float:right"><a href="help.jsp"><i class="fas fa-hands-helping"></i> Help</a></li>
        <li style="float:right"><a href="aboutus.jsp"><i class="fas fa-users"></i> About Us</a></li>
        <li style="float:right"><a href="index.jsp" class="active"><i class="fas fa-home"></i> Home</a></li>
    </ul>
</div>


<div class="hdiv">
    <img src="./img/dashboard.jpg" align="left" width=55% height=100%>
    <br /><br /><br /><br /><br />
    <h1 align="center"><br />Student Management System <br /> Pragathi Higher Education Institute<br /> Kandy, Sri Lanka</h1>
    <br /><br /><br />
    <button type="button" onclick="window.location.href='login.jsp'">Sign In</button>
    <br /><br />
</div>

</body>
</html>
