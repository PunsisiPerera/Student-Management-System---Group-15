<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%--
  Created by IntelliJ IDEA.
  User: punsisi_p
  Date: 10/22/2021
  Time: 1:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manage Inquiries | Admin </title>
    <link rel="stylesheet" href="../css/viewteachers.css">
    <script src="https://kit.fontawesome.com/e1eaef53f0.js" crossorigin="anonymous"></script>
</head>
<body>
<!-----------Nav bar---------->
<div>
    <ul>

        <li style="float:right"><a href="../index.jsp"><i class="fas fa-sign-out-alt"></i> Sign Out</a></li>
        <li style="float:right"><a href="../contactus.jsp"><i class="fas fa-address-book"></i> Contact Us</a></li>
        <li style="float:right"><a href="../help.jsp"><i class="fas fa-hands-helping"></i> Help</a></li>
        <li style="float:right"><a href="../aboutus.jsp"><i class="fas fa-users"></i> About Us</a></li>
        <li style="float:right"><a href="../home.jsp"><i class="fas fa-columns"></i> Dashboard</a></li>
    </ul>
</div>

<div class="tab">
    <h1>Inquiries</h1>
    <table  border="1">
        <thead>
        <tr>
            <th>Inquiry ID</th>
            <th>Inquiry Status</th>
            <th>Email</th>
            <th>Subject</th>
            <th>Inquiry</th>
            <th>Date</th>
            <th>Options</th>
        </tr>
        </thead>

        <tbody>
        <!--   for (Todo todo: todos) {  -->
        <c:forEach var="inquiry" items="${inquiryList}">

            <tr>
                <td>
                    <c:out value="${inquiry.inquiryID}" />
                </td>
                <td>
                    <c:out value="${inquiry.email}" />
                </td>
                <td>
                    <c:out value="${inquiry.subject}" />
                </td>
                <td>
                    <c:out value="${inquiry.inquiry}" />
                </td>
                <td>
                    <c:out value="${inquiry.date}" />
                </td>
                <td>
                    <c:out value="${inquiry.status}" />
                </td>
                <td><a href="edit?id=<c:out value='${inquiry.inquiryID}' />">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="delete?id=<c:out value='${inquiry.inquiryID}' />">Delete</a></td>
            </tr>
        </c:forEach>
        <!-- } -->
        </tbody>
    </table>
</div>





</body>
</html>
