<%@page import="mini_project.submit"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="mini_project.mysql"%>
<!DOCTYPE html>
<html>
<head>
<title>TUTORIAL TUTOR</title>
<style>
    .in{ padding:6px; }
    .take{height:25px;}
</style>
</head>
<body style="background-color:#228B22">
    <table  bgcolor="#333300"     style="width:100%"> 
        <tr><td  height=80 > <p align="center" > <font  size="+3" color="white">Indian Institute of Information Technology-Guwahati</font> </p>
        </td>
        </tr>
    </table>
  <% String cc_id=(String)session.getAttribute("course_id");
     String c_nname1=(String)session.getAttribute("cc_nname");
    %>
    <p style="margin-left: 3%;font-size: 25px;color:white"> <span style="border-radius: 10px; width:100px;padding:5px; color: white; text-decoration: none;"><a href="show_course.jsp" >Go Back</a></span>
         <span style="color:white;margin-left: 26%"> <%= cc_id %> </span> - <span><%= c_nname1 %></span></p>
   <h1 STYLE="margin-left: 5cm;">TUTORIAL FEEDBACK</h1>
    <form action="" method="post" >
    <table border="1" align="center" style="font-size: 16px;color:black;background-color: LightGray ;">
            <tr>
                <th style="background-color: DarkOliveGreen;color:white">ABOUT THE TUTORIALS</th>
                <th style="background-color: DarkOliveGreen"><label>FeedBack</label></th>
            </tr>
            
            <tr>
            <td class="in">Tutorials were held regularly and followed the lectures.</td>
                <td>
                <select name="v1" class="take" required>
                    <option value=""> </option>
                    <option value="Strongly Agree">Strongly Agree </option>
                    <option value="Agree"> Agree</option>
                    <option value="Netural"> netural</option>
                    <option value="Disagree"> disagree</option>
                    <option value="Strongly Disagree "> Strongly Disagree</option>
                </select>
                </td>
            </tr>
            <tr>
            <td class="in">Tutorials clarified basic concepts taught in the lectures.</td>
                <td>
                <select name="v2" required class="take" >
                    <option value=""> </option>
                    <option value="Strongly Agree">Strongly Agree </option>
                    <option value="Agree"> Agree</option>
                    <option value="Netural"> netural</option>
                    <option value="Disagree"> disagree</option>
                    <option value="Strongly Disagree "> Strongly Disagree</option>
                </select>
                </td>
            </tr>
            <tr>
            <td class="in">Tutorials helped in learning problem-solving in a methodical way.</td>
                 <td>
                <select name="v3" required class="take" >
                    <option value=""> </option>
                    <option value="Strongly Agree">Strongly Agree </option>
                    <option value="Agree"> Agree</option>
                    <option value="Netural"> netural</option>
                    <option value="Disagree"> disagree</option>
                    <option value="Strongly Disagree "> Strongly Disagree</option>
               </select>
                </td>
            </tr>
            <tr>
            <td class="in">Questions and discussion were encouraged.</td>
                <td>
                <select name="v4" required class="take" >
                    <option value=""> </option>
                    <option value="Strongly Agree">Strongly Agree </option>
                    <option value="Agree"> Agree</option>
                    <option value="Netural"> netural</option>
                    <option value="Disagree"> disagree</option>
                    <option value="Strongly Disagree "> Strongly Disagree</option>
               </select>
                </td>
            </tr>
            <tr>
            <td class="in">Overall, tutorials were useful.</td>
                <td>
                <select name="v5" required class="take" >
                    <option value=""> </option>
                    <option value="Strongly Agree">Strongly Agree </option>
                    <option value="Agree"> Agree</option>
                    <option value="Netural"> netural</option>
                    <option value="Disagree"> disagree</option>
                    <option value="Strongly Disagree "> Strongly Disagree</option>
                </select>
                </td>
            </tr>
