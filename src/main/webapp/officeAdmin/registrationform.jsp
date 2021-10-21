<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>Student Registration Form</title>
<link rel="stylesheet" href="../css/registrationform.css">
<script src="https://kit.fontawesome.com/e1eaef53f0.js" crossorigin="anonymous"></script>
</head>
    <body>

      <form action="" method="post">
          
       <div>
		<ul>
			
	            <li style="***"><a href="../index.jsp"><i class="fas fa-sign-out-alt"></i> Sign Out</a></li>   			
	            <li style="***"><a href="../contactus.jsp"><i class="fas fa-address-book"></i> Contact Us</a></li>
	            <li style="***"><a href="../help.jsp"><i class="fas fa-hands-helping"></i> Help</a></li>
	            <li style="***"><a href="../aboutus.jsp"><i class="fas fa-users"></i> About Us</a></li>
	            <li style="***"><a href="officeadmindashboard.jsp" class="active" ><i class="fas fa-columns"></i> Dashboard</a></li>
		</ul>
	</div>
  
	<img src="../img/avatar.png" alt="Avatar" class="avatar" style="padding:0px;">

	<div class="hdiv">
		<h1 align="center" id=removepadding>Sign Up</h1>
		<p class=removepadding>Welcome!<br /><br /><br /><p>
		<form method="post">
                        <br /><br /><br /><br />
                        <h1>Student Registration Form</h1>
                        
                        <p class=textdecors class=removepadding>First Name:</p>
			<input type="text" class="name" name="user_name1" placeholder="Enter your first name" required>
			<br />
                        <p class=textdecors class=removepadding>Last Name:</p>
			<input type="text" class="fullname" name="user_name2" placeholder="Enter your second name" required>
			<br />
                        <p class=textdecors class=removepadding>Address:</p>
                        <input type="text" class="address" name="useraddress" placeholder="Enter your address" required><br><br>
                        <p class=textdecors class=removepadding>Contact number:</p>
                        <input type="text" class="contact" name="usercontact" placeholder="Enter your contact number" required><br><br>
			<p class=textdecors class=removepadding>Email:</p>
			<input type="text" class="email" name="email" placeholder="Enter your email address" required><br><br>
                        <p class=textdecors class=removepadding>Mother's Maiden Name (For Security Purposes):</p>
                        <input type="text" class="guardianname" name="userguardianname" placeholder="Enter your Mother's Maiden Name" required><br><br>
                        <p class=textdecors class=removepadding>New Password:</p>
			<input type="password" class="pass" name="pass" placeholder="Enter your new password" required><br><br>
                        <p class=textdecors class=removepadding>Confirm Password:</p>
			<input type="password" class="pass" name="pass" placeholder="Enter your new password again" required><br><br>
			<br /><br /><br />
			<input type="submit" name="submitbutton4" value="Sign Up"><br><br><br><br><br><br>
		</form>

	</div>

        

      </form>
       

    </body>
</html>