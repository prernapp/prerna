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


        <div style="width:100%;height:15cm;border:2px solid aqua;background-image: url(images/4.jpg);float:left;">
            <p >&nbsp;&nbsp;&nbsp;&nbsp;</p>
            <form action="" method="post">   
                <table border="0" style="width:100%;margin-top:100px;margin-left: 0cm;border:1px black;" >
                    <tr><td colspan="2" style="height:2cm;text-align:center;color: white;font-size:35px;font-weight:bold"><marquee>WELCOME TO STUDENT FEEDBACK SYSTEM</marquee></td></tr>
                    <tr>
                        <td  style="height:6cm;" colspan="2" > 
                            <input style="margin-left: 15cm;height:1cm;border-radius: 10px; width:150px;background-color: #006666;padding:5px; color: white; text-decoration: none;" type="submit" name="Press Enter"  value="Login" >  
                        </td>
                    </tr>
                </table>
            </form>     

        </div>
        <a href="index.jsp"></a>
    </body>
</html>

<html>
    <title> <head></head></title>
    <body>
        <%
            String verify;
            verify = request.getParameter("Press Enter");
            if (verify != null && !verify.isEmpty()) {
                            String site = new String("index1.jsp");
                            response.setStatus(response.SC_MOVED_TEMPORARILY);
                            response.setHeader("Location", site);
                            
                           
            }
                      
            %>
    </body>
</html>

