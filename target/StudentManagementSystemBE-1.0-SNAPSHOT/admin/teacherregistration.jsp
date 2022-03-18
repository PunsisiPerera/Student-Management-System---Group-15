<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
<title>Teacher Registration Form</title>
<link rel="stylesheet" href="../css/teacherregistration.css">
<script src="https://kit.fontawesome.com/e1eaef53f0.js" crossorigin="anonymous"></script>
</head>
    <body>

        <div>
		<ul>
			
	            <li style="float:right"><a href="../index.jsp"><i class="fas fa-sign-out-alt"></i> Sign Out</a></li>   			
	            <li style="float:right"><a href="../contactus.jsp"><i class="fas fa-address-book"></i> Contact Us</a></li>
	            <li style="float:right"><a href="../help.jsp"><i class="fas fa-hands-helping"></i> Help</a></li>
	            <li style="float:right"><a href="../aboutus.jsp"><i class="fas fa-users"></i> About Us</a></li>
	            <li style="float:right"><a href="admindashboard.jsp" class="active" ><i class="fas fa-columns"></i> Dashboard</a></li>
		</ul>
	</div>


	<div class="hdiv">
		<form method="post" action="${pageContext.request.contextPath}/TeacherRegisterServlet">
  
                        <h1>Teacher Registration Form</h1><br><br>

				<p class=textdecors class=removepadding>Teacher ID:</p>
				<input type="text" class="name" name="teacherID" placeholder="Enter your name with initials">
				<br />
                        <p class=textdecors class=removepadding>First Name:</p>
			<input type="text" class="name" name="user_name1" placeholder="Enter your name with initials">
			<br />
                        <p class=textdecors class=removepadding>Last Name:</p>
			<input type="text" class="fullname" name="user_name2" placeholder="Enter your full name">
			<br />
                        <p class=textdecors class=removepadding>Address:</p>
                        <input type="text" class="address" name="useraddress" placeholder="Enter your address"><br><br>
                        <p class=textdecors class=removepadding>Contact number:</p>
                        <input type="text" class="contact" name="usercontact" placeholder="Enter your contact number"><br><br>
			<p class=textdecors class=removepadding>Email:</p>
			<input type="text" class="email" name="email" placeholder="Enter your email address"><br><br>
                        <p class=textdecors class=removepadding>Mother's Maclassen Name (For Security Purposes):</p>
                        <input type="text" class="guardianname" name="userguardianname" placeholder="Enter your Mother's Maclassen Name"><br><br>
                        <p class=textdecors class=removepadding>New Password:</p>
			<input type="password" class="pass" name="pass" placeholder="Enter your new password"><br><br>
			<br /><br /><br />
			<input type="submit" name="submitbutton4" value="Sign Up"><br><br><br><br><br><br>
		</form>

	</div>


    </body>
</html>
