<%-- 
    Document   : insert
    Created on : Jan 21, 2020, 10:26:49 AM
    Author     : User
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
           
            String fname=request.getParameter("fn");
            out.println(fname);
            String lname=request.getParameter("ln");
            out.println(lname);
            String rollno=request.getParameter("rn");
            out.println(rollno);
            String address=request.getParameter("ad");
            out.println(address);
            String adate=request.getParameter("adate");
            out.println(adate);
            String dob=request.getParameter("dob");
            out.println(dob);
            String gender=request.getParameter("r");
            out.println(gender);
            String ph=request.getParameter("ph");
            out.println(ph);
            String email=request.getParameter("em");
            out.println(email);
            String course=request.getParameter("course");
            out.println(course);
            String religion=request.getParameter("re");
            out.println(religion);
            String caste=request.getParameter("cas");
            out.println(caste);
            String city=request.getParameter("city");
            out.println(city);
            String district=request.getParameter("dist");
            out.println(district);
            String un=request.getParameter("un");
            out.println(un);
            String ps=request.getParameter("ps");
            out.println(ps);
            
   Statement st=con.createStatement();
     st.executeUpdate("insert into student(fname,lname,roll_no,address,adm_date,dob,gender,pn,email,course,religion,caste,city,district,username,password)values('"+fname+"','"+lname+"','"+rollno+"','"+address+"','"+adate+"','"+dob+"','"+gender+"','"+ph+"','"+email+"','"+course+"','"+religion+"','"+caste+"','"+city+"','"+district+"','"+un+"','"+ps+"') ");
            %>
            <button> <a href="sview.jsp">VIEW</a></button>
    </body>
</html>