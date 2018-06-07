
<%@page import="java.sql.ResultSet"%>
<%@page import="mini_project.mysql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .intable{width:290px; height: 35px;border: 1px solid black;}
            
        </style>
        
    </head>
    <body style="background-color:#FAEBD7">
    <table  bgcolor="#333300"     style="width:100%"> 
        <tr><td  height=80 > <p align="center" > <font  size="+3" color="white">Indian Institute of Information Technology-Guwahati</font> </p>
        </td>
        </tr>
    </table>
        <div style="margin-left: 86%;width:6%;background-color: #006666;margin-top: 1%;height:1cm;border-radius: 10px;">    
        <a href="log_out.jsp" style="font-size: 20px;height:1cm; padding:5px; color: white; text-decoration: none;"> Log Out</a>
    </div>    
        <div style="margin-left: 10%;margin-top: 2%;background-color: white;width:80%;font-size: 18px;">
            <table border="1"  width="100%">      
                <tr>
                    <th style="width:150px; height: 35px;">Course Id</th>
                    <th style="width:300px; height: 35px;">Course Name</th>
                    <th style="width:290px; height: 35px;">Faculty Name</th>
                    <th style="width:100px; height: 35px;"> L-T-P-C</th>
                    <th style="width:150px; height: 35px;"> Feed Back</th>
                </tr>
                <% String sid= (String)session.getAttribute("student_id"); 
                    String sql= "select * from ( select distinct(ex.course_id),ex.course_name,ex.category,ex.credits,ex.year,ex.semester, ff.faculty_id,ff.name from( select * from ( select * from  ((select t.course_id,t.semester,t.year from takes as t,student as s where t.student_id='"+sid+"' and t.semester=s.semester)) as l natural join course ) as d natural join teaches  ) as ex natural join faculty as ff ) as end where (end.course_id,end.year,end.semester) not in (select course_id,year,semester from submit where student_id='"+sid+"')";
                    ResultSet rs=mysql.Mysql().createStatement().executeQuery(sql);
                    while(rs.next()){
                   //  out.println("1"+rs.getString(1)+"<br>"+"2"+rs.getString(2)+"<br>"+"3"+rs.getString(3)+"<br>"+"4"+rs.getString(4)+"<br>"+
                     //        "5"+rs.getString(5)+"<br>"+"6"+rs.getString(6)+"<br>"+"7"+rs.getString(7)+"<br>"+"8"+rs.getString(8)+ "<br>");   
                     
                %>
            </table>
            
                <form action="" method="post"> 
                    <table  border="1" width="100%"> 
                    <tr>
                    
                    <td style="width:150px; height: 35px; text-align: center;"><%= rs.getString(1) %> </td>
                    <td style="width:300px; height: 35px;text-align: center"><%= rs.getString(2) %></td>
                    <td style="width:290px; height: 35px;text-align: center"><%= rs.getString(8) %> </td>
                    <td style="width:100px; height: 35px;text-align: center"><%= rs.getString(4) %> </td>
                    <td style="width:150px; height: 35px;text-align: center;"> 
                    <input type="hidden" name="ccid" value="<%= rs.getString(1) %>">
                    <input type="hidden" name="co_name" value="<%= rs.getString(2) %>">
                    <input type="hidden" name="ffid" value="<%= rs.getString(7) %>">
                    <input type="hidden" name="year" value="<%= rs.getString(5) %>">
                    <input type="hidden" name="sem" value="<%= rs.getString(6) %>">
                    <input type="hidden" name="category" value="<%= rs.getString(3) %>">
                    <input type="submit"  name="check" value="FeedBack"> 
                    </td>
                  
                </tr>
                    </table>
                </form> 
                <%}%>
        </div>
        <%
        String ver=request.getParameter("check");
        if(ver!=null && !ver.isEmpty())
        {
          String course_id,faculty_id,year,sem,category,c_nname;
          c_nname=request.getParameter("co_name");
          //out.println("bbbbbbbbbb"+c_nname+"aaaaaaaaa");
          session.setAttribute("cc_nname",c_nname);
          course_id=request.getParameter("ccid");faculty_id=request.getParameter("ffid");year=request.getParameter("year");
          sem=request.getParameter("sem");category=request.getParameter("category");
          
          session.setAttribute("course_id",course_id);session.setAttribute("faculty_id",faculty_id);session.setAttribute("year",year);session.setAttribute("sem",sem);
         if(category.equalsIgnoreCase("instructor"))
         {
                    String site = new String("Professor.jsp?"); response.setStatus(response.SC_MOVED_TEMPORARILY);response.setHeader("Location", site);

         }else if(category.equalsIgnoreCase("tutor"))
              {
                String site = new String("Tutorial.jsp"); response.setStatus(response.SC_MOVED_TEMPORARILY);response.setHeader("Location", site);
              } else if(category.equals("lab tutor"))
                     {
                       String site = new String("Lab.jsp"); response.setStatus(response.SC_MOVED_TEMPORARILY);response.setHeader("Location", site);  
                     }
         
          
        
        }   
        %>
        
    </body>
</html>
