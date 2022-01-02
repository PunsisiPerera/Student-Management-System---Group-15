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
			
	            <li style="float:right"><a href="../index.jsp"><i class="fas fa-sign-out-alt"></i> Sign Out</a></li>   			
	            <li style="float:right"><a href="../contactus.jsp"><i class="fas fa-address-book"></i> Contact Us</a></li>
	            <li style="float:right"><a href="../help.jsp"><i class="fas fa-hands-helping"></i> Help</a></li>
	            <li style="float:right"><a href="../aboutus.jsp"><i class="fas fa-users"></i> About Us</a></li>
	            <li style="float:right"><a href="officeadmindashboard.jsp" class="active" ><i class="fas fa-columns"></i> Dashboard</a></li>
		</ul>
	</div>

          <a href="./ofiiceadminaccountsettings.jsp"><img src="../img/avatar.png" alt="Avatar" class="avatar" style="padding:0px;"></a>
	
	
        <div class="hdiv">
            <h1 align="center" class=removepadding>Manage General Notices</h1>
	    <p class=removepadding>Welcome!<br /><br /><br /><p>

            <form name="myForm" action="${pageContext.request.contextPath}/StudentRegisterServlet" onsubmit="return validateForm()"method="post" >
              <br /><br /><br /><br /><br>
              <h1>Manage General Notices</h1> 
              
            <textarea class="notice" name="notice" id="notce" rows="10" cols="50" placeholder="Write the notice here..."></textarea>
            <br>
            <p class=textdecors class=removepadding>Add images here:</p>
            <label for="name"></label><input type="file"/><br><br>
            
             <input type="submit" name="submitbutton4" value="Upload and view the notice"><br>
             <input type="reset" name="resetbutton4" value="Reset">

            <script>

            function validateForm() {
            let x = document.forms["myForm"]["notice"].value;
            if (x == "") {
            alert("Notice details must be filled out");
            return false;
            }
            }

           </script>

        </div>
 
      </form>
 
    </body>
</html>