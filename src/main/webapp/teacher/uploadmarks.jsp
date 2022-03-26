<%--
  Created by IntelliJ IDEA.
  User: Gunawardana
  Date: 3/20/2022
  Time: 12:19 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="UTF-8">
    <title>UploadMarks</title>
    <link rel="stylesheet" href="../css/teachercreatenotices.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>

    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <script>
        $(document).ready(
            function() {
                $("form").submit(
                    function(event) {
                        event.preventDefault();
                        var formData = new FormData(this);
                        $.ajax({
                            url : "upload",
                            type : 'POST',
                            data : formData,
                            success : function(data) {
                                var row = data;
                                for(i =0 ; i < row.length ; i++){
                                    var column = row[i];
                                    var eachrow = "<tr>";
                                    for(j =0 ; j < column.length ; j ++){
                                        eachrow = eachrow + "<td>"  + column[j] + "</td>";
                                    }
                                    eachrow = eachrow + "</td>";
                                    $('#tbody').append(eachrow);
                                }
                            },
                            cache : false,
                            contentType : false,
                            processData : false
                        });

                    });
            });
    </script>
</head>
<body>



<div class="sidebar">
    <ul class="nav-links">
        <li>
            <a href="./teachernotices.jsp"  >
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
            <a href="./assignments.jsp" class="active">
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
                <a href="./createassignment.jsp"><i class="fas fa-chevron-right"></i> Create Assignments</a>
                <a href="./viewassignmentmarks.jsp"><i class="fas fa-chevron-right"></i> View Assignments Marks</a>
                <a href="./uploadmarks.jsp"><i class="fas fa-chevron-right"></i> Upload Assignments Marks</a>
            </div>
        </div>



        <div class="hdiv" style="margin-top:-80px;">


            <form  method="post" enctype="multipart/form-data">
                <br /><br /><br /><br /><br>
                <h2>Upload Assignment Marks</h2>
                Select File : <input type="file" name="filetoupload">

                <input type="submit" value="Save">
            </form>
            <table id ="tableveiw">

                <tbody id = "tbody">

                </tbody>

            </table>

            <br /><br /><br /><br />
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
