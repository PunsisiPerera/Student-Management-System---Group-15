
<html>
<head>
<title>Student Registration Form</title>
<link rel="stylesheet" href="../css/registrationform.css">
<script src="https://kit.fontawesome.com/e1eaef53f0.js" crossorigin="anonymous"></script>
</head>
    <body>

      <form action="index.html" method="post">
          
<div>
		<ul>
			    <li style="float:right"><a href="../index.jsp"><i class="fas fa-sign-out-alt"></i> Sign Out</a></li>   			
	            <li style="float:right"><a href="../contactus.jsp"><i class="fas fa-address-book"></i> Contact Us</a></li>
	            <li style="float:right"><a href="../help.jsp"><i class="fas fa-hands-helping"></i> Help</a></li>
	            <li style="float:right"><a href="../aboutus.jsp"><i class="fas fa-users"></i> About Us</a></li>
	            <li style="float:right"><a href="officeadmindashboard.jsp" class="active" ><i class="fas fa-columns"></i> Dashboard</a></li>
		</ul>
	</div>


	<div class="hdiv">
		<h1 align="center" class=removepadding>Sign Up</h1>
		<p class=removepadding>Welcome!<br /><br /><br /><p>
		<form method="post" action="StudentRegisterServlet">
                        <br /><br /><br /><br />
                        <h1>Student Registration Form</h1>
				<p class=textdecors class=removepadding>Student ID:</p>
				<input type="text" class="name" name="id" placeholder="Enter ID">
				<br />
				<p class=textdecors class=removepadding>QR Code:</p>
				<input type="text" class="name" name="qr" placeholder="Enter QR Code">
				<br />
                        <p class=textdecors class=removepadding>First Name:</p>
			<input type="text" class="name" name="user_name1" placeholder="Enter your first name">
			<br />
                        <p class=textdecors class=removepadding>Last Name:</p>
			<input type="text" id="fullname" name="user_name2" placeholder="Enter your last name">
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

        

      </form>
       

    </body>
</html>
