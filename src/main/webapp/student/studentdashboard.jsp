<%--
  Created by IntelliJ IDEA.
  User: 07688
  Date: 20-Oct-21
  Time: 9:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dashboard | Student</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../css/studentdashboard.css">
    <script src="https://kit.fontawesome.com/e1eaef53f0.js" crossorigin="anonymous"></script>
</head>
<body>

<!-----------Side Nav bar---------->
<div class="sidenav">
    <h2 style="font-family:Trebuchet MS;">Pragathi Institute</h2>
    <div class="left">
        <div class="container">
            <img src="../img/avatar.png" alt="Avatar" class="avatar">
            <a href="./studentaccountsettings.jsp"><button style="width:175px; height: 40px; background-color: #001D3D; font-family:Trebuchet MS; color: white; border: none; border-radius: 20px; font-size:15px; text-align:center; margin: 10px; margin-left: 0px; display: block; cursor: pointer;">Edit Profile</button></a>
            <a href="../resetpassword.jsp"><button style="width:175px; height: 40px; background-color: #001D3D; font-family:Trebuchet MS; color: white; border: none; border-radius: 20px; font-size:15px; text-align:center; margin: 10px; margin-left: 0px; display: block; cursor: pointer;">Change Password</button></a>
        </div>
    </div>
    <br /><br /><br />
    <button class="dropdown-btn">Class 1
        <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-container">
        <a href="#"><i class="fas fa-chevron-right"></i> Marks</a>
        <a href="#"><i class="fas fa-chevron-right"></i> Assignment Details</a>
        <a href="#"><i class="fas fa-chevron-right"></i> Notices</a>
        <a href="#"><i class="fas fa-chevron-right"></i> Class Details</a>
    </div>
</div>


<div class="wrapper">
    <div class="main_content">
        <!-----------Main Nav bar---------->
        <div class="main_nav">
            <ul>

                <li style="float:right"><a href="../index.jsp"><i class="fas fa-sign-out-alt"></i> Sign Out</a></li>
                <li style="float:right"><a href="../contactus.jsp"><i class="fas fa-address-book"></i> Contact Us</a></li>
                <li style="float:right"><a href="../help.jsp"><i class="fas fa-hands-helping"></i> Help</a></li>
                <li style="float:right"><a href="../aboutus.jsp"><i class="fas fa-users"></i> About Us</a></li>
                <li style="float:right"><a href="studenthome.jsp"><i class="fas fa-home"></i> Home</a></li>
            </ul>
        </div>
    </div>
</div>

<!--<a href="studentaccountsettings.jsp"><img src="../img/avatar.png" alt="Avatar" class="avatar" style="padding:0px;"></a>-->

<div class="main">
    <h2>Student Dashboard</h2>
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

<div class="tab">
    <div class="tabx">
<!------------marks------------

    <h2>Assignment Marks</h2>
    <table  border="1">
        <thead>
        <tr>
            <th>Assignment Number</th>
            <th>Assignment Name</th>
            <th>Date</th>
            <th>Marks</th>
        </tr>
        </thead>

        <tbody>
        <tr>
            <td align="center">test1</td>
            <td align="center">test1</td>
            <td align="center">test1</td>
            <td align="center">test1</td>
        </tr>
        </tbody>
    </table>
    <br /><br /><br /><br />>

    <!------------assignment details------------>
    <h2>Assignment Details</h2>
        <input type="submit" name="submitbutton4" value="Delete">
    <table cellpadding="5px" border="1">
        <thead>
        <tr>
            <th>Assignment Number</th>
            <th>Assignment Name</th>
            <th>Assignment Details</th>
        </tr>
        </thead>

        <tbody>
        <tr>
            <td align="center">test1</td>
            <td align="center">test1</td>
            <td align="center">test1</td>
        </tr>
        </tbody>
    </table>

    <br /><br /><br /><br />

    <!------------Notices------------>
    <h2>Class Notices</h2>
    <table cellpadding="5px" border="1">
        <thead>
        <tr>
            <th>Notice Number</th>
            <th>Date</th>
            <th>Notice Details</th>
        </tr>
        </thead>

        <tbody>
        <tr>
            <td align="center">test1</td>
            <td align="center">test1</td>
            <td align="center">test1</td>
        </tr>
        </tbody>
    </table>
    </div>
    <br /><br /><br /><br />
    <!------------Class Details------------>
    <h2>Class Details</h2>
    <div class="details">
        <table cellpadding="5px" border="0">
            <tr>
                <th>Subject:</th>
                <td>test1</td>
            </tr>
            <tr>
                <th>Teacher:</th>
                <td>test1</td>
            </tr>
            <tr>
                <th>Year:</th>
                <td>test1</td>
            </tr>
            <tr>
                <th>Class Date:</th>
                <td>test1</td>
            </tr>
            <tr>
                <th>Class Time:</th>
                <td>test1</td>
            </tr>
            <tr>
                <th>Monthly Fee:</th>
                <td>test1</td>
            </tr>
        </table>
    </div>
</div>




</body>
</html>

