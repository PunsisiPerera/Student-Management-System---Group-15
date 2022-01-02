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
            
        <form method="post">
              <br /><br /><br /><br /><br>
              <h1>Create New Class</h1>   
              
         <p class=textdecors class=removepadding>Start time:</p>
         <input type="text" class="endtime" name="endtime" placeholder="Enter the start time here" ><br><br>
        <br><br>  
        
         <p class=textdecors class=removepadding>End time:</p>
         <input type="text" class="endtime" name="endtime" placeholder="Enter the end time here" ><br><br>
        <br><br>       
        
        
       
        
        <input type="submit" name="submitbutton4" value="Create a new class"><br><br>
        
        </form>
        </div>
        
        <div class="abc">
            
            <p class=textdecors class=removepadding>Subject:</p>
	
        <select name="classes" class="classes">
            <option value="Maths">Maths</option>
            <option value="Science">Science</option>
            <option value="Dancing">Dancing<option>
            <option value="Music">Music</option>
        </select>
        <br><br>
        
        <p class=textdecors class=removepadding>Day of the week:</p>
        
        <select name="classes" class="classes">
            <option value="Monday">Monday</option>
            <option value="Tuesday">Tuesday</option>
            <option value="Wednesday">Wednesday</option>
            <option value="Thursday">Thursday</option>
            <option value="Thursday">Thursday</option>
            <option value="Friday">Friday</option>
            <option value="Saturday">Saturday</option>
            <option value="Sunsday">Sunday</option>
        </select>
        <br><br> 
        
        </div>
       
     
	
       
        <div class="xyz">
        
         <p class=textdecors class=removepadding>Select teacher:</p>
	
        <select name="classes" class="classes">
            <option value="Bio2023">Teacher1</option>
            <option value="Maths2023">Teacher2</option>
            <option value="Arts2023">Teacher3</option>
            <option value="Commerce2023">Teacher4</option>
        </select>
        <br><br> 
        
         <p class=textdecors class=removepadding>Select classroom:</p>
	
        <select name="classes" class="classes">
            <option value="Classroom1">Classroom1</option>
            <option value="Classroom2">Classroom</option>
            <option value="Classroom3">Classroom3</option>
            <option value="Classroom4">Classroom4</option>
        </select>
        <br><br> 
        
        </div> 
          
          </body>
</html>   
        
       
