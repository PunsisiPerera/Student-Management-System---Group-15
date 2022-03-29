<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html> 
<head>
<title>Dashboard |Office Admin </title>
<link rel="stylesheet" href="../css/officeadmindashboard.css">
<script src="https://kit.fontawesome.com/e1eaef53f0.js" crossorigin="anonymous"></script>
</head>
<body>
<!-----------Side Nav bar---------->
<div class="sidenav" style="margin-left: -8%;">
	<h2 style="font-family:Trebuchet MS;">Pragathi Institute</h2>
	<div class="left">
		<div class="container">
			<img src="../img/avatar.png" alt="Avatar" class="avatar" style="height: 200px; width: 200px; margin-top: -40px;">
			<a href="ofiiceadminaccountsettings.jsp"><button style="width:175px; height: 40px; background-color: #001D3D; font-family:Trebuchet MS; color: white; border: none; border-radius: 20px; font-size:15px; text-align:center; margin: 10px; margin-left: 15px; display: block; cursor: pointer;">Edit Profile</button></a>
			<a href="../resetpassword.jsp"><button style="width:175px; height: 40px; background-color: #001D3D; font-family:Trebuchet MS; color: white; border: none; border-radius: 20px; font-size:15px; text-align:center; margin: 10px; margin-left: 15px; display: block; cursor: pointer;">Change Password</button></a>
		</div>
	</div>
</div>


<!-----------Nav bar---------->
<div>
		<ul>
			
	            <li style="float:right"><a href="../index.jsp"><i class="fas fa-sign-out-alt"></i> Sign Out</a></li>   			
	            <li style="float:right"><a href="../contactus.jsp"><i class="fas fa-address-book"></i> Contact Us</a></li>
	            <li style="float:right"><a href="../help.jsp"><i class="fas fa-hands-helping"></i> Help</a></li>
	            <li style="float:right"><a href="../aboutus.jsp"><i class="fas fa-users"></i> About Us</a></li>
	            
		</ul>
	</div>




<!-------- main parts---------->
		<br /><br /><br />
		<h1 align="Center">Office Admin Dashboard</h1>
		<br /><br /><br />
			<div class="al1">
				<div class="card">
					<div class="container">
						<h2><a href="studentRegistration.jsp">Register Student</a></h2> 
					</div>
				</div>
			</div>

			<div class="al3">
				<div class="card">
					<div class="container">
						<h2><a href="markattendance.jsp">Mark Attendance</a></h2> 
					</div>
				</div>
			</div>
			
			<div class="al4">
				<div class="card">
					<div class="container">
						<h2><a href="markfeepayments.jsp">Mark Fee Payments</a></h2> 
					</div>
				</div>
			</div>
			
			<div class="al5">
				<div class="card">
					<div class="container">
						<h2><a href="managegeneralnotices.jsp">Manage General Notices</a></h2> 
					</div>
				</div>
			</div>
			
			
		</div>
		

</body>
</html>
