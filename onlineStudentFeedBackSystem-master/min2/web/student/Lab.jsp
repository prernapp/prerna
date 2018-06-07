<%@page import="mini_project.submit"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="mini_project.mysql"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="index1.html" type="text/css"/>

<title>LAB TUTOR</title>
<style>
    .in{ padding:6px; }
    .take{height:25px;}
</style>
</head>
<body style="background-color: DarkGoldenRod">
        <table  bgcolor="#333300"  style="width:100%" > 
           <tr> <td height="80" > <p align="center" > <font  size="+3" color="white">Indian Institute of Information Technology-Guwahati</font> </p></td>
           </tr>
        </table>
    <% String cc_id=(String)session.getAttribute("course_id");
     String c_nname1=(String)session.getAttribute("cc_nname");
    %>
    <p style="margin-left: 3%;font-size: 25px;color:white"> <span style="border-radius: 10px; width:100px;padding:5px; color: white; text-decoration: none;"><a href="show_course.jsp" >Go Back</a></span>
         <span style="color:white;margin-left: 26%"> <%= cc_id %> </span> - <span><%= c_nname1 %></span></p>
 
 <%-- <div style=" height:700px;width:100%;"> --%>
    <h2 style="margin-left: 5cm;">LAB COMPONENET FEEDBACK</h2>
    <form action="" method="post">
  <table border="1" align="center" style="font-size: 16px;color:black;background-color: LightGray ;">
             <tr>
                <th style="background-color: DarkOliveGreen ;color:white;width:13cm;">ABOUT THE COURSE</th>
                <th style="background-color: DarkOliveGreen "><label>FeedBack</label></th>
            </tr>
            <tr>
            <td class="in">A detailed write-up on the lab component was provided.</td>
                <td>
                <select name="v1" class="take" required>
                    <option value=""> </option>
                    <option value="Strongly Agree">Strongly Agree </option>
                    <option value="Agree"> Agree</option>
                    <option value="Netural"> netural</option>
                    <option value="Disagree"> disagree</option>
                    <option value="Strongly Disagree"> Strongly Disagree</option>
                </select>
                </td>
            </tr>
            <tr>
            <td class="in">The lab assignments were useful and followed the lectures.</td>
                <td>
                <select name="v2" class="take" required>
                    <option value=""> </option>
                    <option value="Strongly Agree">Strongly Agree </option>
                    <option value="Agree"> Agree</option>
                    <option value="Netural"> netural</option>
                    <option value="Disagree"> disagree</option>
                    <option value="Strongly Disagree"> Strongly Disagree</option>
                 </select>
                </td>
            </tr>
            <tr>
            <td class="in">The equipments were user friendly.</td>
                <td>
                <select name="v3" class="take" required>
                    <option value=""> </option>
                    <option value="Strongly Agree">Strongly Agree </option>
                    <option value="Agree"> Agree</option>
                    <option value="Netural"> netural</option>
                    <option value="Disagree"> disagree</option>
                    <option value="Strongly Disagree"> Strongly Disagree</option>
                </select>
                </td>
            </tr>
            <tr>
            <td class="in">The equipments were functioning properly.</td>
                <td>
                <select name="v4" class="take" required>
                    <option value=""> </option>
                    <option value="Strongly Agree">Strongly Agree </option>
                    <option value="Agree"> Agree</option>
                    <option value="Netural"> netural</option>
                    <option value="Disagree"> disagree</option>
                    <option value="Strongly Disagree"> Strongly Disagree</option>
                </select>
                </td>
            </tr>
            <tr>
            <td class="in">The lab session helped in clarified basic concepts taught in the lectures.</td>
                <td>
                <select name="v5" class="take" required>
                    <option value=""> </option>
                    <option value="Strongly Agree">Strongly Agree </option>
                    <option value="Agree"> Agree</option>
                    <option value="Netural"> netural</option>
                    <option value="Disagree"> disagree</option>
                    <option value="Strongly Disagree"> Strongly Disagree</option>
                </select>
                </td>
            </tr>
