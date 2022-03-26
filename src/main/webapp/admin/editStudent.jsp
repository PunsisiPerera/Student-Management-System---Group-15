<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Registration Form</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/registrationform.css">
    <script src="https://kit.fontawesome.com/e1eaef53f0.js" crossorigin="anonymous"></script>
</head>
<body>

<div>
    <ul>

        <li style="float:right"><a href="../index.jsp"><i class="fas fa-sign-out-alt"></i> Sign Out</a></li>
        <li style="float:right"><a href="../contactus.jsp"><i class="fas fa-address-book"></i> Contact Us</a></li>
        <li style="float:right"><a href="../help.jsp"><i class="fas fa-hands-helping"></i> Help</a></li>
        <li style="float:right"><a href="../aboutus.jsp"><i class="fas fa-users"></i> About Us</a></li>
        <li style="float:right"><a href="officeadmindashboard.jsp" class="active" ><i class="fas fa-columns"></i> Dashboard</a></li>
    </ul>

</div>

<a href="./ofiiceadminaccountsettings.jsp"><img src="../img/avatar.png" alt="Avatar" class="avatar" style="padding:0px;"></a>

<div class="hdiv">

    <form action="${pageContext.request.contextPath}/EditStudentServlet" method="post" >


        <h1>Edit Student's Details</h1><br><br>
        <p class=textdecors class=removepadding>Student ID</p>
        <input type="text" class="name" name="studentID"
        value="${selectedStudent.getStudentID()}" readonly>
        <br />

        <p class=textdecors class=removepadding>First Name:</p>
        <input type="text" class="name" name="f_name"
        value="${selectedStudent.getF_name()}">
        <br />

        <p class=textdecors class=removepadding>Last Name:</p>
        <input type="text" id="fullname" name="l_name"
               value="${selectedStudent.getL_name()}">
        <br />

        <p class=textdecors class=removepadding>Address:</p>
        <input type="text" id="address" name="address"
        value="${selectedStudent.getAddress()}">
        <br><br>

        <p class=textdecors class=removepadding>Contact number:</p>
        <input type="text" id="contact" name="contact_no"
               value="${selectedStudent.getContact_no()}">
        <br><br>

        <p class=textdecors class=removepadding>Email:</p>
        <input type="text" id="email" name="email"
               value="${selectedStudent.getEmail()}">
        <br><br>

        <input type="submit" name="submitbutton4" value="Update"><br><br><br><br><br><br>
    </form>

</div>




</body>
</html>

