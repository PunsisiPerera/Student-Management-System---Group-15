<%--
  Created by IntelliJ IDEA.
  User: punsisi_p
  Date: 10/21/2021
  Time: 11:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Teachers List | Admin </title>
    <link rel="stylesheet" href="../css/viewteachers.css">
    <script src="https://kit.fontawesome.com/e1eaef53f0.js" crossorigin="anonymous"></script>
</head>
<body>
<!-----------Nav bar---------->
<div>
    <ul>

        <li style="float:right"><a href="../index.html"><i class="fas fa-sign-out-alt"></i> Sign Out</a></li>
        <li style="float:right"><a href="./contactus.html"><i class="fas fa-address-book"></i> Contact Us</a></li>
        <li style="float:right"><a href="./help.html"><i class="fas fa-hands-helping"></i> Help</a></li>
        <li style="float:right"><a href="./aboutus.html"><i class="fas fa-users"></i> About Us</a></li>
        <li style="float:right"><a href="../home.html"><i class="fas fa-columns"></i> Dashboard</a></li>
    </ul>
</div>

<div class="tab">
    <h1>Teachers List</h1>
    <table  border="1">
        <thead>
        <tr>
            <th>Teacher ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Address</th>
            <th>Email</th>
            <th>Contact Number</th>
            <th>Options</th>
        </tr>
        </thead>

        <tbody>
        <tr>
            <td align="center">test1</td>
            <td align="center">test1</td>
            <td align="center">test1</td>
            <td align="center">test1</td>
            <td align="center">test1</td>
            <td align="center">test1</td>
            <td>
                <button>Update</button>
                <section class="delete">
                    <button>Delete</button>
                    <section>
            </td>
        </tr>
        </tbody>
    </table>
</div>





</body>
</html>
