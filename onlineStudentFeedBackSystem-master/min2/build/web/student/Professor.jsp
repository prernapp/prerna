<%@page import="mini_project.submit"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="mini_project.mysql"%>
<!DOCTYPE html>
<html>
<head>
<title>TEACHING TUTOR</title>
<style>
            .in{ padding:6px; }
            .take{height:25px;}
            
</style>
</head>
<body style="background-color: #008B8B">
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
 <h2 style="margin-left: 5cm;color:white">COURSE FEEDBACK   </h2>
    <form action="" method="post" >
    <table border="1" align="center" style="font-size: 16px;color:black;background-color: LightGray ;">
            <tr>
                <th style="background-color: DarkOliveGreen ;color:white;width:13cm;">ABOUT THE COURSE</th>
                <th style="background-color: DarkOliveGreen "><label>FeedBack</label></th>
            </tr>
            <tr >
            <td class="in">A detailed course syllabus was provided at the beginning of the course.</td>
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
            <td class="in">Text books were appropriate for the course.</td>
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
            <td class="in">Reference books provided good support for the course.</td>
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
            <td class="in">The course load was very heavy.</td>
            <td>
                <select name="v4"  class="take" required>
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
            <td class="in">The course was highly enjoyable.</td>
                  <td>
                      <select name="v5"  class="take" required>
                    <option value=""> </option>
                    <option value="Strongly Agree">Strongly Agree </option>
                    <option value="Agree"> Agree</option>
                    <option value="Netural"> netural</option>
                    <option value="Disagree"> disagree</option>
                    <option value="Strongly Disagree"> Strongly Disagree</option>
                 </select>
            </td></tr>
</table>
<h2 style="margin-left: 5cm;color:white">TEACHING FACULTY FEEDBACK</h2>
<table border="2" align="center" style="font-size: 16px;background-color: LightGray ">
            <tr>
                <th style="background-color: DarkOliveGreen;color:white;width:13cm;">ABOUT THE TEACHING INSTRUCTOR</th>
                <th style="background-color: DarkOliveGreen"><label>FeedBack</label></th>
            </tr>
            <tr>
            <td class="in">Overall, the instructor was excellent.</td>
           <td>
               <select name="v6" class="take" required>
                    <option value=""> </option>
                    <option value="Strongly Agree">Strongly Agree </option>
                    <option value="Agree"> Agree</option>
                    <option value="Netural"> netural</option>
                    <option value="Disagree"> disagree</option>
                    <option value="Strongly Disagree"> Strongly Disagree</option>
                 </select>
            </td> </tr>
            <tr>
            <td class="in">The instructor was well prepared for the class.</td>
           <td>
               <select name="v7" class="take" required>
                    <option value=""> </option>
                    <option value="Strongly Agree">Strongly Agree </option>
                    <option value="Agree"> Agree</option>
                    <option value="Netural"> netural</option>
                    <option value="Disagree"> disagree</option>
                    <option value="Strongly Disagree"> Strongly Disagree</option>
                </select>
            </td> </tr>
            <tr>
            <td class="in">The concepts were explained properly.</td>
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
            <td class="in">Classes were held regularly as per time-table.</td>
            <td>
                <select name="v9" class="take"  required >
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
            <td class="in">The instructor's voice was audible and understandable.</td>
           <td>
                <select name="v10" class="take" required >
                    <option value=""> </option>
                    <option value="Strongly Agree">Strongly Agree </option>
                    <option value="Agree"> Agree</option>
                    <option value="Netural"> netural</option>
                    <option value="Disagree"> disagree</option>
                    <option value="Strongly Disagree"> Strongly Disagree</option>
                </select>
            </td> </tr>
            <tr>
            <td class="in">Black-board work/visual presentations were of good quality.</td>
           <td>
                <select name="v11" class="take"  required>
                    <option value=""> </option>
                    <option value="Strongly Agree">Strongly Agree </option>
                    <option value="Agree"> Agree</option>
                    <option value="Netural"> netural</option>
                    <option value="Disagree"> disagree</option>
                    <option value="Strongly Disagree"> Strongly Disagree</option>
                </select>
            </td> </tr>
            <tr>
            <td class="in">Topics were covered in a logical sequence.</td>
           <td>
                <select name="v12" class="take"  required>
                 <option value=""> </option>
                    <option value="Strongly Agree">Strongly Agree </option>
                    <option value="Agree"> Agree</option>
                    <option value="Netural"> netural</option>
                    <option value="Disagree"> disagree</option>
                    <option value="Strongly Disagree"> Strongly Disagree</option>
            </select>
            </td> </tr>
            <tr>
            <td class="in">The coverage of the course was complete.</td>
           <td>
                <select name="v13" class="take" required >
                 <option value=""> </option>
                    <option value="Strongly Agree">Strongly Agree </option>
                    <option value="Agree"> Agree</option>
                    <option value="Netural"> netural</option>
                    <option value="Disagree"> disagree</option>
                    <option value="Strongly Disagree"> Strongly Disagree</option>
            </select>
            </td> </tr>
            <tr>
            <td class="in">Questions and discussions were encouraged.</td>
           <td>
                <select name="v14" class="take" required  >
                 <option value=""> </option>
                    <option value="Strongly Agree">Strongly Agree </option>
                    <option value="Agree"> Agree</option>
                    <option value="Netural"> netural</option>
                    <option value="Disagree"> disagree</option>
                    <option value="Strongly Disagree"> Strongly Disagree</option>
           </select>
            </td> </tr>
            <tr>
            <td class="in">Evaluation was done regularly & academic advices were given.</td>
           <td>
                <select name="v15" class="take" required >
                    <option value=""> </option>
                    <option value="Strongly Agree">Strongly Agree </option>
                    <option value="Agree"> Agree</option>
                    <option value="Netural"> netural</option>
                    <option value="Disagree"> disagree</option>
                    <option value="Strongly Disagree"> Strongly Disagree</option>
            </select>
            </td> </tr>
