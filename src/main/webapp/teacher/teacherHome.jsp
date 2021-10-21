<%-- 
    Document   : teacherhome
    Created on : Aug 30, 2021, 12:04:33 PM
    Author     : Gihan
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="UTF-8">
  <title>Home | Teacher</title>
  <link rel="stylesheet" href="../css/teacher.css">
  <script src="https://kit.fontawesome.com/e1eaef53f0.js" crossorigin="anonymous"></script>
  <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<body>



<div class="sidebar">
  <ul class="nav-links">
    <li>
      <a href="./teachernotices.jsp">
        <i class='bx bx-notepad' ></i>
        <span class="links_name">Manage Notices</span>
      </a>
    </li>
    <li>
      <a href="./attendance.jsp">
        <i class='bx bx-book-content' ></i>
        <span class="links_name">Attendance</span>
      </a>
    </li>
    <li>
      <a href="./assignments.jsp">
        <i class='bx bx-book-open' ></i>
        <span class="links_name">Assignments</span>
      </a>
    </li>
    <li>

  </ul>
</div>



<section class="home-section">

  <!----main nav---->
  <div>
    <ul>
      <li style="float:right"><a href="../index.jsp"><i class="fas fa-sign-out-alt"></i> Sign Out</a></li>
      <li style="float:right"><a href="../contactus.jsp"><i class="fas fa-address-book"></i> Contact Us</a></li>
      <li style="float:right"><a href="../help.jsp"><i class="fas fa-hands-helping"></i> Help</a></li>
      <li style="float:right"><a href="../aboutus.jsp"><i class="fas fa-users"></i> About Us</a></li>
      <li style="float:right"><a href="./teacherHome.jsp" class="active" ><i class="fas fa-home"></i> Home</a></li>
    </ul>
  </div>


  <div class="home-content">
    <a href="./teacheraccountsettings.jsp"><img src="../img/avatar.png" alt="Avatar" class="avatar" style="margin-top:-55px;"></a>

    <div class="display-boxes">
      <div class="left box">
        <div class="title">Recent Notices</div>


      </div>
      <div class="right box">
        <div class="title">Time Table</div>


      </div>
    </div>
  </div>
</section>




</body>
</html>