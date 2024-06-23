package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class widepushups_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
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

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("  <meta charset=\"UTF-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("  <title>Fitness Website</title>\n");
      out.write("  <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN\" crossorigin=\"anonymous\">\n");
      out.write("  <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL\" crossorigin=\"anonymous\"></script>\n");
      out.write("  \n");
      out.write("  <style>\n");
      out.write("    * {\n");
      out.write("      margin: 0;\n");
      out.write("      padding: 0;\n");
      out.write("      box-sizing: border-box;\n");
      out.write("    }\n");
      out.write("    body {\n");
      out.write("      font-family: 'Arial', sans-serif;\n");
      out.write("      line-height: 1.6;\n");
      out.write("      background-color: black;\n");
      out.write("      color: #333;\n");
      out.write("/*      background-image: url('Images/Adds1.jpg');\n");
      out.write("      background-size: cover;\n");
      out.write("      background-repeat: no-repeat;*/\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    header {\n");
      out.write("      background-color: #333;\n");
      out.write("      color: #fff;\n");
      out.write("      padding: 20px;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .navbar {\n");
      out.write("      display: flex;\n");
      out.write("      justify-content: space-between;\n");
      out.write("      align-items: center;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .logo h1 {\n");
      out.write("      font-size: 24px;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .nav-links {\n");
      out.write("      list-style: none;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .nav-links li {\n");
      out.write("      display: inline;\n");
      out.write("      margin-right: 20px;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .nav-links li a {\n");
      out.write("      color: #fff;\n");
      out.write("      text-decoration: none;\n");
      out.write("      transition: color 0.3s ease;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .nav-links li a:hover {\n");
      out.write("      color: #ffcc00;\n");
      out.write("      max-width: 100%;\n");
      out.write("      height: auto;\n");
      out.write("      opacity: 0.7;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .exercise-boxes {\n");
      out.write("      display: flex;\n");
      out.write("      justify-content: center;\n");
      out.write("      align-items: center;\n");
      out.write("      flex-wrap: wrap;\n");
      out.write("      padding: 50px 0;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .exercise-box {\n");
      out.write("      width: 200px;\n");
      out.write("      height: 200px;\n");
      out.write("      margin: 20px;\n");
      out.write("      border-radius: 5px;\n");
      out.write("      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);\n");
      out.write("      text-align: center;\n");
      out.write("      line-height: 200px;\n");
      out.write("      font-size: 18px;\n");
      out.write("      cursor: pointer;\n");
      out.write("      background-size: cover;\n");
      out.write("      background-position: center;\n");
      out.write("      color: #fff;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .exercise-box a {\n");
      out.write("      color: white;\n");
      out.write("      text-decoration: none;\n");
      out.write("      transition: color 0.3s ease;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .exercise-box:hover a {\n");
      out.write("      color: yellow;\n");
      out.write("      text-decoration: none;\n");
      out.write("    }\n");
      out.write("    hr {\n");
      out.write("      width: 100%;\n");
      out.write("      border: none;\n");
      out.write("      margin: 20px 0;\n");
      out.write("    }\n");
      out.write("    .workout-section {\n");
      out.write("      display: flex;\n");
      out.write("      justify-content: center;\n");
      out.write("      align-items: center;\n");
      out.write("      flex-wrap: wrap;\n");
      out.write("      padding: 50px 0;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .workout-section img {\n");
      out.write("      width: 50%;\n");
      out.write("      height: auto;\n");
      out.write("      order: 1; \n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .workout-details {\n");
      out.write("      width: 50%;\n");
      out.write("      padding: 20px;\n");
      out.write("      text-align: left;\n");
      out.write("      order: 2;\n");
      out.write("      color:white;\n");
      out.write("    }\n");
      out.write("  </style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <header>\n");
      out.write("      <nav class=\"navbar\">\n");
      out.write("        <div class=\"logo\">\n");
      out.write("          <h1>Fitness-Hub</h1>\n");
      out.write("        </div>\n");
      out.write("        <ul class=\"nav-links\" style=\"justify-content: center;\">\n");
      out.write("          <li><a href=\"index.jsp\" style=\"\">Home</a></li>\n");
      out.write("          <li><a href=\"#\">About us</a></li>\n");
      out.write("          <li class=\"dropdown\">\n");
      out.write("            <a href=\"Macro.jsp\" class=\"dropbtn\">Macro Calculator</a>\n");
      out.write("          </li>\n");
      out.write("        </ul>\n");
      out.write("      </nav>\n");
      out.write("    </header>\n");
      out.write("  \n");
      out.write("    <div class=\"workout-section\">\n");
      out.write("        <img src=\"Images/bench1.gif\" alt=\"Workout Gif\">\n");
      out.write("        <div class=\"workout-details\">\n");
      out.write("          <h2>Wide Push-ups</h2>\n");
      out.write("          <h3>body part: full chest</h3>\n");
      out.write("          <h4>Description:</h4>\n");
      out.write("          <p style=\"font-size: 25px;\"> WIDE GRIP PUSH UPS GUIDE \n");
      out.write("Get in the push-ups position and align your shoulders, hips, and knees in a straight line.\n");
      out.write("Keep your arms wider than shoulder-width and then bend your elbows sideways then drop until your chest almost touches the floor.\n");
      out.write("Rise until your arms are almost straight and then repeat the movement.\n");
      out.write("Perform as many reps are you can and do each rep properly.</p>\n");
      out.write("          <p style=\"font-size: 20px;\">Sets and Reps: 3 sets x 12 reps</p>\n");
      out.write("          <p style=\"font-size: 20px;\">Weight: body weight</p>\n");
      out.write("    </div>\n");
      out.write("  </body>\n");
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
