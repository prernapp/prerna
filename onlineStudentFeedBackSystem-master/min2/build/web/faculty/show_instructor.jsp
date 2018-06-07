<%-- 
    Document   : show_professor
    Created on : Apr 14, 2016, 7:09:01 AM
    Author     : RAJesh1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color: #D8BFD8">
         <table  bgcolor="#333300"  style="width:100%" > 
           <tr> <td height="80" > <p align="center" > <font  size="+3" color="white">Indian Institute of Information Technology-Guwahati</font> </p></td>
           </tr>
        </table>
         <a href="show_courses_teacher.jsp" style="font-size: 25px;margin-left: 2%;margin-top: 5px;">Go Back</a>
        <h2 STYLE="margin-left: 5cm;color:white">ABOUT THE COURSE</h2>
        <table border="1" align="center" style="font-size: 16px;color:black;background-color: LightGray ;">
            <tr>
                <th style="background-color: DarkOliveGreen ;color:white;width:13cm;">ABOUT THE COURSE</th>
                <th style="background-color: DarkOliveGreen "><label>FeedBack</label></th>
            </tr>
            <tr>
                <td class="in">A detailed course syllabus was provided at the beginning of the course.</td>
                <td><%= request.getParameter("v1")%></td>
             </tr>
            <tr>
                    <td class="in">Text books were appropriate for the course.</td>
                    <td><%= request.getParameter("v2")%></td>
            </tr>
            <tr>
                    <td class="in">Reference books provided good support for the course.</td>
                    <td><%= request.getParameter("v3")%></td>
            </tr>
            <tr>
                    <td class="in">The course load was very heavy.</td>
                    <td><%= request.getParameter("v4")%></td>
            </tr>
            <tr>
                    <td class="in">The course was highly enjoyable.</td>
                    <td><%= request.getParameter("v5")%></td>
            </tr>
    </table>
            
    <h2 STYLE="margin-left: 5cm;color:white">TEACHING FACULTY FEEDBACK</h2>
<table border="2" align="center" style="font-size: 16px;background-color: LightGray ">
            <tr>
                <th style="background-color: DarkOliveGreen;color:white;width:13cm;">ABOUT THE TEACHING INSTRUCTOR</th>
                <th style="background-color: DarkOliveGreen"><label>FeedBack</label></th>
            </tr>
            <tr>
                   <td class="in">Overall, the instructor was excellent.</td>
                   <td><%= request.getParameter("v6")%></td> 
            </tr>
            <tr>
                    <td class="in">The instructor was well prepared for the class.</td>
                   <td><%= request.getParameter("v7")%></td>
            </tr>
            <tr>
                    <td class="in">The concepts were explained properly.</td>
                   <td><%= request.getParameter("v8")%></td>
            </tr>
            <tr>
                    <td class="in">Classes were held regularly as per time-table.</td>
                    <td><%= request.getParameter("v9")%></td>
            </tr>
            <tr>
                    <td class="in">The instructor's voice was audible and understandable.</td>
                   <td><%= request.getParameter("v10")%></td>
            </tr>
            <tr>
                    <td class="in">Black-board work/visual presentations were of good quality.</td>
                   <td><%= request.getParameter("v11")%></td>
            </tr>
            <tr>
                    <td class="in">Topics were covered in a logical sequence.</td>
                   <td><%= request.getParameter("v12")%></td>
            </tr>
            <tr>
                    <td class="in">The coverage of the course was complete.</td>
                   <td><%= request.getParameter("v13")%></td>
            </tr>
            <tr>
                    <td class="in">Questions and discussions were encouraged.</td>
                   <td><%= request.getParameter("v14")%></td>
            </tr>
            <tr>
                    <td class="in">Evaluation was done regularly & academic advices were given.</td>
                    <td><%= request.getParameter("v15")%></td>
            </tr>
    </table>
    <h2 STYLE="margin-left: 5cm;color:white">QUERIES </h2>

    <textarea STYLE="margin-left: 9cm;" rows="7" cols="80"  readonly>
        <%= request.getParameter("v16")%>
    </textarea>
        
        
    </body>
</html>
