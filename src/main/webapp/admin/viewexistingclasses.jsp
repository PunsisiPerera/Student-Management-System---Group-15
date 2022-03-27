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
		<a href="./createnewclass.jsp"><button style="margin-bottom: 20px;">Create New Class</button></a>
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
                                <th>Year</th>
                                <th>Medium</th>
                                <th>Teacher Name</th>
                                <th>Room no</th>
                                <th>Subject</th>
                                <th>Options</th>
			</tr>
		</thead>
		
		<tbody>
			<tr>
				<td align="center">test1</td>
				<td align="center">test1</td>
				<td align="center">test1</td>
				<td align="center">test1</td>
                                <td align="center">test1</td>
				<td align="center">test1</td>
				<td align="center">test1</td>
				<td align="center">test1</td>
				<td align="center">test1</td>
                                <td align="center"><input type="submit" name="submitbutton4" value="Edit"><br>
                                <input type="submit" name="submitbutton4" value="Delete"><br></td>
			</tr>
                        
                        <tr>
				<td align="center">test2</td>
				<td align="center">test2</td>
				<td align="center">test2</td>
				<td align="center">test2</td>
                                <td align="center">test2</td>
				<td align="center">test2</td>
				<td align="center">test2</td>
				<td align="center">test2</td>
							<td align="center">test2</td>
                                <td align="center"><input type="submit" name="submitbutton4" value="Edit"><br>
                                <input type="submit" name="submitbutton4" value="Delete"><br></td>
			</tr>
		</tbody>
	</table>
	<br /><br /><br /><br />
        
        </div>
</div>




</body>
</html> 
