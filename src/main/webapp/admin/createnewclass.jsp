<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>Create New Class</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/createnewclass.css">
<script src="https://kit.fontawesome.com/e1eaef53f0.js" crossorigin="anonymous"></script>
</head>
    <body>

      <form action="" method="post">
          
                <div>
		<ul>
			
	            <li style="float:right"><a href="../index.jsp"><i class="fas fa-sign-out-alt"></i> Sign Out</a></li>   			
	            <li style="float:right"><a href="../contactus.jsp"><i class="fas fa-address-book"></i> Contact Us</a></li>
	            <li style="float:right"><a href="../help.jsp"><i class="fas fa-hands-helping"></i> Help</a></li>
	            <li style="float:right"><a href="../aboutus.jsp"><i class="fas fa-users"></i> About Us</a></li>
	            <li style="float:right"><a href="admindashboard.jsp" class="active" ><i class="fas fa-columns"></i> Dashboard</a></li>
		</ul>
	</div>
        
        <div class="hdiv">
            <h1 align="center" class=removepadding>Create New Class</h1>
	    <p class=removepadding>Welcome!<br /><br /><br /><p>
            
        <form method="post" action="CreateNewClassServlet">
              <br /><br /><br /><br /><br>
              <h1>Create New Class</h1>

            <p class=textdecors class=removepadding>Class Name:</p>
            <input type="text" class="endtime" name="name" placeholder="Enter a class name here" ><br><br>
            <br>

            <p class=textdecors class=removepadding>Maximum student count:</p>
            <input type="text" class="endtime" name="student_count" placeholder="Enter the maximum student count" ><br><br>
            <br>

            <p class=textdecors class=removepadding>Class Year:</p>
            <input type="text" class="endtime" name="year" placeholder="Enter the AL year" ><br><br>
            <br>

            <p class=textdecors class=removepadding>Medium:</p>
            <input type="text" class="endtime" name="medium" placeholder="Enter the Starting Time" ><br><br>
            <br>


          <p class=textdecors class=removepadding>Subject:</p>
	
        <select name="classes" class="classes">
            <option value="Maths">Subject1</option>
        </select>
        <br><br>
        
        <p class=textdecors class=removepadding>Day of the week:</p>
        
        <select name="classes" class="classes">
            <option value="monday">Monday</option>
            <option value="tuesday">Tuesday</option>
            <option value="wednesday">Wednesday</option>
            <option value="thursday">Thursday</option>
            <option value="friday">Friday</option>
            <option value="saturday">Saturday</option>
            <option value="sunsday">Sunday</option>
        </select>
        <br><br>

         <p class=textdecors class=removepadding>Select teacher:</p>
	
        <select name="classes" class="classes">
            <option value="Bio2023">Teacher1</option>
        </select>
        <br><br> 
        
         <p class=textdecors class=removepadding>Select classroom:</p>
	
        <select name="classes" class="classes">
            <option value="Classroom1">Classroom1</option>
        </select>
        <br><br>

            <p class=textdecors class=removepadding>Select start time:</p>
            <input type="time" name="stime">
            <br><br>

            <p class=textdecors class=removepadding>Select finish time:</p>
            <input type="time" name="ftime">
            <br><br>

            <input type="submit" name="submitbutton4" value="Create a new class"><br><br>

            </form>
        </div>


    </body>
</html>   
        
       
