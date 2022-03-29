<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html> 
<head>
<title>Dashboard |Office Admin </title>
<link rel="stylesheet" href="../css/officeadmindashboard.css">
<script src="https://kit.fontawesome.com/e1eaef53f0.js" crossorigin="anonymous"></script>
</head>
<body>
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
			<div class="al1">
				<div class="card">
					<div class="container">
						<h2><a href="${pageContext.request.contextPath}/ViewStudentServlet">View Student List</a></h2>
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
