<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
<title>Teacher Registration Form | Admin</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/teacherregistration.css">
<script src="https://kit.fontawesome.com/e1eaef53f0.js" crossorigin="anonymous"></script>
</head>
<style>
    .error
    {
        color: red;
    }
    .hidden
    {
        display:none;
    }
</style>
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
		<form method="post" action="${pageContext.request.contextPath}/TeacherRegisterServlet" name="form2" onsubmit="return required()">
  
                        <h1>Teacher Registration Form</h1><br><br>

			<p class=textdecors class=removepadding>Teacher ID:</p>
			<input type="text" class="name" name="teacherID" placeholder="Enter the name with initials" required>
			<br />
			<p class=textdecors class=removepadding>First Name:</p>
			<input type="text" class="name" name="user_name1" placeholder="Enter the name with initials" required>
			<br />
			<p class=textdecors class=removepadding>Last Name:</p>
			<input type="text" class="fullname" name="user_name2" placeholder="Enter the full name" required>
			<br />
			<p class=textdecors class=removepadding>Address:</p>
			<input type="text" class="address" name="useraddress" placeholder="Enter the address" required><br><br>
			<p class=textdecors class=removepadding>Contact number:</p>
			<input type="text" class="contact" name="usercontact" placeholder="Enter the contact number"  required><br><br>
            <div id="phone_error" class="error hidden">Please enter a valid phone number</div>
            <p class=textdecors class=removepadding>Email:</p>
			<input type="email" class="email" name="email" placeholder="Enter your email address" required><br><br>
			<p class=textdecors class=removepadding>Password:</p>
			<input type="text" class="pass" name="pass" placeholder="Enter the password" required><br><br>
			<br /><br /><br />
			<input type="submit" name="submitbutton4" value="Register">
			<br><br><br><br><br><br>

		</form>

	</div>
    </body>
</html>


<script>

    function validatePhoneNumber(input_str) {
        var re = /^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$/im;

        return re.test(input_str);
    }

	function required()
	{
		var empt1 = document.forms["form2"]["teacherID"].value;
		var empt2 = document.forms["form2"]["user_name1"].value;
		var empt3 = document.forms["form2"]["user_name2"].value;
		var empt4 = document.forms["form2"]["useraddress"].value;
		var empt5 = document.forms["form2"]["usercontact"].value;
		var empt6 = document.forms["form2"]["email"].value;
		var empt7 = document.forms["form2"]["pass"].value;
		if (empt1 == "" || empt2 == "" || empt3 == "" || empt4 == "" || empt5 == "" || !validatePhoneNumber(empt5)|| empt6 == "" || empt7 == "")
		{
            document.getElementById('phone_error').classList.remove('hidden');
            return false;
        }
        else {
            document.getElementById('phone_error').classList.add('hidden');
            alert("Registration Successfull!");
        }

	}

	/*function onlyNumberKey(evt) {

        // Only ASCII character in that range allowed
        var ASCIICode = (evt.which) ? evt.which : evt.keyCode
        if (ASCIICode > 31 && (ASCIICode < 48 || ASCIICode > 57))
            alert("Invalid Format : Please enter numbers!");
            return false;
        return true;
    }*/

</script>
