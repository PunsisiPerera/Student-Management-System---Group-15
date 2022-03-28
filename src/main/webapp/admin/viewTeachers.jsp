<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/viewteachers.css">
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
        <li style="float:right"><a href="./admindashboard.jsp"><i class="fas fa-columns"></i> Dashboard</a></li>
    </ul>
</div>

<div class="tab">
    <h1>Teachers List</h1>

    <!--report generation-->
    <div class="abc">
        <form action="CSVTeacherReportServlet">
            <input type="submit" value="Generate Report">
        </form>
    </div>

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
        <!--   for (Todo todo: todos) {  -->
        <c:forEach var="teacher" items="${teacherList}">

            <tr>
                <td>
                    <c:out value="${teacher.teacherID}" />
                </td>
                <td>
                    <c:out value="${teacher.f_name}" />
                </td>
                <td>
                    <c:out value="${teacher.l_name}" />
                </td>
                <td>
                    <c:out value="${teacher.address}" />
                </td>
                <td>
                    <c:out value="${teacher.email}" />
                </td>
                <td>
                    <c:out value="${teacher.contact_no}" />
                </td>
                <td align="center"><a href="TeacherSearchServlet?teacherID=<c:out value='${teacher.teacherID}' />"><input type="submit" name="submitbutton4" value="Edit"></a></td>
            </tr>
        </c:forEach>
        <!-- } -->
        </tbody>

    </table>
</div>





</body>
</html>
