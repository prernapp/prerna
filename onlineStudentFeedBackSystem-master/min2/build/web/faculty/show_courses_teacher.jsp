
<%@page import="java.sql.ResultSet"%>
<%@page import="mini_project.mysql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color:#FAFAD2">
    <table  bgcolor="#333300"     style="width:100%"> 
        <tr><td  height=80 > <p align="center" > <font  size="+3" color="white">Indian Institute of Information Technology-Guwahati</font> </p>
        </td>
        </tr>
    </table>
         <div style="margin-left: 86%;width:6%;background-color: #006666;margin-top: 1%;height:1cm;border-radius: 10px;">    
        <a href="log_out.jsp" style="font-size: 20px;height:1cm; padding:5px; color: white; text-decoration: none;"> Log Out</a>
    </div> 
       <div style="margin-left: 25%;margin-top: 2%;background-color: white;width:50%;font-size: 18px;"> 
        <table border="1" style="border-collapse: collapse;font-size: 16px;color:black;background-color: #E6E6FA;" >
            <tr><th style="width:3cm;text-align: center;height:1cm;">Course_id</th>
                <th style="width:3cm;text-align: center">Semester</th>
                <th style="width:2cm;text-align: center">Year</th>
                <th style="width:5cm;text-align: center">Category</th>
                <th style="width:5cm;text-align: center">Feed Back</th></tr>
            
        <%
            String fid=(String)session.getAttribute("faculty_id");
         
            String se="select * from teaches where faculty_id='"+fid+"' order by year desc";
            ResultSet rs=mysql.Mysql().createStatement().executeQuery(se);
            
        while(rs.next()){
        
        %>
        <form action="semi_show_stu.jsp" method="post">
            <tr><td style="text-align: center"><%=rs.getString(2) %></td><td style="text-align: center"><%=rs.getInt(4) %></td>
                <td style="text-align: center"><%=rs.getString(5) %></td><td style="text-align: center"><%= rs.getString(3)%></td>
            <input type="hidden" name="fake_id" value="<%= rs.getString(1) %>" >  
            <input type="hidden" name="course_i" value="<%= rs.getString(2) %>" >
            <input type="hidden" name="category" value="<%= rs.getString(3) %>" >
            <input type="hidden" name="semester" value="<%= rs.getString(4) %>" >
            <input type="hidden" name="year" value="<%= rs.getString(5) %>" >
                <td style="text-align: center"><input type="submit" name="sfd"  value="Show Feed Back" ></td></tr>
        </form>
        <%}%>
        </table>
         </div>
        
        
        <%--
            String veri=request.getParameter("sfd");
            if(veri!=null && !veri.isEmpty())
            {
                String fake_id,course_id,categ,semester,year;
                fake_id=request.getParameter("fake_id");course_id=request.getParameter("course_i");
                categ=request.getParameter("category");semester=request.getParameter("semester");
                year=request.getParameter("year");
                session.setAttribute("fac_id", fake_id);session.setAttribute("cour_id", course_id);
                session.setAttribute("sem_no", semester);session.setAttribute("year", year);
                
                if(categ.equals("tutor"))
                {
                             String site = new String("Tutoral.jsp");
                            response.setStatus(response.SC_MOVED_TEMPORARILY);
                            response.setHeader("Location", site);   
                    
                }else if(categ.equals("instructor"))
                     {
                            String site = new String("Professor.jsp");
                            response.setStatus(response.SC_MOVED_TEMPORARILY);
                            response.setHeader("Location", site);   
                 
                     }else if(categ.equals("lab tutor"))
                            {
                                    String site = new String("Lab.jsp");
                                    response.setStatus(response.SC_MOVED_TEMPORARILY);
                                    response.setHeader("Location", site);   
                 
                            }   
           
            
            } 
        
        
        
        
        
       --%>
    </body>
</html>
