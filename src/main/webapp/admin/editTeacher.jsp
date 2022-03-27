<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Edit Teacher Form | Admin</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/teacherregistration.css">
    <script src="https://kit.fontawesome.com/e1eaef53f0.js" crossorigin="anonymous"></script>
</head>
<body>

<div>
    <ul>

        <li style="float:right"><a href="../index.jsp"><i class="fas fa-sign-out-alt"></i> Sign Out</a></li>
        <li style="float:right"><a href="../contactus.jsp"><i class="fas fa-address-book"></i> Contact Us</a></li>
        <li style="float:right"><a href="../help.jsp"><i class="fas fa-hands-helping"></i> Help</a></li>
        <li style="float:right"><a href="../aboutus.jsp"><i class="fas fa-users"></i> About Us</a></li>
        <li style="float:right"><a href="./admindashboard.jsp"><i class="fas fa-columns"></i> Dashboard</a></li>
    </ul>
</div>


<div class="hdiv" style="margin-top:-300px;">
    <form method="post" action="${pageContext.request.contextPath}/EditTeacherServlet">

        <h1>Update Teacher's Details</h1><br><br>

        <p class=textdecors class=removepadding>Teacher ID:</p>
        <input type="text" class="name" name="teacherID"
               value="${selectedTeacher.getTeacherID()}" readonly>
        <br />

        <p class=textdecors class=removepadding>First Name:</p>
        <input type="text" class="name" name="f_name"
               value="${selectedTeacher.getF_name()}">
        <br />

        <p class=textdecors class=removepadding>Last Name:</p>
        <input type="text" class="fullname" name="l_name"
               value="${selectedTeacher.getL_name()}">
        <br />

        <p class=textdecors class=removepadding>Address:</p>
        <input type="text" class="address" name="address"
               value="${selectedTeacher.getAddress()}" ><br><br>

        <p class=textdecors class=removepadding>Contact number:</p>
        <input type="text" class="contact" name="contact_no"
               value="${selectedTeacher.getContact_no()}"><br><br>

        <p class=textdecors class=removepadding>Email:</p>
        <input type="text" class="email" name="email"
               value="${selectedTeacher.getEmail()}"><br><br>

        <input type="submit" name="submitbutton4" value="Update"><br><br><br><br><br><br>
    </form>

</div>


</body>
</html>
