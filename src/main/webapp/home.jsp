<%--
  Created by IntelliJ IDEA.
  User: punsisi_p
  Date: 10/18/2021
  Time: 2:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    if (session.getAttribute("email")==null)
    {
        response.sendRedirect("login.jsp");
    }
%>
welcome
</body>
</html>
