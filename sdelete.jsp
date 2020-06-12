<%-- 
    Document   : sdelete
    Created on : Jan 28, 2020, 8:38:07 AM
    Author     : User
--%>

<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connection.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <% 
            String id=request.getParameter("i");
            Statement st=con.createStatement();
            st.executeUpdate("Delete from student where sid='"+id+"'");
               %>
    </body>
</html>
