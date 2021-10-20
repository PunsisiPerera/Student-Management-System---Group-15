<%--
  Created by IntelliJ IDEA.
  User: 07688
  Date: 20-Oct-21
  Time: 9:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Fee Payment | Student</title>
    <link rel="stylesheet" href="../css/studentpayfees.css">
    <script src="https://kit.fontawesome.com/e1eaef53f0.js" crossorigin="anonymous"></script>
</head>
<body>

<!-----------Main Nav bar---------->

<ul>

    <li style="float:right"><a href=""><i class="fas fa-sign-out-alt"></i> Sign Out</a></li>
    <li style="float:right"><a href=""><i class="fas fa-address-book"></i> Contact Us</a></li>
    <li style="float:right"><a href=""><i class="fas fa-hands-helping"></i> Help</a></li>
    <li style="float:right"><a href=""><i class="fas fa-users"></i> About Us</a></li>
    <li style="float:right"><a href=""><i class="fas fa-home"></i> Home</a></li>
</ul>

<!---------profile picture--------->
<img src="../img/avatar.png" alt="Avatar" class="avatar">

<div class="main">
    <h2>Upload Fee Payment Slip</h2>
    <h3>Select class details</h3>

    <form action="/action_page.php">

        <select name="cars" id="cars" class="s1">
            <option value="year">Class</option>
            <option value="saab">test1</option>
            <option value="opel">test1</option>
            <option value="audi">test1</option>
        </select>

        <select name="cars" id="cars" class="s2">
            <option value="subject">Month</option>
            <option value="saab">test1</option>
            <option value="opel">test1</option>
            <option value="audi">test1</option>
        </select>
    </form>
    <p>Upload your monthly fee payment slip here <i class="fas fa-hand-point-down"></i></p>

    <div class="drag-area">
        <div class="icon"><i class="fas fa-cloud-upload-alt"></i></div>
        <header>Drag & Drop to Upload File</header>
        <span>OR</span>
        <form action="#">
            <input type="file" id="paymentslip" name="filename">
        </form>
    </div>

    <div class="sub">
        <form action="#">
            <input type="submit" id="Upload" value="Upload">
        </form>
    </div>

</div>
</body>
</html>