<%--
  Created by IntelliJ IDEA.
  User: punsisi_p
  Date: 10/20/2021
  Time: 11:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Registration Form</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/registrationform.css">
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
	            <li style="float:right"><a href="officeadmindashboard.jsp" class="active" ><i class="fas fa-columns"></i> Dashboard</a></li>
		</ul>

</div>

<div class="hdiv">

    <form action="${pageContext.request.contextPath}/StudentRegisterServlet" method="post" name="form1" onsubmit="return required(); return phonenumber()">
       
        <h1>Student Registration Form</h1><br><br>
        <p class=textdecors class=removepadding>Student ID</p>
        <input type="text" class="name" name="id" placeholder="Enter ID" required>
        <br />
        <p class=textdecors class=removepadding>First Name:</p>
        <input type="text" class="name" name="user_name1" placeholder="Enter your name with initials" required>
        <br />
        <p class=textdecors class=removepadding>Last Name:</p>
        <input type="text" id="fullname" name="user_name2" placeholder="Enter your full name" required>
        <br />
        <p class=textdecors class=removepadding>Address:</p>
        <input type="text" id="address" name="useraddress" placeholder="Enter your address" required><br><br>
        <p class=textdecors class=removepadding>Contact number:</p>
        <input type="text" id="contact" name="usercontact" placeholder="Enter your contact number" required><br><br>
        <div id="phone_error" class="error hidden">Please enter a valid phone number</div>
        <p class=textdecors class=removepadding>Email:</p>
        <input type="email" id="email" name="email" placeholder="Enter your email address" required><br><br>
        <p class=textdecors class=removepadding>Password:</p>
        <input type="password" id="pass1" name="pass" placeholder="Enter your password" required><br><br>
        <p class=textdecors class=removepadding>Confirm Password:</p>
        <input type="password" id="pass2" name="confpass" placeholder="Enter your new password again" required><br><br>
        <br /><br /><br /><br /><br /><br />
        <input type="submit" name="submitbutton4" value="Sign Up"><br><br><br><br><br><br>


    </form>

        <script>


            function validatePhoneNumber(input_str) {
                var re = /^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$/im;

                return re.test(input_str);
            }


            function required() {
                var empt1 = document.forms["form1"]["id"].value;
                var empt2 = document.forms["form1"]["user_name1"].value;
                var empt3 = document.forms["form1"]["user_name2"].value;
                var empt4 = document.forms["form1"]["user_address"].value;
                var empt5 = document.forms["form1"]["user_contact"].value;
                var empt6 = document.forms["form1"]["email"].value;
                var empt7 = document.forms["form1"]["pass"].value;
                var empt8 = document.forms["form1"]["conf_pass"].value;

                if (empt1 == "" || empt2 == "" || empt3 == "" || empt4 == "" || empt5 == "" || !validatePhoneNumber(empt5) || empt6 == "" || empt7 == "" || empt8 == "") {
                    document.getElementById('phone_error').classList.remove('hidden');
                    return false;
                }
                else {
                    document.getElementById('phone_error').classList.add('hidden');
                    alert("Registration Successfull!");
                }
            }




        </script>



</div>





</body>
</html>

