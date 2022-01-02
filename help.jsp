<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: 07688
  Date: 21-Oct-21
  Time: 8:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Help</title>
  <link rel="stylesheet" href="./css/aboutcontactus.css">
  <script src="https://kit.fontawesome.com/e1eaef53f0.js" crossorigin="anonymous"></script>
</head>

<body>
<!-----------Main Nav bar---------->
<ul>
  <li style="float:right"><a href="contactus.jsp"><i class="fas fa-address-book"></i> Contact Us</a></li>
  <li style="float:right"><a href="help.jsp" class="active"><i class="fas fa-hands-helping"></i> Help</a></li>
  <li style="float:right"><a href="aboutus.jsp"><i class="fas fa-users"></i> About Us</a></li>
  <li style="float:right"><a href="index.jsp"><i class="fas fa-home"></i> Home</a></li>
</ul>

<!-----------inquiry section---------->
<div class="help_l">
  <h1>Need some help?</h1>
  <p>Tell us what's in your mind and we'll get back to you!</p>

  <form method="post" action="InquiryServlet">
    Enter email address:<br />
    <input type="text" class="email" name="email" required>
    <br /><br />
    Subject:<br />
    <input type="text" class="email" name="subject" required>
    <br /><br />
    Enter your inquiry:<br /><br />
    <textarea id="w3review" name="inquiry" rows="13" cols="68" required></textarea>
    <br /><br />
    <input type="hidden" name="status" value="Pending">
    <input type="hidden" name="date" value="<%= (new Date()).toString()%>">
    <input type="submit" name="submitinquiry" value="Submit">
    <input type="reset" name="cancelinquiry" value="Cancel">
  </form>
</div>




<!-----------image--------------->
<div class="help_r">
  <img src="./img/question.jpg" alt="Help">
</div>



</body>
</html>