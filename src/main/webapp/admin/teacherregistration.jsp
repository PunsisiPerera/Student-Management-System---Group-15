<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
<title>Teacher Registration Form | Admin</title>
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


	<div class="hdiv" style="margin-top:-620px;">
		<form method="post" action="${pageContext.request.contextPath}/TeacherRegisterServlet" onsubmit="required(); return phonenumber()">
  
                        <h1>Teacher Registration Form</h1><br><br>

				<p class=textdecors class=removepadding>Teacher ID:</p>
				<input type="text" class="name" name="teacherID" placeholder="Enter your name with initials" required>
				<br />
                        <p class=textdecors class=removepadding>First Name:</p>
			<input type="text" class="name" name="user_name1" placeholder="Enter your name with initials" required>
			<br />
                        <p class=textdecors class=removepadding>Last Name:</p>
			<input type="text" class="fullname" name="user_name2" placeholder="Enter your full name" required>
			<br />
                        <p class=textdecors class=removepadding>Address:</p>
                        <input type="text" class="address" name="useraddress" placeholder="Enter your address" required><br><br>
                        <p class=textdecors class=removepadding>Contact number:</p>
                        <input type="text" class="contact" name="usercontact" placeholder="Enter your contact number" required><br><br>
			<p class=textdecors class=removepadding>Email:</p>
			<input type="text" class="email" name="email" placeholder="Enter your email address" required><br><br>
                        <p class=textdecors class=removepadding>Password:</p>
			<input type="password" class="pass" name="pass" placeholder="Enter your new password" required><br><br>
			<p class=textdecors class=removepadding>Confirm Password:</p>
			<input type="password" id="pass2" name="confpass" placeholder="Enter your new password again" required><br><br>
			<br /><br /><br /><br /><br /><br />
			<input type="submit" name="submitbutton4" value="Sign Up" onclick="mySubmit()"><br><br><br><br><br><br>
		</form>

	</div>

		<script>
			function mySubmit(){
				confirm("Confirm submission?");
			}


			function required() {
				var empt1 = document.forms["form1"]["teacherid"].value;
				var empt2 = document.forms["form1"]["user_name1"].value;
				var empt3 = document.forms["form1"]["user_name2"].value;
				var empt4 = document.forms["form1"]["useraddress"].value;
				var empt5 = document.forms["form1"]["usercontact"].value;
				var empt6 = document.forms["form1"]["email"].value;
				var empt7 = document.forms["form1"]["pass"].value;
				var empt8 = document.forms["form1"]["conf_pass"].value;

				if (empt1 == "" || empt2 == "" || empt3 == "" || empt4 == "" || empt5 == "" || empt6 == "" || empt7 == "" || empt8 == "") {
					alert("Please input a Value");
					return true;
				}
				else
				{
					alert("Registration successful");
					return false;
				}
			}



			function phonenumber(empt5)
			{
				var empt5 = document.forms["form1"]["user_contact"].value;
				var phoneno = /^\d{10}$/;
				if(empt5.value.match(phoneno))
				{
					alert("valid Phone Number");
					return true;
				}
				else
				{
					alert("Not a valid Phone Number");
					return false;
				}
			}

		</script>




	</body>
</html>