</table>
<h2 style="margin-left: 5cm;">LAB TUTORS FEEDBACK</h2>
<table border="1" align="center" style="font-size: 16px;color:black;background-color: LightGray ;">
             <tr>
                <th style="background-color: DarkOliveGreen ;color:white;width:13cm;">ABOUT THE COURSE</th>
                <th style="background-color: DarkOliveGreen "><label>FeedBack</label></th>
            </tr>
            <tr>
            <td class="in">Overall, the Lab Tutor was excellent.</td>
                <td>
                <select name="v6" class="take" required>
                    <option value=""> </option>
                    <option value="Strongly Agree">Strongly Agree </option>
                    <option value="Agree"> Agree</option>
                    <option value="Netural"> netural</option>
                    <option value="Disagree"> disagree</option>
                    <option value="Strongly Disagree"> Strongly Disagree</option>
                 </select>
                </td>
            </tr>
            <tr>
            <td class="in">The Lab Tutor was well prepared for the class.</td>
                <td>
                <select name="v7" class="take" required>
                    <option value=""> </option>
                    <option value="Strongly Agree">Strongly Agree </option>
                    <option value="Agree"> Agree</option>
                    <option value="Netural"> netural</option>
                    <option value="Disagree"> disagree</option>
                    <option value="Strongly Disagree"> Strongly Disagree</option>
                </select>
                </td>
            </tr>
            <tr>
            <td class="in">The Lab Tutor?s instructions were clear and understandable.</td>
                <td>
                <select name="v8" class="take" required>
                    <option value=""> </option>
                    <option value="Strongly Agree">Strongly Agree </option>
                    <option value="Agree"> Agree</option>
                    <option value="Netural"> netural</option>
                    <option value="Disagree"> disagree</option>
                    <option value="Strongly Disagree"> Strongly Disagree</option>
                 </select>
                </td>
            </tr>
            <tr>
            <td class="in">Evaluation of lab sessions were done regularly & academic advices were given.</td>
                <td>
                <select name="v9" class="take" required>
                    <option value=""> </option>
                    <option value="Strongly Agree">Strongly Agree </option>
                    <option value="Agree"> Agree</option>
                    <option value="Netural"> netural</option>
                    <option value="Disagree"> disagree</option>
                    <option value="Strongly Disagree"> Strongly Disagree</option>
                </select>
                </td>
            </tr>
</table>
<h2 style="margin-left: 5cm;">QUERIES </h2>
<textarea STYLE="margin-left: 9cm;" rows="7" cols="80" name="description" placeholder="Enter Here ....." required>
</textarea>
<br>
<input style="width:150px;background-color: maroon;padding:10px; color:white;margin-left: 14cm;margin-top: 1cm;border-radius: 20px;" type="submit" name="Lab" value="Submit" />
 </form>
  </div>
   
</div>
 
<%
    String Lab=request.getParameter("Lab");
    if(Lab!=null && !Lab.isEmpty())
    {
       String v1,v2,v3,v4,v5,v6,v7,v8,v9,description,ff_i,Course_id,Ye,sql,student_id ;
       v1=request.getParameter("v1");v2=request.getParameter("v2");v3=request.getParameter("v3");v4=request.getParameter("v4");v5=request.getParameter("v5");
       v6=request.getParameter("v6");v7=request.getParameter("v7");v8=request.getParameter("v8");v9=request.getParameter("v9");description=request.getParameter("description");
       ff_i=(String)session.getAttribute("faculty_id");Course_id=(String)session.getAttribute("course_id");Ye= (String)session.getAttribute("year");
       int sem= Integer.parseInt((String)session.getAttribute("sem")) ;student_id=(String)session.getAttribute("student_id");
       sql="insert into lab_tutors values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)"; 
       PreparedStatement psmt=mysql.Mysql().prepareStatement(sql);
      psmt.setString(1, ff_i);psmt.setString(2, Course_id );psmt.setInt(3, sem);psmt.setString(4,Ye );psmt.setString(5,v1 );psmt.setString(6,v2);psmt.setString(7,v3 );psmt.setString(8, v4);
      psmt.setString(9,v5 );psmt.setString(10,v6 );psmt.setString(11,v7 );psmt.setString(12, v8);psmt.setString(13, v9);psmt.setString(14,description);
            int row=psmt.executeUpdate();
         if(row>0)
         {
              submit sb=new submit();
                       if(sb.put(student_id,Course_id,sem, Ye)==1)   //
                       { out.println("<script>alert('successfully submitted your form')</script>");
                       }
         }
      
      
    }    
    


%>

</body>
</html>