<%@page import="project.Connectionprovider%">
<%@page import="java.sql%. *">
<%
    String email=request.getParameter("email")
    String security=request.getParameter("security")
    String password1=request.getParameter("password1")

    int check=0;
    try
    {
        Connection con=ConnectionProvider.getCon();
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select *from users where email='"+email+"' and security='"+security+"' and password1='"+password1+"');
        while(rs.next())
        {
            check=1;
            st.executeUpdate("update user set password='" +password1+ where email='"+email+"');
            response.sendRedirect("resetpassword.jsp?msg=done");
        }
        if (check==0)
        {
            response.sendRedirect("resetpassword.jsp?msg=invalid");
        }
    }

    catch(Exception e)
    {
        System.out.println(e);
    }
%>
