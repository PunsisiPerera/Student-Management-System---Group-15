<%--
  Created by IntelliJ IDEA.
  User: punsisi_p
  Date: 10/18/2021
  Time: 2:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign In</title>
    <link rel="stylesheet" href="./css/signin.css">
    <script src="https://kit.fontawesome.com/e1eaef53f0.js" crossorigin="anonymous"></script>
</head>
  <body>
  <!-----------Nav bar---------->
  <div>
      <ul>
          <li style="float:right"><a href="contactus.jsp"><i class="fas fa-address-book"></i> Contact Us</a></li>
          <li style="float:right"><a href="help.jsp"><i class="fas fa-hands-helping"></i> Help</a></li>
          <li style="float:right"><a href="aboutus.jsp"><i class="fas fa-users"></i> About Us</a></li>
          <li style="float:right"><a href="index.jsp"><i class="fas fa-home"></i> Home</a></li>
      </ul>
  </div>

  <!---------card---------->
  <div class="hdiv">
      <h1>Sign In</h1>
      <p>Welcome Back!<br /><br /><br /><p>
      <form name="Login" action="LoginServlet" onsubmit="return validateForm()" method="post">
      <section class="rtop">Signing in as:</section> <br /><br />
      <select name="type" id="userrole">
          <option value="admin">Admin</option>
          <option value="staff">Staff</option>
          <option value="teacher">Teacher</option>
          <option value="student">Student</option>
      </select>
          <section class="additional"><p class=textdecors class=removepadding>Email:</p></section>
          <input type="text" id="email" name="email" placeholder="Enter your email address">
          <br />
          <section class="additional"><p class=textdecors class=removepadding>Password:</p></section>
          <input type="password" id="pass" name="pass" placeholder="Enter the password">

      <input type="submit" name="submitbutton4" value="Sign In">
      </form>
      <center>
          <a href="resetpassword.jsp">Forgot Password?</a> <br /><br />
      </center>
      </p>
      <script>
          function validateForm() {
              let x = document.forms["Login"]["email"].value;
              if (x == "") {
                  alert("Enter email address");
                  return false;
              }
              let y = document.forms["Login"]["pass"].value;
              if (x == "") {
                  alert("Enter password");
                  return false;
              }
          }
      </script>

  </div>
  </body>
</html>
