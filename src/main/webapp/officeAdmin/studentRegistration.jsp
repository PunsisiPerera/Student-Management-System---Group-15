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

<!-----------Side Nav bar---------->
<div class="sidenav" style="margin-left: -8%;">
    <h2 style="font-family:Trebuchet MS;">Pragathi Institute</h2>
    <div class="left">
        <div class="container">
            <img src="../img/avatar.png" alt="Avatar" class="avatar">
            <a href="ofiiceadminaccountsettings.jsp"><button style="width:175px; height: 40px; background-color: #001D3D; font-family:Trebuchet MS; color: white; border: none; border-radius: 20px; font-size:15px; text-align:center; margin: 10px; margin-left: 15px; display: block; cursor: pointer;">Edit Profile</button></a>
            <a href="../resetpassword.jsp"><button style="width:175px; height: 40px; background-color: #001D3D; font-family:Trebuchet MS; color: white; border: none; border-radius: 20px; font-size:15px; text-align:center; margin: 10px; margin-left: 15px; display: block; cursor: pointer;">Change Password</button></a>
        </div>
    </div>
</div>


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

    <form action="${pageContext.request.contextPath}/StudentRegisterServlet" method="post" name="form1" onsubmit="return required()">
       
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
        <input type="text" name="useraddress" placeholder="Enter your address" required><br><br>
        <p class=textdecors class=removepadding>Contact number:</p>
        <input type="text" name="usercontact" placeholder="Enter your contact number" required><br><br>
        <p class=textdecors class=removepadding>Email:</p>
        <input type="email" name="email" placeholder="Enter your email address" required><br><br>
        <p class=textdecors class=removepadding>Password:</p>
        <input type="password" name="pass" placeholder="Enter your password" required><br><br>
        <p class=textdecors class=removepadding>Confirm Password:</p>
        <input type="password"name="confpass" placeholder="Enter your new password again" required><br><br>
        <br /><br /><br /><br /><br /><br />
        <input type="submit" name="submitbutton4" value="Sign Up"><br><br><br><br><br><br>


        <script>


            function required() {
                var empt1 = document.forms["form1"]["id"].value;
                var empt2 = document.forms["form1"]["user_name1"].value;
                var empt3 = document.forms["form1"]["user_name2"].value;
                var empt4 = document.forms["form1"]["user_address"].value;
                var empt5 = document.forms["form1"]["user_contact"].value;
                var empt6 = document.forms["form1"]["email"].value;
                var empt7 = document.forms["form1"]["pass"].value;
                var empt8 = document.forms["form1"]["conf_pass"].value;

                if (empt1 == "" || empt2 == "" || empt3 == "" || empt4 == "" || empt5 == ""  || empt6 == "" || empt7 == "" || empt8 == "") {
                    return false;
                }
                else {
                    alert("Registration Successfull!");
                }
            }


        </script>


    </form>




</div>





</body>
</html>

