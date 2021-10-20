<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>Manage General Notices | Office Admin</title>
<link rel="stylesheet" href="../css/managegeneralnotices.css">
<script src="https://kit.fontawesome.com/e1eaef53f0.js" crossorigin="anonymous"></script>
</head>
    <body>

      <form action="#" method="post">
          
        <div>
		<ul>
			
	            <li style="float:right"><a href="../index.html"><i class="fas fa-sign-out-alt"></i> Sign Out</a></li>   			
	            <li style="float:right"><a href="../contactus.html"><i class="fas fa-address-book"></i> Contact Us</a></li>
	            <li style="float:right"><a href="../help.html"><i class="fas fa-hands-helping"></i> Help</a></li>
	            <li style="float:right"><a href="../aboutus.html"><i class="fas fa-users"></i> About Us</a></li>
	            <li style="float:right"><a href="./officeadmindashboard.html" class="active" ><i class="fas fa-columns"></i> Dashboard</a></li>
		</ul>
	</div> 
	
	<img src="../img/avatar.png" alt="Avatar" class="avatar" style="padding:0px;">
	
	
        <div class="hdiv">
            <h1 align="center" class=removepadding>Manage General Notices</h1>
	    <p class=removepadding>Welcome!<br /><br /><br /><p>
            
        <form method="post">
              <br /><br /><br /><br /><br>
              <h1>Manage General Notices</h1> 
              
            <textarea class="notice" name="notice" rows="10" cols="50" placeholder="Write the notice here..."></textarea>
            <br>
            <p class=textdecors class=removepadding>Add images here:</p>
            <label for="name"></label><input type="file"/><br><br>
            
             <input type="submit" name="submitbutton4" value="Upload and view the notice"><br>
             <input type="reset" name="resetbutton4" value="Reset">
          
        </div>
 
      </form>
        
       <div class="footer">
 		 <p style="color: white;">Copyright � 2021 - Group 12. All rights reserved.</p>
 		 <p style="color: white;">Emergency</p>
	</div>

      
    </body>
</html>