</table>
<h1 STYLE="margin-left: 5cm;">TUTORIAL CLASS FACULTY FEEDBACK</h1>
    <table border="1" align="center" style="font-size: 16px;color:black;background-color: LightGray ;">
            <tr>
                <th style="background-color: DarkOliveGreen;color:white">ABOUT THE TUTORIAL CLASS TUTOR</th>
                <th style="background-color: DarkOliveGreen"><label>FeedBack</label></th>
            </tr>
            <tr>
            <td class="in">Overall, the tutor was excellent.</td>
                <td>
                <select name="v6" required  class="take" >
                    <option value=""> </option>
                    <option value="Strongly Agree">Strongly Agree </option>
                    <option value="Agree"> Agree</option>
                    <option value="Netural"> netural</option>
                    <option value="Disagree"> disagree</option>
                    <option value="Strongly Disagree "> Strongly Disagree</option>
               </select>
                </td>
            </tr>
            <tr>
            <td class="in">The Tutor was well prepared for the class.</td>
                <td>
                <select name="v7" required  class="take" >
                    <option value=""> </option>
                    <option value="Strongly Agree">Strongly Agree </option>
                    <option value="Agree"> Agree</option>
                    <option value="Netural"> netural</option>
                    <option value="Disagree"> disagree</option>
                    <option value="Strongly Disagree "> Strongly Disagree</option>
               </select>
                </td>
            </tr>
            <tr>
            <td class="in">The Tutor?s voice was clear and understandable.</td>
                <td>
                <select name="v8"  required class="take" >
                    <option value=""> </option>
                    <option value="Strongly Agree">Strongly Agree </option>
                    <option value="Agree"> Agree</option>
                    <option value="Netural"> netural</option>
                    <option value="Disagree"> disagree</option>
                    <option value="Strongly Disagree "> Strongly Disagree</option>
                </select>
                </td>
            </tr>
            <tr>
            <td class="in">Black-board work/visual presentations were of good quality.</td>
                <td>
                <select name="v9" required  class="take" >
                    <option value=""> </option>
                    <option value="Strongly Agree">Strongly Agree </option>
                    <option value="Agree"> Agree</option>
                    <option value="Netural"> netural</option>
                    <option value="Disagree"> disagree</option>
                    <option value="Strongly Disagree "> Strongly Disagree</option>
               </select>
                </td>
            </tr>
            <tr>
            <td class="in">The basic steps and concepts around the problems were explained clearly.</td>
                <td>
                <select name="v10" required class="take" >
                    <option value=""> </option>
                    <option value="Strongly Agree">Strongly Agree </option>
                    <option value="Agree"> Agree</option>
                    <option value="Netural"> netural</option>
                    <option value="Disagree"> disagree</option>
                    <option value="Strongly Disagree "> Strongly Disagree</option>
                </select>
                </td>
            </tr>
</table>
<h2 STYLE="margin-left: 5cm;">QUERIES </h2>
<textarea STYLE="margin-left: 9cm;" rows="7" cols="80" name="Description" placeholder="Enter Here ....." required>
</textarea>
<br>
<input style="width:150px;background-color: maroon;padding:10px; color:white;margin-left: 14cm;margin-top: 1cm;border-radius: 20px;" type="submit" name="Tut" value="Submit" />
    </form>


<% String Tut=request.getParameter("Tut");
    if(Tut!=null && !Tut.isEmpty())
    {     String v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,description,FF_i=null,Course_Id=null,YeAr=null,sql,student_id;
          FF_i=(String)session.getAttribute("faculty_id");Course_Id=(String)session.getAttribute("course_id");YeAr= (String)session.getAttribute("year"); 
          v1=request.getParameter("v1");v2=request.getParameter("v2");v3=request.getParameter("v3");v4=request.getParameter("v4");v5=request.getParameter("v5");
          v6=request.getParameter("v6");v7=request.getParameter("v7");v8=request.getParameter("v8");v9=request.getParameter("v9");v10=request.getParameter("v10");
          description=request.getParameter("Description");int sem= Integer.parseInt((String)session.getAttribute("sem"));student_id=(String)session.getAttribute("student_id");
          sql="insert into tutorial_tutors values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";PreparedStatement psmt=mysql.Mysql().prepareStatement(sql);
          psmt.setString(1, FF_i ); psmt.setString(2,  Course_Id );psmt.setInt(3, sem);psmt.setString(4, YeAr );psmt.setString(5,v1 );psmt.setString(6,v2);psmt.setString(7,v3 );psmt.setString(8, v4);
          psmt.setString(9,v5 );psmt.setString(10,v6 );psmt.setString(11,v7 );psmt.setString(12, v8);psmt.setString(13, v9);psmt.setString(14, v10);psmt.setString(15,description);
         int row=psmt.executeUpdate();
         if(row>0)
         {
                 submit sb=new submit();
                       if(sb.put(student_id, Course_Id,sem,YeAr)==1)   //
                       { out.println("<script>alert('successfully submitted your form')</script>");
                       }   
         
         }
            
    
    
    
    }  
        //out.println(session.getAttribute("faculty_id"));


%>
</body>
</html>
