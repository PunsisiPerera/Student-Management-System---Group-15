<%--
  Created by IntelliJ IDEA.
  User: 07688
  Date: 21-Oct-21
  Time: 6:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="UTF-8">
    <title>Class Notices | Teacher</title>
    <link rel="stylesheet" href="../css/teachernotices.css">
    <script src="https://kit.fontawesome.com/e1eaef53f0.js" crossorigin="anonymous"></script>
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<body>



<div class="sidebar">

    <h2 style="font-family:Trebuchet MS; color: #ffffff; margin-top: 12%;">Pragathi Institute</h2>

    <div class="left">
        <div class="container">
            <img src="../img/avatar.png" alt="Avatar" class="avatar">
            <a href="./teacheraccountsettings.jsp"><button style="width:175px; height: 40px; background-color: #001D3D; font-family:Trebuchet MS; color: white; border: none; border-radius: 20px; font-size:15px; text-align:center; margin: 10px; margin-left: 10px; display: block; cursor: pointer;">Edit Profile</button></a>
            <a href="../resetpassword.jsp"><button style="width:175px; height: 40px; background-color: #001D3D; font-family:Trebuchet MS; color: white; border: none; border-radius: 20px; font-size:15px; text-align:center; margin: 10px; margin-left: 10px; display: block; cursor: pointer;">Change Password</button></a>
        </div>
    </div>
</div>



<section class="home-section">

    <!----main nav---->
    <div>
        <ul>
            <li style="float:right"><a href="../index.jsp"><i class="fas fa-sign-out-alt"></i> Sign Out</a></li>
            <li style="float:right"><a href="../contactus.jsp"><i class="fas fa-address-book"></i> Contact Us</a></li>
            <li style="float:right"><a href="../help.jsp"><i class="fas fa-hands-helping"></i> Help</a></li>
            <li style="float:right"><a href="../aboutus.jsp"><i class="fas fa-users"></i> About Us</a></li>
            <li style="float:right"><a href="./teacherHome.jsp"><i class="fas fa-home"></i> Home</a></li>
        </ul>
    </div>

    <div class="home-content">

       <!-- <a href="./teacheraccountsettings.jsp"><img src="../img/avatar.png" alt="Avatar" class="avatar" style="margin-top:-55px;"></a>-->
        <div class="sidenav">
            <h2>Classes</h2>
            <button class="dropdown-btn">Class 1
                <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-container">
                <a href="./createnotices.jsp"><i class="fas fa-chevron-right"></i> Create Notices</a>
                <a href="./viewnotice.jsp"><i class="fas fa-chevron-right"></i> View Notices</a>

            </div>
        </div>

    </div>
    <script>
        /* Loop through all dropdown buttons to toggle between hiding and showing its dropdown content -
        This allows the user to have multiple dropdowns without any conflict */
        var dropdown = document.getElementsByClassName("dropdown-btn");
        var i;

        for (i = 0; i < dropdown.length; i++) {
            dropdown[i].addEventListener("click", function() {
                this.classList.toggle("active");
                var dropdownContent = this.nextElementSibling;
                if (dropdownContent.style.display === "block") {
                    dropdownContent.style.display = "none";
                } else {
                    dropdownContent.style.display = "block";
                }
            });
        }
    </script>

</section>




</body>
</html>
