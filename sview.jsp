<%-- 
    Document   : view
    Created on : Jan 21, 2020, 12:03:21 PM
    Author     : User
--%>

<%@page import="java.sql.ResultSet"%>
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
        <table  border="l"><tr><th>sid</th><th>first name</th><th>last name</th><th>roll_no</th><th>address</th><th>admission date</th><th>DOB</th><th>Gender</th><th>Phone number</th><th>Email</th><th>Course</th><th>Religion</th><th>Caste</th><th>City</th><th>District</th><th>username</th><th>password</th></tr>
            <%
                Statement st=con.createStatement();
               
                ResultSet rs=st.executeQuery("select * from student");
                while(rs.next()){%>
            
            <tr>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>
                <td><%=rs.getString(6)%></td>
                <td><%=rs.getString(7)%></td>
                <td><%=rs.getString(8)%></td>
                <td><%=rs.getString(9)%></td>
                <td><%=rs.getString(10)%></td>
                <td><%=rs.getString(11)%></td>
                <td><%=rs.getString(12)%></td>
                <td><%=rs.getString(13)%></td>
                <td><%=rs.getString(14)%></td>
                <td><%=rs.getString(15)%></td>
                <td><%=rs.getString(16)%></td>
                <td><%=rs.getString(17)%></td>
               
                
                
                <td><a href="sdelete.jsp?i=<%=rs.getString(1)%>">DELETE</a></td>
                <td><a href="sedit.jsp?i=<%=rs.getString(1)%>">EDIT</a></td>                        
                        
            </tr>
            <%
             }
            %>
        </table>
    </body>
</html>
