<%--
  Created by IntelliJ IDEA.
  User: 07688
  Date: 21-Oct-21
  Time: 7:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="UTF-8">
    <title>Create Class Notices | Teacher</title>
    <link rel="stylesheet" href="../css/teachercreatenotices.css">
    <script src="https://kit.fontawesome.com/e1eaef53f0.js" crossorigin="anonymous"></script>
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<body>



<div class="sidebar">
    <ul class="nav-links">
        <li>
            <a href="./createnotices.jsp" class="active" >
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
            <li style="float:right"><a href="./teacherHome.jsp"><i class="fas fa-home"></i> Home</a></li>
        </ul>
    </div>


    <div class="home-content">
        <a href="./teacheraccountsettings.jsp"><img src="../img/avatar.png" alt="Avatar" class="avatar" style="margin-top:-55px;"></a>
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



        <div class="hdiv" style="margin-top:-80px;">


            <form method="post">
                <br /><br /><br /><br /><br>
                <h1>Create Notices</h1>

                <textarea id="notice" name="notice" rows="10" cols="50" placeholder="Write the notice here..."></textarea>
                <br>
                <p id=textdecors id=removepadding>Add images here:</p>
                <label for="name"></label><input type="file"/><br><br>

                <input type="submit" name="submitbutton4" value="Upload notice"><br>
                <input type="reset" name="resetbutton4" value="Reset">
            </form>
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


    </div>



</section>




</body>
</html>

