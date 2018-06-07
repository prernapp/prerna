<%@page import="mini_project.authentication"%>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <table  bgcolor="#333300"  style="width:100%" > 
            <tr>
                <td height="80" > <p align="center" > <font  size="+3" color="white">Indian Institute of Information Technology-Guwahati</font> </p></td>
            </tr>
        </table>


        <div style="width:100%;height:15cm;background-image: url(images/5.jpg);border:2px solid aqua;float:left;">
            <p >&nbsp;&nbsp;&nbsp;&nbsp;</p>
            <form action="" method="post">   
                <table border="0" style="width:12cm;margin-top:100px;margin-left: 9cm;border:1px black;" >
                    <tr><td colspan="2" style="height:2cm;text-align:center;font-size:35px;">Login Credentials </td></tr>
                    <tr>
                        <td style="height:1.5cm;text-align: center;font-size: 20px;width:5cm;"> Roll NO/ID</td>
                        <td ><input style="height:30px" type="text" name="id" placeholder="Roll No" required></td>
                    </tr>
                    <tr>
                        <td style="height:1.5cm;text-align: center;font-size: 20px;">Password </td>
                        <td><input style="height:30px" type="password"  name="pass" placeholder="password" required></td>
                    </tr>

                    <tr>
                        <td style="height:1.5cm;text-align: center;font-size: 20px;">User Type </td>
                        <td><select  style="height:30px;width:4cm;"   name="cat"  required>
                                <option value=""> </option><option value="student">Student </option> <option value="faculty"> Faculty</option>

                            </select> 

                        </td>
                    </tr>

                    <tr>
                        <td  style="height:1.5cm;" colspan="2" > 
                            <input style="margin-left: 2cm;height:1cm;border-radius: 10px; width:100px;background-color: #006666;padding:5px; color: white; text-decoration: none;" type="submit" name="click"  value="Submit" >  
                        </td>
                    </tr>
                </table>
            </form>     

        </div>


    </body>
</html>

<html>
    <title> <head></head></title>
    <body>
        <%
            String id, pass, type, verify;
            verify = request.getParameter("click");
            if (verify != null && !verify.isEmpty()) {
                id = request.getParameter("id");
                pass = request.getParameter("pass");
                type = request.getParameter("cat");
                authentication Auth = new authentication();
                //out.println(id + pass + type);
               if(type.equals("student"))
               {
                        if (Auth.auth(id, pass, type) == 1) 
                        {//redirect to other 
                            session.setAttribute("student_id", id);
                            String site = new String("student/show_course.jsp");
                            response.setStatus(response.SC_MOVED_TEMPORARILY);
                            response.setHeader("Location", site);

                        } else {

                            out.println("<script>alert('Authentication failed Try Again')</script>");
                        }
               }else if(type.equals("faculty")){
                        if (Auth.auth(id, pass, type) == 1) 
                        {   //redirect to other 
                             session.setAttribute("faculty_id", id);
                            String site = new String("faculty/show_courses_teacher.jsp");
                            response.setStatus(response.SC_MOVED_TEMPORARILY);
                            response.setHeader("Location", site);
                            
                            out.println("<script>alert('Authentication successful')</script>");
                        } else {

                            out.println("<script>alert('Authentication failed Try Again')</script>");
                        }
                   
                   
               }
            }%>

    </body>

</html>
