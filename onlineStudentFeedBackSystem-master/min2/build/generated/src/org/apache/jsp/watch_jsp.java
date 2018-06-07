package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class watch_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<title>Home Page</title>\n");
      out.write("<link href=\"style.css\" rel=\"stylesheet\" >\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <table  bgcolor=\"#333300\"  style=\"width:100%\" > \n");
      out.write("            <tr>\n");
      out.write("                <td height=\"80\" > <p align=\"center\" > <font  size=\"+3\" color=\"white\">Indian Institute of Information Technology-Guwahati</font> </p></td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("<div id=\"watch\">\n");
      out.write("  <div class=\"frame-face\"></div>\n");
      out.write("  <ul class=\"minute-marks\">\n");
      out.write("    <li></li><li></li><li></li><li></li><li></li><li></li>\n");
      out.write("    <li></li><li></li><li></li><li></li><li></li><li></li>\n");
      out.write("    <li></li><li></li><li></li><li></li><li></li><li></li>\n");
      out.write("    <li></li><li></li><li></li><li></li><li></li><li></li>\n");
      out.write("    <li></li><li></li><li></li><li></li><li></li><li></li>\n");
      out.write("    <li></li><li></li><li></li><li></li><li></li><li></li>\n");
      out.write("    <li></li><li></li><li></li><li></li><li></li><li></li>\n");
      out.write("    <li></li><li></li><li></li><li></li><li></li><li></li>\n");
      out.write("  </ul>\n");
      out.write("  <div class=\"digital-wrap\">\n");
      out.write("    <ul class=\"digit-hours\">\n");
      out.write("      <li>5</li>\n");
      out.write("      <li>00</li><li>01</li><li>02</li><li>03</li><li>04</li><li>05</li>\n");
      out.write("      <li>06</li><li>07</li><li>08</li><li>09</li><li>10</li><li>11</li>\n");
      out.write("      <li>12</li><li>13</li><li>14</li><li>15</li><li>16</li><li>17</li>\n");
      out.write("      <li>18</li><li>19</li><li>20</li><li>21</li><li>22</li>\n");
      out.write("    </ul>\n");
      out.write("    <ul class=\"digit-minutes\">\n");
      out.write("      <li>30</li><li>11</li>\n");
      out.write("      <li>12</li><li>13</li><li>14</li><li>15</li><li>16</li><li>17</li>\n");
      out.write("      <li>18</li><li>19</li><li>20</li><li>21</li><li>22</li><li>23</li>\n");
      out.write("      <li>24</li><li>25</li><li>26</li><li>27</li><li>28</li><li>29</li>\n");
      out.write("      <li>30</li><li>31</li><li>32</li><li>33</li><li>34</li><li>35</li>\n");
      out.write("      <li>36</li><li>37</li><li>38</li><li>39</li><li>40</li><li>41</li>\n");
      out.write("      <li>42</li><li>43</li><li>44</li><li>45</li><li>46</li><li>47</li>\n");
      out.write("      <li>48</li><li>49</li><li>50</li><li>51</li><li>52</li><li>53</li>\n");
      out.write("      <li>54</li><li>55</li><li>56</li><li>57</li><li>58</li><li>59</li>\n");
      out.write("      <li>00</li><li>01</li><li>02</li><li>03</li><li>04</li><li>05</li>\n");
      out.write("      <li>06</li><li>07</li><li>08</li><li>09</li>\n");
      out.write("    </ul>\n");
      out.write("    <ul class=\"digit-seconds\">\n");
      out.write("      <li>20</li><li>21</li><li>22</li><li>23</li>\n");
      out.write("      <li>24</li><li>25</li><li>26</li><li>27</li><li>28</li><li>29</li>\n");
      out.write("      <li>30</li><li>31</li><li>32</li><li>33</li><li>34</li><li>35</li>\n");
      out.write("      <li>36</li><li>37</li><li>38</li><li>39</li><li>40</li><li>41</li>\n");
      out.write("      <li>42</li><li>43</li><li>44</li><li>45</li><li>46</li><li>47</li>\n");
      out.write("      <li>48</li><li>49</li><li>50</li><li>51</li><li>52</li><li>53</li>\n");
      out.write("      <li>54</li><li>55</li><li>56</li><li>57</li><li>58</li><li>59</li>\n");
      out.write("      <li>00</li><li>01</li><li>02</li><li>03</li><li>04</li><li>05</li>\n");
      out.write("      <li>06</li><li>07</li><li>08</li><li>09</li><li>10</li><li>11</li>\n");
      out.write("      <li>12</li><li>13</li><li>14</li><li>15</li><li>16</li><li>17</li>\n");
      out.write("      <li>18</li><li>19</li>\n");
      out.write("    </ul>\n");
      out.write("  </div>\n");
      out.write("  <ul class=\"digits\">\n");
      out.write("    <li>1</li><li>2</li><li>3</li><li>4</li><li>5</li><li>6</li>\n");
      out.write("    <li>7</li><li>8</li><li>9</li><li>10</li><li>11</li><li>12</li>\n");
      out.write("  </ul>\n");
      out.write("  <div class=\"hours-hand\"></div>\n");
      out.write("  <div class=\"minutes-hand\"></div>\n");
      out.write("  <div class=\"seconds-hand\"></div>\n");
      out.write("</div>\n");
      out.write("<div style=\"width:80%; margin-left: 10%;\">\n");
      out.write("<marquee style=\"color:white;font-size:40px;\"> It's Time To Give FeedBack</marquee>\n");
      out.write("<form action=\"index1.jsp\" method=\"post\">\n");
      out.write("<input style=\"margin-left: 15cm;height:1cm;border-radius: 10px; width:150px;background-color: #006666;padding:5px; color: white; text-decoration: none;\" type=\"submit\" name=\"Press Enter\"  value=\"Login\" >\n");
      out.write("</form>\n");
      out.write("</div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
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
