<%--
  Created by IntelliJ IDEA.
  User: 07688
  Date: 21-Oct-21
  Time: 10:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="UTF-8">
    <title>Create Assignments | Teacher</title>
    <link rel="stylesheet" href="../css/teachernotices.css">
    <script src="https://kit.fontawesome.com/e1eaef53f0.js" crossorigin="anonymous"></script>
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<body>



<!--side nav bar-->
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
        <div class="sidenav">
            <h2 style="text-align: left;">Classes</h2>
            <button class="dropdown-btn" style="width:15%;">Class 1
                <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-container" style="width:15%;">
                <a href="./createassignment.jsp"><i class="fas fa-chevron-right"></i> Create Assignments</a>
                <a href="./viewassignmentmarks.jsp"><i class="fas fa-chevron-right"></i> Upload Assignments Marks</a>

            </div>
        </div>



        <div class="hdiv" style="margin-top:-80px;">


            <form method="post">
                <br /><br /><br /><br /><br>
                <h1 style="padding-bottom: 15px; margin-top: -15px;">Create Assignments</h1>

                <textarea id="Assignment" name="Assignment" rows="10" cols="50" placeholder="Write the Assignment here..."></textarea>
                <br>
                <p id=textdecors id=removepadding>Add images here:</p>
                <label for="name"></label><input type="file"/><br><br>

                <input type="submit" name="submitbutton4" value="Upload Assignment"><br>
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



