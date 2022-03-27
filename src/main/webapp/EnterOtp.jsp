<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<html>
<head>
    <title>Reset Password</title>
    <link rel="stylesheet" href="./css/resetpassword.css">
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
    <h1>Enter OTP</h1>
    <%
    if(request.getAttribute("message") != null)
    {
        System.out.print("<p class='text-danger ml-1'>"+request.getAttribute("message")+"</p>");
    }
    %>
    <form method="post" action="ValidateOtpServlet">
        Enter OTP:
        <br />
        <input type="text" id="otp" name="otp" placeholder="Enter OTP" required>
        <br /><br />
        <input type="submit" name="resetpassword" value="Reset Password">
        <input type="reset" name="cancel" value="Cancel">

    </form>
</div>




</body>
</html>