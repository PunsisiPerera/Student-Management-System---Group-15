<%--
  Created by IntelliJ IDEA.
  User: 07688
  Date: 20-Oct-21
  Time: 9:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Account Settings</title>
    <link rel="stylesheet" href="../css/accountsettings.css">
    <script src="https://kit.fontawesome.com/e1eaef53f0.js" crossorigin="anonymous"></script>
    <head>
<body>
<!-----------Main Nav bar---------->

<ul>

    <li style="float:right"><a href=""><i class="fas fa-sign-out-alt"></i> Sign Out</a></li>
    <li style="float:right"><a href=""><i class="fas fa-address-book"></i> Contact Us</a></li>
    <li style="float:right"><a href=""><i class="fas fa-hands-helping"></i> Help</a></li>
    <li style="float:right"><a href=""><i class="fas fa-users"></i> About Us</a></li>
    <li style="float:right"><a href=""><i class="fas fa-home"></i> Home</a></li>
</ul>


<!----------left side card------->
<div class="left">
    <div class="container">
        <img src="../img/avatar.png" alt="Avatar" class="avatar">
        <form method="post" action="#">
            <input type="submit" name="submitbutton1" Value="Update"><br /><br />
            <input type="submit" value="Cancel"><br /><br />
            <input type="submit" value="Change Password"><br /><br />
            <div class="delete">
                <input type="submit" value="Delete Account"><br /><br />
            </div>
        </form>
    </div>
</div>


<!-----------form------------->
<div class="right">
    <h1>Accounts Settings</h1><br />
    <form method="post" action="#">
        <table border=0>
            <tr>
                <td>
                    Student ID:</td><td>
                <input type="text" id="Rnic" name="Rnic" size=12 placeholder="test" ><br /></td></tr>
            <tr>
                <td>
                    First Name:</td><td>
                <input type="text" id="Rfname" name="Rfname" size=15 placeholder="test"><br /></td></tr>
            <tr>
                <td>
                    Last Name:</td><td>
                <input type="text" id="Rlname" name="Rlname" size=20 placeholder="test"><br /></td></tr>
            <tr>
                <td>
                    Contact Number:</td><td>
                <input type="text" id="Rtelno" name="Rtelno" size=10 placeholder="test"><br /></td></tr>
            <tr>
                <td>
                    Address:</td><td>
                <input type="text" id="Raddress" name="Raddress" size=50 placeholder="test"><br /></td></tr>
            <tr>
                <td>
                    Email:</td><td>
                <input type="text" id="Remail" name="Remail" size=40 placeholder="test"><br /></td></tr>
            <tr>
                <td>
                    Password:</td><td>
                <input type="password" id="Runame" name="Runame" size=40 placeholder="test"><br /></td></tr>
        </table>

    </form>

</div>





</body>
</html>