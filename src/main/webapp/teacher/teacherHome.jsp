<%-- 
    Document   : teacherhome
    Created on : Aug 30, 2021, 12:04:33 PM
    Author     : Gihan
--%>

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
  <title>Home | Teacher </title>
  <link rel="stylesheet" href="../css/teacherhome.css">
  <script src="https://kit.fontawesome.com/e1eaef53f0.js" crossorigin="anonymous"></script>
</head>
<body>

<!-----------Side Nav bar---------->
<div class="sidenav">
  <h2 style="font-family:Trebuchet MS;">Pragathi Institute</h2>
  <div class="left">
    <div class="container">
      <img src="../img/avatar.png" alt="Avatar" class="avatar">
      <a href="./teacheraccountsettings.jsp"><button style="width:175px; height: 40px; background-color: #001D3D; font-family:Trebuchet MS; color: white; border: none; border-radius: 20px; font-size:15px; text-align:center; margin: 10px; margin-left: 15px; display: block; cursor: pointer;">Edit Profile</button></a>
      <a href="../resetpassword.jsp"><button style="width:175px; height: 40px; background-color: #001D3D; font-family:Trebuchet MS; color: white; border: none; border-radius: 20px; font-size:15px; text-align:center; margin: 10px; margin-left: 15px; display: block; cursor: pointer;">Change Password</button></a>
    </div>
  </div>


</div>


<!-----------Nav bar---------->
<div>
  <ul>

    <li style="float:right"><a href="../index.jsp"><i class="fas fa-sign-out-alt"></i> Sign Out</a></li>
    <li style="float:right"><a href="../contactus.jsp"><i class="fas fa-address-book"></i> Contact Us</a></li>
    <li style="float:right"><a href="../help.jsp"><i class="fas fa-hands-helping"></i> Help</a></li>
    <li style="float:right"><a href="../aboutus.jsp"><i class="fas fa-users"></i> About Us</a></li>
    <li style="float:right"><a href="./teacherHome.jsp" class="active" ><i class="fas fa-home"></i> Home</a></li>
  </ul>
</div>

<!---------profile picture--------->
<!--<a href="studentaccountsettings.jsp"><img src="../img/avatar.png" alt="Avatar" class="avatar"></a>-->
<div class="bd">
  <br />
  <!--<img src="../dashboard.jpg">-->

  <!-------- main parts---------->
  <h1 style="margin-left: 300px;">Student Management System</h1>
  <!--<h1 id="f1"> Welcome, Jane!</h1>-->
  <br /><br /><br />
  <div class="f2">

    <div class="al0">
      <div class="card">
        <div class="container">
          <h2><a href="./assignments.jsp">Assignments</a></h2>
        </div>
      </div>
    </div>

    <div class="al1">
        <div class="card">
            <div class="container">
                <h2><a href="./teachernotices.jsp">Manage Notices</a></h2>
            </div>
        </div>
    </div>

    <div class="al2">
      <div class="card">
        <div class="container">
          <h2><a href="./attendance.jsp">Attendance</a></h2>
        </div>
      </div>
    </div>


  </div>
</div>


</body>
</html>