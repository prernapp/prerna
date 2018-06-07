

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <body style="background-color:#A9A9A9">
    <table  bgcolor="#333300"     style="width:100%"> 
        <tr><td  height=80 > <p align="center" > <font  size="+3" color="white">Indian Institute of Information Technology-Guwahati</font> </p>
        </td>
        </tr>
    </table>
          <a href="show_courses_teacher.jsp" style="font-size: 25px;margin-left: 2%">Go Back</a>
<%-- <div style="background-color:white; height:700px;width:100%;"> --%>
<h2 STYLE="margin-left: 5cm;">TUTORIAL FEEDBACK</h2>
    <form action="" method="post" >
    <table border="1" align="center" style="font-size: 16px;color:black;background-color: LightGray ;">
            <tr>
                <th style="background-color: DarkOliveGreen;color:white">ABOUT THE TUTORIALS</th>
                <th style="background-color: DarkOliveGreen"><label>FeedBack</label></th>
            </tr>
            
            <tr>
                    <td class="in">Tutorials were held regularly and followed the lectures.</td>
                    <td><%= request.getParameter("v1") %></td>
            </tr>
            <tr>
                    <td class="in">Tutorials clarified basic concepts taught in the lectures.</td>
                    <td><%= request.getParameter("v2") %></td>
            </tr>
            <tr>
                    <td class="in">Tutorials helped in learning problem-solving in a methodical way.</td>
                    <td><%= request.getParameter("v3") %></td>
            </tr>
            <tr>
                    <td class="in">Questions and discussion were encouraged.</td>
                    <td><%= request.getParameter("v4") %></td>
            </tr>
            <tr>
                <td class="in">Overall, tutorials were useful.</td>
                <td><%= request.getParameter("v5") %></td>
            </tr>
</table>
<h2 STYLE="margin-left: 5cm;">TUTORIAL CLASS FACULTY FEEDBACK</h2>
    <table border="1" align="center" style="font-size: 16px;color:black;background-color: LightGray ;">
            <tr>
                <th style="background-color: DarkOliveGreen;color:white">ABOUT THE TUTORIAL CLASS TUTOR</th>
                <th style="background-color: DarkOliveGreen"><label>FeedBack</label></th>
            </tr>
            <tr>
                    <td class="in">Overall, the tutor was excellent.</td>
                    <td><%= request.getParameter("v6") %></td>
            </tr>
            <tr>
            <td class="in">The Tutor was well prepared for the class.</td>
                <td><%= request.getParameter("v7") %></td>
            </tr>
            <tr>
            <td class="in">The Tutor?s voice was clear and understandable.</td>
                 <td><%= request.getParameter("v8") %></td>
            </tr>
            <tr>
            <td class="in">Black-board work/visual presentations were of good quality.</td>
                <td><%= request.getParameter("v9") %></td>
            </tr>
            <tr>
            <td class="in">The basic steps and concepts around the problems were explained clearly.</td>
                <td><%= request.getParameter("v10") %></td>
            </tr>
</table>
<h2 STYLE="margin-left: 5cm;">QUERIES </h2>
<textarea STYLE="margin-left: 9cm;" rows="7" cols="80">
<%= request.getParameter("v11") %>
</textarea>
    
    </body>
</html>