</table>
<h2 style="margin-left: 5cm;color:white">QUERIES </h2>

<textarea STYLE="margin-left: 9cm;" rows="7" cols="80" name="description" placeholder="Enter Here ....." required>
</textarea>
<br>
<input style="width:150px;background-color: #333300;padding:10px; color:white;margin-left: 14cm;margin-top: 1cm;border-radius: 20px;" type="submit" name="submit" value="Submit" />
    </form>
 
  <!--div style="background-color:#b5dcb3;clear:both">
  <center>
      FACULTY FEEDBACK SYSTEM
  </center>
      
  </div-->

<%
    String veri=request.getParameter("submit");
    if(veri!=null && !veri.isEmpty())
    {  String student_id,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,description,sql,f_if, ye;
       f_if=(String)session.getAttribute("faculty_id");cc_id=(String)session.getAttribute("course_id");ye= (String)session.getAttribute("year"); 
       int sem= Integer.parseInt((String)session.getAttribute("sem")); student_id=(String)session.getAttribute("student_id");
       v1=request.getParameter("v1");v2=request.getParameter("v2");v3=request.getParameter("v3");v4=request.getParameter("v4");v5=request.getParameter("v5");
        v6=request.getParameter("v6");v7=request.getParameter("v7");v8=request.getParameter("v8");v9=request.getParameter("v9");v10=request.getParameter("v10");
        v11=request.getParameter("v11");v12=request.getParameter("v12");v13=request.getParameter("v13");v14=request.getParameter("v14");v15=request.getParameter("v15");
        description=request.getParameter("description");
     out.println(f_if+"  ccc    "+f_if.length() + "     dd   "+cc_id +cc_id.length());
        //out.println(v1+v2+v3+v4+v5+v6+v7+v8+v9+v10+v11+v12+v13+v14+ v15+description );
       sql=" insert into instructor values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
      PreparedStatement psmt=mysql.Mysql().prepareStatement(sql);
      psmt.setString(1, f_if);psmt.setString(2,cc_id );psmt.setInt(3, sem);psmt.setString(4,ye );psmt.setString(5,v1 );psmt.setString(6,v2);psmt.setString(7,v3 );psmt.setString(8, v4);
      psmt.setString(9,v5 );psmt.setString(10,v6 );psmt.setString(11,v7 );psmt.setString(12, v8);psmt.setString(13, v9);psmt.setString(14,v10 );psmt.setString(15,v11 );psmt.setString(16, v12);
      psmt.setString(17, v13 );psmt.setString(18,v14 );psmt.setString(19,v15 );psmt.setString(20,description);
      int row=psmt.executeUpdate();
         if(row>0){

                        response.setIntHeader("Refresh",10); veri=null; 
                        String site = new String("show_course.jsp");response.setStatus(response.SC_MOVED_TEMPORARILY);response.setHeader("Location", site);
                       //i need to insert add student in submit table
                       submit sb=new submit();
                       if(sb.put(student_id,cc_id,sem,ye)==1)   //
                       { out.println("<script>alert('successfully submitted your form')</script>");
                       } 
                }
    
   }     
    


%>
</body>
</html>