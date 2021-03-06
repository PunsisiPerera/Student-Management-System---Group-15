<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>View Existing Classes | Admin</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/viewexistingclasses.css">
<script src="https://kit.fontawesome.com/e1eaef53f0.js" crossorigin="anonymous"></script>
</head>
<body>


<div class="wrapper">
	<div class="main_content">
			<!-----------Main Nav bar---------->
			<div class="main_nav">
				        
		<ul>
			
	            <li style="float:right"><a href="../index.jsp"><i class="fas fa-sign-out-alt"></i> Sign Out</a></li>   			
	            <li style="float:right"><a href="../contactus.jsp"><i class="fas fa-address-book"></i> Contact Us</a></li>
	            <li style="float:right"><a href="../help.jsp"><i class="fas fa-hands-helping"></i> Help</a></li>
	            <li style="float:right"><a href="../aboutus.jsp"><i class="fas fa-users"></i> About Us</a></li>
	            <li style="float:right"><a href="admindashboard.jsp"><i class="fas fa-columns"></i> Dashboard</a></li>
		</ul>

			</div>
		</div>
</div>


	<div class="main">
		<h2>View Existing Classes</h2>
		
	</div>

	<div class="abc">
		<a href="${pageContext.request.contextPath}/admin/createnewclass.jsp"><button style="margin-bottom: 20px;">Create New Class</button></a>
		<!--<button>Generate Report</button>-->
	</div>

	<script>
	/* Loop through all dropdown buttons to toggle between hiding and showing its dropdown content - 
	This allows the user to have multiple dropdowns without any conflict */
	var dropdown = document.getElementsByClassName("dropdown-btn");
	var i;

	for (i = 0; i < dropdown.length; i++) {
		dropdown[i].addEventListener("click", function() {
			this.classList.toggle("active");
			var dropdownContent = this.nextElementSibling;
			if (dropdownContent.style.display === "block") {
				dropdownContent.style.display = "none";
			} else {
				dropdownContent.style.display = "block";
			}
		});
	}
	</script>


<div class="tab">

	<table  border="1">
		<thead>
			<tr>
				<th>Class id</th>
				<th>Name</th>
				<th>Year</th>
				<th>Number of Students</th>
				<th>Medium</th>
				<th>Day</th>
				<th>Start_time</th>
				<th>End_time</th>
				<th>Teacher</th>
				<th>Classroom</th>
				<th>Subject</th>
			</tr>
		</thead>

		<tbody>
		<!--   for (Todo todo: todos) {  -->
		<c:forEach var="classes" items="${classList}">

			<tr>
				<td>
					<c:out value="${classes.classID}" />
				</td>
				<td>
					<c:out value="${classes.name}" />
				</td>
				<td>
					<c:out value="${classes.year}" />
				</td>
				<td>
					<c:out value="${classes.student_count}" />
				</td>
				<td>
					<c:out value="${classes.medium}" />
				</td>
				<td>
					<c:out value="${classes.day}" />
				</td>
				<td>
					<c:out value="${classes.start_time}" />
				</td>
				<td>
					<c:out value="${classes.end_time}" />
				</td>
				<td>
					<c:out value="${classes.teacher}" />
				</td>
				<td>
					<c:out value="${classes.class_room}" />
				</td>
				<td>
					<c:out value="${classes.subject}" />
				</td>

			</tr>
		</c:forEach>
		<!-- } -->
		</tbody>

	</table>
	<br /><br /><br /><br />
        
        </div>
</div>




</body>
</html> 
