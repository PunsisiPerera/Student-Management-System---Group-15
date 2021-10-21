<%--
  Created by IntelliJ IDEA.
  User: 07688
  Date: 20-Oct-21
  Time: 8:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home | Student </title>
    <link rel="stylesheet" href="../css/studentHome.css">
    <script src="https://kit.fontawesome.com/e1eaef53f0.js" crossorigin="anonymous"></script>
</head>
<body>
<!-----------Nav bar---------->
<div>
    <ul>

        <li style="float:right"><a href="../index.html"><i class="fas fa-sign-out-alt"></i> Sign Out</a></li>
        <li style="float:right"><a href="./contactus.html"><i class="fas fa-address-book"></i> Contact Us</a></li>
        <li style="float:right"><a href="./help.html"><i class="fas fa-hands-helping"></i> Help</a></li>
        <li style="float:right"><a href="./aboutus.html"><i class="fas fa-users"></i> About Us</a></li>
        <li style="float:right"><a href="../home.html" class="active" ><i class="fas fa-home"></i> Home</a></li>
    </ul>
</div>
<!---------profile picture--------->
<a href="accountsettings.html"><img src="../img/avatar.png" alt="Avatar" class="avatar"></a>
<div class="bd">
    <br />
    <!--<img src="../dashboard.jpg">-->

    <!-------- main parts---------->
    <h1 align="Center">Student Management System</h1>
    <h1 id="f1"> Welcome, Jane!</h1>
    <br /><br /><br />
    <div class="f2">

        <div class="al0">
            <div class="card">
                <div class="container">
                    <h2><a href="#">View Classes</a></h2>
                </div>
            </div>
        </div>

        <div class="al1">
            <div class="card">
                <div class="container">
                    <h2><a href="#">Upload Fee Slip</a></h2>
                </div>
            </div>
        </div>

        <div class="al2">
            <div class="card">
                <div class="container">
                    <h2><a href="#">Enroll in New Class</a></h2>
                </div>
            </div>
        </div>


    </div>
</div>


</body>
</html>
