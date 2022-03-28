<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employee Registration Form | Admin</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/employeeregistration.css">
    <script src="https://kit.fontawesome.com/e1eaef53f0.js" crossorigin="anonymous"></script>
</head>
<body>

<div>

    <div>
        <ul>

            <li style="float:right"><a href="../index.jsp"><i class="fas fa-sign-out-alt"></i> Sign Out</a></li>
            <li style="float:right"><a href="../contactus.jsp"><i class="fas fa-address-book"></i> Contact Us</a></li>
            <li style="float:right"><a href="../help.jsp"><i class="fas fa-hands-helping"></i> Help</a></li>
            <li style="float:right"><a href="../aboutus.jsp"><i class="fas fa-users"></i> About Us</a></li>
            <li style="float:right"><a href="./admindashboard.jsp" class="active" ><i class="fas fa-columns"></i> Dashboard</a></li>
        </ul>


    </div>


    <div class="hdiv">

        <form method="post" action="${pageContext.request.contextPath}/EditEmployeeServlet">
            <br /><br /><br /><br />
            <br /><br /> <br /><br /><h1>Edit an Employee Form</h1>
            <br /><br />
            <p class=textdecors class=removepadding>Employee ID:</p>
            <input type="text" class="name" name="empID"
                   value="${selectedOfficeAdmin.getStaffID()}" readonly>
            <br />

            <p class=textdecors class=removepadding>First Name:</p>
            <input type="text" class="name" name="f_name"
                   value="${selectedOfficeAdmin.getF_name()}" >
            <br />

            <p class=textdecors class=removepadding>Last Name:</p>
            <input type="text" class="fullname" name="l_name"
                   value="${selectedOfficeAdmin.getL_name()}" >
            <br />

            <p class=textdecors class=removepadding>Change Position:</p>
            <input type="text" class="address" name="position"
                   value="${selectedOfficeAdmin.getPosition()}" ><br><br>

            <p class=textdecors class=removepadding>Address:</p>
            <input type="text" class="address" name="address"
                   value="${selectedOfficeAdmin.getAddress()}" ><br><br>

            <p class=textdecors class=removepadding>Contact number:</p>
            <input type="text" class="contact" name="contact_no"
                   value="${selectedOfficeAdmin.getContact_no()}" ><br><br>

            <p class=textdecors class=removepadding>Email:</p>
            <input type="text" class="email" name="email"
                   value="${selectedOfficeAdmin.getEmail()}" ><br><br>

            <input type="submit" name="submitbutton4" value="Update"><br><br><br><br><br><br>
        </form>

    </div>



</div>


</body>
</html>
