
<%@page import="java.sql.ResultSet"%>
<%@page import="mini_project.mysql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <body style="background-color:#FFF0F5 ">
    <table  bgcolor="#333300"     style="width:100%"> 
        <tr><td  height=80 > <p align="center" > <font  size="+3" color="white">Indian Institute of Information Technology-Guwahati</font> </p>
        </td>
        </tr>
    </table>
        
      <div style="margin-left:10px;;margin-top:1cm;width:80%">
          <a href="show_courses_teacher.jsp" style="font-size: 25px;margin-left: 2%">Go Back</a>
            <h1 style="margin-left: 30%;color:blue">STUDENT FEEDBACK FORMS</h1>
        <%
            String faculty_id,course_id,cate,year;
            faculty_id=request.getParameter("fake_id");
            course_id=request.getParameter("course_i");cate=request.getParameter("category");
            int sem_no=Integer.parseInt(request.getParameter("semester"));year=request.getParameter("year");
           String sql="select * from";        
            if(cate.equalsIgnoreCase("instructor"))
            {   
             sql=sql+" instructor where faculty_id='"+faculty_id+"' and course_id='"+course_id+"' and semester="+sem_no+" and year='"+year+"'";               
             ResultSet rs=mysql.Mysql().createStatement().executeQuery(sql);
             int i=0,j=1; 
             String form="Form "+i;
        //creating tabnle
             out.println("<table  style=\"margin-left:20%;background-color:white\">");
             while(rs.next())
                {i++;form="Form "+i;
         
        %>
            <%if(j==1){out.println("<tr><td style=\" width:9cm;\">");}
                if(j==2||j==3){out.println("<td style=\" width:9cm;\">");}%>
         <form action="show_instructor.jsp" method="post">
             <input type="hidden" name="v1" value="<%= rs.getString(5)%>" ><input type="hidden" name="v9" value="<%= rs.getString(13)%>" > 
             <input type="hidden" name="v2" value="<%= rs.getString(6)%>" ><input type="hidden" name="v10" value="<%= rs.getString(14)%>" > 
             <input type="hidden" name="v3" value="<%= rs.getString(7)%>" ><input type="hidden" name="v11" value="<%= rs.getString(15)%>" > 
             <input type="hidden" name="v4" value="<%= rs.getString(8)%>" ><input type="hidden" name="v12" value="<%= rs.getString(16)%>" > 
             <input type="hidden" name="v5" value="<%= rs.getString(9)%>" ><input type="hidden" name="v13" value="<%= rs.getString(17)%>" > 
             <input type="hidden" name="v6" value="<%= rs.getString(10)%>" ><input type="hidden" name="v14" value="<%= rs.getString(18)%>" > 
             <input type="hidden" name="v7" value="<%= rs.getString(11)%>" ><input type="hidden" name="v15" value="<%= rs.getString(19)%>" > 
             <input type="hidden" name="v8" value="<%= rs.getString(12)%>" ><input type="hidden" name="v16" value="<%= rs.getString(20)%>" > 
             <input type="submit" style="width:150px;border-radius: 10px;font-size: 17px;background-color: #006666;padding:10px; color: white; text-decoration: none;" value="<%= form %>" >  
         </form>
        <%if(j==1) {j++; out.println("</td>");}
        else if(j==2) {j++;out.println("</td>");}    
        else if(j==3) {j=1; out.println("</td>"+"</tr>"); j=1; }%>
        
        <% 
                } //while loop  
            out.println("</table>");
            }else if(cate.equalsIgnoreCase("lab tutor"))
                    {
                        sql=sql+" lab_tutors  where faculty_id='"+faculty_id+"' and course_id='"+course_id+"' and semester="+sem_no+" and year='"+year+"'";
                        ResultSet rs=mysql.Mysql().createStatement().executeQuery(sql);
                        int i=0,j=1;
                        out.println("<table  style=\"margin-left:20%;background-color:white\">");
                        String form=" Form ";
                        while(rs.next())
                        {form="Form"+i; i++;
                  %>
                  
                   <%if(j==1){out.println("<tr><td style=\" width:9cm;\">");}
                if(j==2||j==3){out.println("<td style=\" width:9cm;\">");}%>
       
                  <form action="show_lab_tutor.jsp" method="post">
             <input type="hidden" name="v1" value="<%= rs.getString(5)%>" ><input type="hidden" name="v9" value="<%= rs.getString(13)%>" > 
             <input type="hidden" name="v2" value="<%= rs.getString(6)%>" ><input type="hidden" name="v10" value="<%= rs.getString(14)%>" > 
             <input type="hidden" name="v3" value="<%= rs.getString(7)%>" >
             <input type="hidden" name="v4" value="<%= rs.getString(8)%>" >
             <input type="hidden" name="v5" value="<%= rs.getString(9)%>" >
             <input type="hidden" name="v6" value="<%= rs.getString(10)%>" >
             <input type="hidden" name="v7" value="<%= rs.getString(11)%>" >
             <input type="hidden" name="v8" value="<%= rs.getString(12)%>" >
             <input type="submit" style="width:150px;border-radius: 10px;font-size: 17px;background-color: #006666;padding:10px; color: white; text-decoration: none;" value="<%= form %>" >  
                </form>
                <%if(j==1) {j++; out.println("</td>");}
        else if(j==2) {j++;out.println("</td>");}    
        else if(j==3) {j=1; out.println("</td>"+"</tr>"); j=1; }%>
       
                
         <%           }
                    }else if(cate.equalsIgnoreCase("tutor"))
                    {
                         sql=sql+" tutorial_tutors  where faculty_id='"+faculty_id+"' and course_id='"+course_id+"' and semester="+sem_no+" and year='"+year+"'";
                            ResultSet rs=mysql.Mysql().createStatement().executeQuery(sql);
                        int i=0,j=1;
                        String form=" Form ";
                         out.println("<table  style=\"margin-left:20%;background-color:white\">");
                        while(rs.next())
                        {form="Form"+i; i++;
                         
         %>
         <%if(j==1){out.println("<tr><td style=\" width:9cm;\">");}
                if(j==2||j==3){out.println("<td style=\" width:9cm;\">");}%>
       
        <form action="show_tutor.jsp" method="post">
             <input type="hidden" name="v1" value="<%= rs.getString(5)%>" ><input type="hidden" name="v9" value="<%= rs.getString(13)%>" > 
             <input type="hidden" name="v2" value="<%= rs.getString(6)%>" ><input type="hidden" name="v10" value="<%= rs.getString(14)%>" > 
             <input type="hidden" name="v3" value="<%= rs.getString(7)%>" ><input type="hidden" name="v11" value="<%= rs.getString(14)%>" > 
             <input type="hidden" name="v4" value="<%= rs.getString(8)%>" >
             <input type="hidden" name="v5" value="<%= rs.getString(9)%>" >
             <input type="hidden" name="v6" value="<%= rs.getString(10)%>" >
             <input type="hidden" name="v7" value="<%= rs.getString(11)%>" >
             <input type="hidden" name="v8" value="<%= rs.getString(12)%>" >
             <input type="submit" style="width:150px;border-radius: 10px;font-size: 17px;background-color: #006666;padding:10px; color: white; text-decoration: none;" value="<%= form %>" >  
                </form>
        
                <%if(j==1) {j++; out.println("</td>");}
        else if(j==2) {j++;out.println("</td>");}    
        else if(j==3) {j=1; out.println("</td>"+"</tr>"); j=1; }%>
       
        
        <%            
                    
                    
                    
                    }
                
                    }
        %>
        </div>
    </body>
</html>
