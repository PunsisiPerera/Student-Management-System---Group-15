<%--
  Created by IntelliJ IDEA.
  User: 07688
  Date: 21-Oct-21
  Time: 8:35 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Contact Us</title>
    <link rel="stylesheet" href="./css/aboutcontactus.css">
    <script src="https://kit.fontawesome.com/e1eaef53f0.js" crossorigin="anonymous"></script>
</head>

<body>
<!-----------Main Nav bar---------->
<ul>
    <li style="float:right"><a href="contactus.jsp" class="active"><i class="fas fa-address-book"></i> Contact Us</a></li>
    <li style="float:right"><a href="help.jsp"><i class="fas fa-hands-helping"></i> Help</a></li>
    <li style="float:right"><a href="aboutus.jsp"><i class="fas fa-users"></i> About Us</a></li>
    <li style="float:right"><a href="index.jsp"><i class="fas fa-home"></i> Home</a></li>
</ul>

<!-----------image--------------->
<div class="contact_l">
    <img src="./img/contactus.jpg" alt="Contact Us">
</div>


<!-----------details---------->
<div class="contact_r">
    <h1>Contact Us</h1>
    <div class="heading">
        <i class="fas fa-map-marker-alt"></i>
        Address
    </div>
    <p>No. 26, Cross Street, Kandy, Sri Lanka</p>

    <div class="heading">
        <i class="fas fa-phone-alt"></i>
        Phone
    </div>
    <p>081 2237037</p>

    <div class="heading">
        <i class="fas fa-envelope"></i>
        Email
    </div>
    <p>pragathi.mgt@gmail.com</p>
</body>
</html>
