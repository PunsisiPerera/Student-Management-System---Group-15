<%--
  Created by IntelliJ IDEA.
  User: 07688
  Date: 21-Oct-21
  Time: 9:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Reset Password</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/resetpassword.css">
  <script src="https://kit.fontawesome.com/e1eaef53f0.js" crossorigin="anonymous"></script>
</head>

<body>
<!-----------Main Nav bar---------->

<ul>
  <li style="float:right"><a href="contactus.jsp"><i class="fas fa-address-book"></i> Contact Us</a></li>
  <li style="float:right"><a href="help.jsp"><i class="fas fa-hands-helping"></i> Help</a></li>
  <li style="float:right"><a href="aboutus.jsp"><i class="fas fa-users"></i> About Us</a></li>
  <li style="float:right"><a href="index.jsp"><i class="fas fa-home"></i> Home</a></li>
</ul>


<!-----padlock image------->
<div class="left">
  <img src="./img/padlock.png" alt="Password Reset">
</div>

<!--------form---------->

<div class="right">
  <h1>Reset Password</h1>
  <form method="post" action="ForgotPasswordServlet">
    <p>Change your password in three easy steps. This will help you
      to secure your password!</p>
    <ol class="">
      <li><span class="text-primary text-medium"></span>Enter
        your email address below.</li>
      <li><span class="text-primary text-medium"></span>Our
        system will send you an OTP to your email</li>
      <li><span class="text-primary text-medium"></span>Enter the OTP on the
        next page</li>
    </ol>
    Enter email address:
    <br /><br />
    <input type="email" id="email" name="email" required>
    <br /><br />
    <input type="submit" name="resetpassword" value="Submit">
    <input type="reset" name="cancel" value="Cancel">

  </form>
</div>




</body>
</html>