
<%@page import="java.sql.ResultSet"%>
<%@page import="mini_project.mysql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
  <body style="background-color:#483D8B">
  <table  bgcolor="#333300"     style="width:100%"> 
        <tr><td  height=80 > <p align="center" > <font  size="+3" color="white">Indian Institute of Information Technology-Guwahati</font> </p>
        </td>
        </tr>
    </table>
       <!------as  -->
         <table>
            <tr>
                <td>Course_id </td><td>Semester</td><td>Year</td>
            </tr>
        
        <%
            String sq="select course_id,semester,year from lab_tutors group by course_id,semester,year";
            ResultSet rs=mysql.Mysql().createStatement().executeQuery(sq);
            while(rs.next()){
        %>
        <%}%>
        <tr><td><%= rs.getString("course_id")%> </td>
            <td><%= rs.getInt("semester")%></td>
            <td><%= rs.getString("year")%></td></tr>
        
         </table>
        

    </body>
</html>
