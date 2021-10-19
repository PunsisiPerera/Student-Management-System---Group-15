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
          <li style="float:right"><a href="./contactus.html"><i class="fas fa-address-book"></i> Contact Us</a></li>
          <li style="float:right"><a href="./help.html"><i class="fas fa-hands-helping"></i> Help</a></li>
          <li style="float:right"><a href="./aboutus.html"><i class="fas fa-users"></i> About Us</a></li>
          <li style="float:right"><a href=""><i class="fas fa-edit"></i> Sign Up</a></li>
          <li style="float:right"><a href="./index.html"><i class="fas fa-home"></i> Home</a></li>
      </ul>
  </div>

  <!---------card---------->
  <div class="hdiv">
      <h1 align="center" id=removepadding>Sign In</h1>
      <p id=removepadding1>Welcome Back!<br /><br /><br /><p>
      <form action="LoginServlet" method="post">
          <p id=textdecors1 id=removepadding2>Email:</p>
          <input type="text" id="email" name="email" placeholder="Enter your email address">
          <br />
          <p id=textdecors2 id=removepadding3>Password:</p>
          <input type="password" id="pass" name="pass" placeholder="Enter the password">
      <select name="type" id="cars">
          <option > admin </option>
          <option  >staff</option>
          <option >teacher</option>
          <option >student</option>
      </select>

      <input type="submit" name="submitbutton4" value="Sign In">
      </form>
      <center>
          <a href="./resetpassword.html">Forgot Password?</a> <br /><br />
      </center>
      </p>
  </div>
  </body>
</html>
