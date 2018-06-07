package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import mini_project.authentication;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write(" \n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>TODO supply a title</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <table  bgcolor=\"#333300\"  style=\"width:100%\" > \n");
      out.write("            <tr>\n");
      out.write("                <td height=\"80\" > <p align=\"center\" > <font  size=\"+3\" color=\"white\">Indian Institute of Information Technology-Guwahati</font> </p></td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div style=\"width:100%;height:15cm;border:2px solid aqua;background-image: url(images/4.jpg);float:left;\">\n");
      out.write("            <p >&nbsp;&nbsp;&nbsp;&nbsp;</p>\n");
      out.write("            <form action=\"\" method=\"post\">   \n");
      out.write("                <table border=\"0\" style=\"width:100%;margin-top:100px;margin-left: 0cm;border:1px black;\" >\n");
      out.write("                    <tr><td colspan=\"2\" style=\"height:2cm;text-align:center;color: white;font-size:35px;font-weight:bold\"><marquee>WELCOME TO STUDENT FEEDBACK SYSTEM</marquee></td></tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td  style=\"height:6cm;\" colspan=\"2\" > \n");
      out.write("                            <input style=\"margin-left: 15cm;height:1cm;border-radius: 10px; width:150px;background-color: #006666;padding:5px; color: white; text-decoration: none;\" type=\"submit\" name=\"Press Enter\"  value=\"Login\" >  \n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("                </table>\n");
      out.write("            </form>     \n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <a href=\"index.jsp\"></a>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <title> <head></head></title>\n");
      out.write("    <body>\n");
      out.write("        ");

            String verify;
            verify = request.getParameter("Press Enter");
            if (verify != null && !verify.isEmpty()) {
                            String site = new String("index1.jsp");
                            response.setStatus(response.SC_MOVED_TEMPORARILY);
                            response.setHeader("Location", site);
                            
                           
            }
                      
            
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
