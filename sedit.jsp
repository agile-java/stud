<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@include file="connection.jsp" %>
<html>
    <head>
        <title>Registration Form</title>
        <link rel="stylesheet" href="../bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="bootstrap/boot/css/bootstrap.css" type="text/css">
        <style>
            th{
                text-align: left;
                padding: 10px;
            }
            body{
                color:white;
                background-repeat: no-repeat;
                background-size: cover;
                background-image: url("../images/b2.jpg");
            }
            input[type=text],input[type=textarea],input[type=date],input[type=password]{
                width:100%;
                padding: 10px 10px;
                border:1px solid#ccc;
                margin:2px 1px;
                box-sizing:content-box;
                display:inline-block;
                color:black;
            }
            input[type=submit]:hover{
                background-color: blue;
                color:red;
            }
            
            </style>
            
        
    </head>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
    <body>
         <%
               String id=request.getParameter("i");  
               Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select *from student where sid='"+id+"'");
                while(rs.next())
       {%>
        
        <div><center><h1>Student Registration</h1> <br><br></center></div>
   <div class="container">
       <div class="row">
        <form name="Contact Form" method="post" action="supdate.jsp?i=<%=rs.getString(1)%>">
            <div class="col-lg-6">
            <table>
                <div class="col-lg-6">
                    <tr><th>First Name: </th>
                    
            <td><input type="text" id="fn" placeholder="type ur fname"  name="fn"></td></tr>
                <tr><th>Last Name: </th>
            <td><input type="text" id="ln" placeholder="type ur lname"  name="ln"></td></tr>
                <tr><th>Roll no: </th>
            <td><input type="text" id="rn" placeholder="type ur rollno" name="rn"></td></tr>
                <tr><th>Address:</th>
            <td><input type="textarea" placeholder="type ur address" rows="10" cols="50" name="ad"> </td></tr>
                <tr><th>Admission  Date:</th>
            <td><input type="date" name="adate"  required></td></tr>
                <tr><th>DOB:</th>
            <td><input type="date" name="dob" required></td></tr>
                <tr><th>Gender:</th>
            <td><input type="radio" name="r" value="male">Male
            <input type="radio" name="r" value="female">Female</td></tr>
                <tr><th>Phone Number:</th>
            <td><input type="text" id="pn" maxlength="10" placeholder="type ur phonenumber" name="ph"></td></tr>
            </table>
                </div>
           
           <div class="col-lg-6">
               <table>
           
                
                <tr><th>Email ID:</th>
            <td><input type="text" id="pn"  placeholder="type ur email" name="em"></td></tr>
                
                <tr><th>Course:</th>
            <td><input type="text" id="pn"   name="course"></td></tr>
         
            
                <tr><th>Religion:</th>
            <td><input type="text" id="pn"   name="re"></td></tr>
                <tr><th>Caste:</th>
            <td><input type="text" id="pn"  name="cas"></td></tr>
                <tr><th>City:</th>
            <td><input type="text" id="pn"   name="city"></td></tr>
                <tr><th>District:</th>
            <td><input type="text" id="pn"   name="dist"></td></tr>
                <tr><th>Username:</th>
            <td><input type="text" id="pn"  placeholder="type ur username" name="un"></td></tr>
                <tr><th>Password:</th>
                    <td><input type="password" id="pn"  placeholder="type ur password" name="ps"></td></tr>
            
                <tr><th><center><br><br><input type="submit" style="color:black" value="Submit" class="button"></center></th></tr>
                
             </table>
           </div>     
        </form>
   </div>
   </div>
        <%}

%>
    </body>
</html>
