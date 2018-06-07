<%-- 
    Document   : logout
    Created on : 24 Mar, 2016, 12:17:28 AM
    Author     : IIITG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%  session.invalidate();
           HttpSession nsession = request.getSession(false);
                     String site = new String("../index1.jsp");
                    response.setStatus(response.SC_MOVED_TEMPORARILY);
                    response.setHeader("Location", site);
                    
       %>  
        
        
    </body>
</html>
