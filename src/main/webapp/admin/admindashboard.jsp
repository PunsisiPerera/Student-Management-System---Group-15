<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html> 
<head>
<title>Dashboard | Admin </title>
<link rel="stylesheet" href="../css/admindashboard.css">
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
					<li style="float:right"><a href="./admindashboard.jsp" class="active" ><i class="fas fa-columns"></i> Dashboard</a></li>
		</ul>
</div>

<!-------- main parts---------->
		<br /><br /><br />
		<h1 align="Center">Admin Dashboard</h1>
		<br /><br /><br />
			<div class="al1">
				<div class="card">
					<div class="container">
						<h2><a href="./teacherregistration.jsp">Add Teachers</a></h2>
					</div>
				</div>
			</div>
			
			<div class="al2">
				<div class="card">
					<div class="container">
						<h2><a href="./employeeregistration.jsp">Add Employees</a></h2>
					</div>
				</div>
			</div>
			
			<div class="al3">
				<div class="card">
					<div class="container">
						<h2><a href="${pageContext.request.contextPath}/ViewTeachersServlet">View Teacher List</a></h2>
					</div>
				</div>
			</div>
			
			<div class="al4">
				<div class="card">
					<div class="container">
						<h2><a href="./viewexistingclasses.jsp">Manage Subjects + Classes</a></h2>
					</div>
				</div>
			</div>
			
			<div class="al5">
				<div class="card">
					<div class="container">
						<h2><a href="${pageContext.request.contextPath}/ViewStudentServlet">View Student List</a></h2>
					</div>
				</div>
			</div>
			
			<div class="al6">
				<div class="card">
					<div class="container">
						<h2><a href="${pageContext.request.contextPath}/ViewEmployeeServlet">View Employees</a></h2>
					</div>
				</div>
			</div>
			
			<div class="al7">
				<div class="card">
					<div class="container">
						<h2><a href="${pageContext.request.contextPath}/InquiryServlet">Manage Inquiries</a></h2>
					</div>
				</div>
			</div>
		
		</div>
		

</body>
</html>
