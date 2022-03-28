<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%--
  Created by IntelliJ IDEA.
  User: 07688
  Date: 22-Oct-21
  Time: 2:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student List | Admin </title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/viewstudents.css">
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
    <h1>Student List</h1>

    <!--report generation-->
    <div class="abc">
        <form action="#">
            <input type="submit" value="Generate Report">
        </form>
    </div>

    <table  border="1">
        <thead>
        <tr>
            <th>Student ID</th>
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
        <c:forEach var="student" items="${studentList}">

            <tr>
                <td>
                    <c:out value="${student.studentID}" />
                </td>
                <td>
                    <c:out value="${student.f_name}" />
                </td>
                <td>
                    <c:out value="${student.l_name}" />
                </td>
                <td>
                    <c:out value="${student.address}" />
                </td>
                <td>
                    <c:out value="${student.email}" />
                </td>
                <td>
                    <c:out value="${student.contact_no}" />
                </td>

                <td>
                   <a href="StudentSearchServlet?stdId=<c:out value='${student.studentID}' />">
                       <input type="submit" name="submitbutton4" value="Edit" style="margin-left: -10px;"></a>
                   <br /><br />
                   <a href="DeleteStudentServlet?studentID=<c:out value='${student.studentID}' />"><input type="submit" name="submitbutton4" value="Delete" style="margin-left: -5px;"></a>
                </td>
            </tr>
        </c:forEach>
        <!-- } -->
        </tbody>
    </table>
</div>
</body>
</html>