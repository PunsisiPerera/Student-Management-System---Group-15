<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Registration Form</title>
    <link rel="stylesheet" href="../css/registrationform.css">
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

    <form action="${pageContext.request.contextPath}/StudentRegisterServlet" method="post" >

        <h1>Student Registration Form</h1><br><br>
        <p class=textdecors class=removepadding>Student ID</p>
        <input type="text" class="name" name="id" placeholder="Enter ID">
        <br />
        <p class=textdecors class=removepadding>QR Code</p>
        <input type="text" class="name" name="qr" placeholder="Enter QR Code">
        <br />
        <p class=textdecors class=removepadding>First Name:</p>
        <input type="text" class="name" name="user_name1" placeholder="Enter your name with initials">
        <br />
        <p class=textdecors class=removepadding>Last Name:</p>
        <input type="text" id="fullname" name="user_name2" placeholder="Enter your full name">
        <br />
        <p class=textdecors class=removepadding>Address:</p>
        <input type="text" id="address" name="useraddress" placeholder="Enter your address"><br><br>
        <p class=textdecors class=removepadding>Contact number:</p>
        <input type="text" id="contact" name="usercontact" placeholder="Enter your contact number"><br><br>
        <p class=textdecors class=removepadding>Email:</p>
        <input type="text" id="email" name="email" placeholder="Enter your email address"><br><br>
        <p class=textdecors class=removepadding>Mother's Maiden Name (For Security Purposes):</p>
        <input type="text" id="guardianname" name="userguardianname" placeholder="Enter your Mother's Maiden Name"><br><br>
        <p class=textdecors class=removepadding>New Password:</p>
        <input type="password" id="pass1" name="pass" placeholder="Enter your new password"><br><br>
        <p class=textdecors class=removepadding>Confirm Password:</p>
        <input type="password" id="pass2" name="confpass" placeholder="Enter your new password again"><br><br>
        <br /><br /><br />
        <input type="submit" name="submitbutton4" value="Sign Up"><br><br><br><br><br><br>
    </form>

</div>




</body>
</html>

