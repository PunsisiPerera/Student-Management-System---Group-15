<%--
  Created by IntelliJ IDEA.
  User: 07688
  Date: 20-Oct-21
  Time: 9:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> Enroll in Class | Student </title>
    <link rel="stylesheet" href="../css/studenthome.css">
    <script src="https://kit.fontawesome.com/e1eaef53f0.js" crossorigin="anonymous"></script>
</head>
<body>

<!-----------Nav bar---------->
<div>
    <ul>
        <li style="float:right"><a href=""><i class="fas fa-sign-out-alt"></i> Sign Out</a></li>
        <li style="float:right"><a href=""><i class="fas fa-address-book"></i> Contact Us</a></li>
        <li style="float:right"><a href=""><i class="fas fa-hands-helping"></i> Help</a></li>
        <li style="float:right"><a href=""><i class="fas fa-users"></i> About Us</a></li>
        <li style="float:right"><a href="studenthome.jsp"><i class="fas fa-home"></i> Home</a></li>
    </ul>
</div>
<img src="../img/avatar.png" alt="Avatar" class="avatar">

<h1 align="Center" style="padding:25px; font-family: Trebuchet MS;">Enroll in New Class</h1>


<!----------4 Dropdowns------------>
<br />
<center>
    <form action="#">

        <select name="cars" id="cars">
            <option value="year">Year</option>
            <option value="saab">2022</option>
            <option value="opel">2023</option>
            <option value="audi">2024</option>
        </select>

        <select name="cars" id="cars">
            <option value="subject">Subject</option>
            <option value="saab">Combined Maths</option>
            <option value="opel">Physics</option>
            <option value="audi">Chemistry</option>
        </select>
        <br /><br />
        <select name="cars" id="cars">
            <option value="stream">Stream</option>
            <option value="saab">Physical Science</option>
            <option value="opel">Commerce</option>
            <option value="audi">Other</option>
        </select>

        <select name="cars" id="cars">
            <option value="medium">Medium</option>
            <option value="saab">Sinhala</option>
            <option value="opel">English</option>
        </select>

        <br /><br /><br />

        </div>

        <div class="f4">
            <input type="submit" value="Submit" >
    </form>

    </div>
    <br /><br /><br /><br /><br /><br />


    <!------------teachers' list------------->

    <table border=1 width="80%" cellpadding="10px" border="1" style="border-collapse: collapse; ">
        <thead>
        <tr>
            <th>Select</th>
            <th>Class</th>
            <th>Teacher</th>
            <th>Day</th>
            <th>Time</th>
            <th>Class Fees(monthly)</th>
        </tr>
        </thead>

        <tbody>
        <tr>
            <td align="center"><input type="checkbox" style="background-color:#001D3D;"></td>
            <td align="center">test1</td>
            <td align="center">test1</td>
            <td align="center">test1</td>
            <td align="center">test1</td>
            <td align="center">test1</td>
        </tr>
        </tbody>
    </table>

    <p><i>Note: An admission fee of 1000 LKR has to be paid along with the relevant class fee</I></p>
</center>

<!----------upload deposit slip------------>
<div style="padding-left:5%; font-family:Trebuchet MS;">
    <form action="x" method="post" enctype="multipart/form-data">
        <p>Please upload the payment slip for the selected classes </p>
        <input type="file" name="uploadslip" id="uploadslip">
        <br /><br />
        <input type="submit" value="Enroll now" name="submit" style= "width: 15%;">
    </form>
</div>

</body>
</html>
