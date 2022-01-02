<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>Mark Fee Payments | Office Admin</title>
<link rel="stylesheet" href="../css/markattendance.css">
<script src="https://kit.fontawesome.com/e1eaef53f0.js" crossorigin="anonymous"></script>
</head>
    <body>

      <form action="index.html" method="post">
          
       <div>
		<ul>
			
	            <li style="float:right"><a href="../index.jsp"><i class="fas fa-sign-out-alt"></i> Sign Out</a></li>   			
	            <li style="float:right"><a href="../contactus.jsp"><i class="fas fa-address-book"></i> Contact Us</a></li>
	            <li style="float:right"><a href="../help.jsp"><i class="fas fa-hands-helping"></i> Help</a></li>
	            <li style="float:right"><a href="../aboutus.jsp"><i class="fas fa-users"></i> About Us</a></li>
	            <li style="float:right"><a href="officeadmindashboard.jsp" class="active" ><i class="fas fa-columns"></i> Dashboard</a></li>
		</ul>
	</div>

          <a href="./ofiiceadminaccountsettings.jsp"><img src="../img/avatar.png" alt="Avatar" class="avatar" style="padding:0px;"></a>
        
        <div class="hdiv">
            <h1 align="center" class=removepadding>Mark Fee Payments</h1>
	    <p class=removepadding>Welcome!<br /><br /><br /><p>
            
        <form method="post">
              <br /><br /><br /><br /><br>
              <h1>Mark Fee Payments</h1>    
        
        <p class=textdecors class=removepadding>Select the class:</p>
	
        <select name="classes" class="classes">
            <option value="Bio2023">Bio2023</option>
            <option value="Maths2023">Maths2023</option>
            <option value="Arts2023">Arts2023</option>
            <option value="Commerce2023">Commerce2023</option>
        </select>
        <br><br>    
        
       
        <p class=textdecors class=removepadding>Enter the Student Number:</p>
	<input type="text" class="studentnumber" name="stno" placeholder="Enter the student number here"><br><br>
	<br />
	<input type="submit" name="submitbutton5" value="Search"><br><br>
	
	
    <textarea rows=20 cols=50></textarea>

	   <p class=textdecors class=removepadding>Enter the amount:</p>
	<input type="text" class="amount" name="amnt" placeholder="Enter the paid amount here"><br><br>
	<br />
        
        <input type="submit" name="submitbutton4" value="Mark Fee Payment"><br><br>
	
        </form>
        </div>    
      
        

    </body>
</html>
