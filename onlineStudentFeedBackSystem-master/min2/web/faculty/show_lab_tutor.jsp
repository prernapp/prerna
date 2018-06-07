<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color:#FFE4B5">
        <table  bgcolor="#333300"  style="width:100%" > 
           <tr> <td height="80" > <p align="center" > <font  size="+3" color="white">Indian Institute of Information Technology-Guwahati</font> </p></td>
           </tr>
        </table>
         <a href="show_courses_teacher.jsp" style="font-size: 25px;margin-left: 2%">Go Back</a>
        <h2 STYLE="margin-left: 5cm;">ABOUT LAB SESSION</h2>
        <table border="1" align="center" style="font-size: 16px;color:black;background-color: LightGray ;">
             <tr>
                <th style="background-color: DarkOliveGreen ;color:white;width:13cm;">ABOUT THE COURSE</th>
                <th style="background-color: DarkOliveGreen "><label>FeedBack</label></th>
            </tr>
            <tr>
                    <td class="in">A detailed write-up on the lab component was provided.</td>
                    <td><%= request.getParameter("v1")%></td>
                
            </tr>
            <tr>
                <td class="in">The lab assignments were useful and followed the lectures.</td>
                <td><%= request.getParameter("v2")%></td>
            </tr>
            <tr>
            <td class="in">The equipments were user friendly.</td>
                <td><%= request.getParameter("v3")%></td>
                
            </tr>
            <tr>
            <td class="in">The equipments were functioning properly.</td>
                <td><%= request.getParameter("v4")%></td>
            </tr>
            <tr>
            <td class="in">The lab session helped in clarified basic concepts taught in the lectures.</td>
                <td><%= request.getParameter("v5")%></td>
            </tr>
</table>
<h2 STYLE="margin-left: 5cm;">LAB TUTORS FEEDBACK</h2>
  <table border="1" align="center" style="font-size: 16px;color:black;background-color: LightGray ;">
             <tr>
                <th style="background-color: DarkOliveGreen;color:white">ABOUT THE LAB SESSION TUTOR</th>
                <th style="background-color: DarkOliveGreen"><label>FeedBack</label></th>
            </tr>
            <tr>
            <td class="in">Overall, the Lab Tutor was excellent.</td>
                <td><%= request.getParameter("v6")%></td>
            </tr>
            <tr>
            <td class="in">The Lab Tutor was well prepared for the class.</td>
                <td><%= request.getParameter("v7")%></td>
            </tr>
            <tr>
            <td class="in">The Lab Tutor?s instructions were clear and understandable.</td>
                <td><%= request.getParameter("v8")%></td>
            </tr>
            <tr>
            <td class="in">Evaluation of lab sessions were done regularly & academic advices were given.</td>
                <td><%= request.getParameter("v9")%></td>
            </tr>
</table>

<h2 STYLE="margin-left: 5cm;">QUERIES </h2>
    <textarea STYLE="margin-left: 9cm;" rows="7" cols="80"  readonly>
     <%= request.getParameter("v10")%>
    </textarea>
    </body>
</html>
