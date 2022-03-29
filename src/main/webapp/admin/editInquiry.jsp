<%--
  Created by IntelliJ IDEA.
  User: 07688
  Date: 27-Mar-22
  Time: 3:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Inquiry | Admin</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/editinquiry.css">
    <script src="https://kit.fontawesome.com/e1eaef53f0.js" crossorigin="anonymous"></script>
</head>
<body>

<!-- nav bar-->
<div>
    <ul>

        <li style="float:right"><a href="../index.jsp"><i class="fas fa-sign-out-alt"></i> Sign Out</a></li>
        <li style="float:right"><a href="../contactus.jsp"><i class="fas fa-address-book"></i> Contact Us</a></li>
        <li style="float:right"><a href="../help.jsp"><i class="fas fa-hands-helping"></i> Help</a></li>
        <li style="float:right"><a href="../aboutus.jsp"><i class="fas fa-users"></i> About Us</a></li>
        <li style="float:right"><a href="./admindashboard.jsp"><i class="fas fa-columns"></i> Dashboard</a></li>
    </ul>
</div>

<div class="hdiv" style="margin-top:-300px;">
    <form method="post" action="EditInquiryServlet" name="form3" onsubmit="mySubmit()">

        <h1>Update Inquiry</h1><br><br>

        <p class=textdecors class=removepadding>Inquiry ID:</p>
        <input type="text" class="name" name="inquiryID" value="${selectedInquiry.inquiryID}" readonly>
        <br />
        <p class=textdecors class=removepadding>Email:</p>
        <input type="text" class="name" name="email" value="${selectedInquiry.email}" readonly>
        <br />
        <p class=textdecors class=removepadding>Subject:</p>
        <input type="text" class="name" name="subject" value="${selectedInquiry.subject}" readonly>
        <br />
        <p class=textdecors class=removepadding>Inquiry:</p>
        <input type="text" class="fullname" name="inquiry" value="${selectedInquiry.inquiry}" readonly>
        <br />
        <p class=textdecors class=removepadding>Status:</p>
        <select name="status" id="status">
            <option value="${selectedInquiry.inquiry}">${selectedInquiry.status}</option>
            <option value="Pending">Pending</option>
            <option value="Completed">Completed</option>
        </select>
        <br /><br />
        <input type="submit" name="submitbutton4" value="Update">
        <br><br><br><br><br><br>
    </form>

</div>

    <script>
        function mySubmit(){
            confirm("Edit Successful!");
        }
    </script>


</body>
</html>
