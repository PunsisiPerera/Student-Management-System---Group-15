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
    <title>Employee List | Admin </title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/viewteachers.css">
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

<form action="CSVEmpReportServlet">
    <input type="submit" value="Generate CSV report">
</form>

<div class="tab">
    <h1>Employee List</h1>
    <table  border="1">
        <thead>
        <tr>
            <th>Employee ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Address</th>
            <th>Email</th>
            <th>Contact Number</th>
            <th>Position</th>
            <th>Options</th>
        </tr>
        </thead>

        <tbody>
        <!--   for (Todo todo: todos) {  -->
        <c:forEach var="staff" items="${officeAdminList}">

            <tr>
                <td>
                    <c:out value="${staff.staffID}" />
                </td>
                <td>
                    <c:out value="${staff.f_name}" />
                </td>
                <td>
                    <c:out value="${staff.l_name}" />
                </td>
                <td>
                    <c:out value="${staff.address}" />
                </td>
                <td>
                    <c:out value="${staff.email}" />
                </td>
                <td>
                    <c:out value="${staff.contact_no}" />
                </td>
                <td>
                    <c:out value="${staff.position}" />
                </td>

                <td><a href="EmployeeSearchServlet?empId=<c:out value='${staff.staffID}' />">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="DeleteEmployeeServlet?staffID=<c:out value='${staff.staffID}' />">Delete</a></td>
            </tr>
        </c:forEach>
        <!-- } -->
        </tbody>

    </table>
</div>





</body>
</html>
