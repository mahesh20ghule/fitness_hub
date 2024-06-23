package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
 response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); 
      out.write('\n');
 response.setHeader("Pragma", "no-cache"); 
      out.write('\n');
 response.setDateHeader("Expires", 0); 
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("  <meta charset=\"UTF-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("  <title>Fitness Website</title>\n");
      out.write("  <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN\" crossorigin=\"anonymous\">\n");
      out.write("   <link href=\"https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap\" rel=\"stylesheet\">\n");
      out.write("  <script src=\"https://kit.fontawesome.com/b03cf821e3.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("   <style>\n");
      out.write("    .navbar {\n");
      out.write("      height: 80px;\n");
      out.write("    }\n");
      out.write("    .imgBG {\n");
      out.write("      position: relative;\n");
      out.write("      background-image: url('Images/index6.jpg');\n");
      out.write("      background-position: center;\n");
      out.write("      background-size: cover;\n");
      out.write("      height: 630px;\n");
      out.write("      color: #fff;\n");
      out.write("    }\n");
      out.write("    .imgBG::before {\n");
      out.write("      content: '';\n");
      out.write("      position: absolute;\n");
      out.write("      top: 0;\n");
      out.write("      left: 0;\n");
      out.write("      right: 0;\n");
      out.write("      bottom: 0;\n");
      out.write("      background: rgba(0, 0, 0, 0.5); /* Adjust the opacity as needed */\n");
      out.write("    }\n");
      out.write("    .hero-content {\n");
      out.write("      position: relative;\n");
      out.write("      z-index: 1;\n");
      out.write("      color: #fff;\n");
      out.write("      text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7); /* Add a text shadow for better readability */\n");
      out.write("    }\n");
      out.write("    .hero-content a {\n");
      out.write("      color: #fff;\n");
      out.write("    }\n");
      out.write("    .hero-content a:hover {\n");
      out.write("      background-color: orange;\n");
      out.write("      color: black;\n");
      out.write("    }\n");
      out.write("    .services {\n");
      out.write("      padding-top: 40px;\n");
      out.write("       background: rgb(255,255,255);\n");
      out.write("background: linear-gradient(90deg, rgba(255,255,255,1) 0%, rgba(255,255,255,1) 0%, rgba(119,111,245,1) 0%, rgba(11,32,55,1) 0%, rgba(54,56,128,1) 0%, rgba(130,130,189,1) 100%);\n");
      out.write("\n");
      out.write("    }\n");
      out.write("    .ser-box {\n");
      out.write("      box-shadow: 2px 10px 5px black;\n");
      out.write("      padding-top: 30px;\n");
      out.write("    background: rgb(255,255,255);\n");
      out.write("background: linear-gradient(90deg, rgba(255,255,255,1) 0%, rgba(255,255,255,1) 0%, rgba(119,111,245,1) 0%, rgba(11,32,55,1) 0%, rgba(94,97,233,1) 0%, rgba(130,130,189,1) 100%);\n");
      out.write("text-transform: capitalize;\n");
      out.write("    }\n");
      out.write("    .ser-box a:hover {\n");
      out.write("      background-color: orange;\n");
      out.write("      color: black;\n");
      out.write("    }\n");
      out.write("    .navbar-nav .nav-item .nav-link:not(.navbar-brand):hover {\n");
      out.write("      color: red;\n");
      out.write("    }\n");
      out.write("    .dropdown-menu {\n");
      out.write("      background-color: lightsalmon;\n");
      out.write("    }\n");
      out.write("    .dropdown-menu a:hover {\n");
      out.write("      background-color: lightsalmon;\n");
      out.write("      color: white;\n");
      out.write("      font-size: 20px;\n");
      out.write("    }\n");
      out.write("    .navbar-brand {\n");
      out.write("      font-family: 'Roboto', sans-serif;\n");
      out.write("      font-size: 30px;\n");
      out.write("    }\n");
      out.write("    .social-icons {\n");
      out.write("      display: flex;\n");
      out.write("      justify-content: center;\n");
      out.write("      align-items: center;\n");
      out.write("      margin: 20px 140px;\n");
      out.write("    }\n");
      out.write("    .social-icons a {\n");
      out.write("      margin: 0 10px;\n");
      out.write("      color: #fff;\n");
      out.write("      font-size: 24px;\n");
      out.write("      text-decoration: none;\n");
      out.write("    }\n");
      out.write("    .social-icons a:hover {\n");
      out.write("      color: orange;\n");
      out.write("    }\n");
      out.write("  </style>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("  <header class=\"bg-dark text-white\">\n");
      out.write("    <nav class=\"navbar navbar-expand-lg navbar-dark bg-dark\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("          <a class=\"navbar-brand\" href=\"index.jsp\"> <img src=\"Images/Logo.jpeg\" alt=\"Fitness-Hub Logo\" height=\"40\" width=\"50\" class=\"d-inline-block align-text-top\">\n");
      out.write("  Fitness-Hub</a>\n");
      out.write("        <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarNav\" aria-controls=\"navbarNav\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("          <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("        </button>\n");
      out.write("        <div class=\"collapse navbar-collapse justify-content-end h\" id=\"navbarNav\">\n");
      out.write("          <ul class=\"navbar-nav\">\n");
      out.write("              <li class=\"nav-item\">\n");
      out.write("              <a class=\"nav-link\" href=\"index.jsp\">Home</a>\n");
      out.write("            </li>\n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("              <a class=\"nav-link\" href=\"Macro.jsp\">Macro Calculator</a>\n");
      out.write("            </li>\n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("              <a class=\"nav-link\" href=\"#about\">About us</a>\n");
      out.write("            </li>\n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("              <a class=\"nav-link\" href=\"#about\">Contact us</a>\n");
      out.write("            </li>\n");
      out.write("            <li class=\"nav-item dropdown\">\n");
      out.write("              <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\n");
      out.write("                ");
 if (session.getAttribute("email") == null) { 
      out.write("\n");
      out.write("                  Registration\n");
      out.write("                ");
 } else { 
      out.write("\n");
      out.write("                  Account\n");
      out.write("                ");
 } 
      out.write("\n");
      out.write("              </a>\n");
      out.write("              <ul class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("                ");
 if (session.getAttribute("email") == null) { 
      out.write("\n");
      out.write("                  <li><a class=\"dropdown-item\" href=\"login.jsp\">Log In</a></li>\n");
      out.write("                  <li><a class=\"dropdown-item\" href=\"sign.jsp\">Sign up</a></li>\n");
      out.write("                ");
 } else { 
      out.write("\n");
      out.write("                  <li><a class=\"dropdown-item\" href=\"logout.jsp\">Log Out</a></li>\n");
      out.write("                  <li><a class=\"dropdown-item\" href=\"profile.jsp\">Profile</a></li>\n");
      out.write("                ");
 } 
      out.write("\n");
      out.write("              </ul>\n");
      out.write("            </li>\n");
      out.write("          </ul>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </nav>\n");
      out.write("  </header>\n");
      out.write("  <section id=\"hero\" class=\"hero imgc d-flex justify-content-center align-items-center text-center imgBG\">\n");
      out.write("    <div class=\"hero-content \">\n");
      out.write("      <h2>Welcome to Fitness-Hub</h2>\n");
      out.write("      <p>Your journey to a healthier lifestyle starts here!</p>\n");
      out.write("      <a href=\"start.jsp\" class=\"btn btn-primary\">Get Started</a>\n");
      out.write("    </div>\n");
      out.write("  </section>\n");
      out.write("\n");
      out.write("  <section id=\"about\" class=\"services\">\n");
      out.write("    <div class=\"container text-center\">\n");
      out.write("        <h2 style=\"color: white; margin-bottom: 30px; letter-spacing: 2px; font-family: Arial;\">Our Services</h2>\n");
      out.write("        \n");
      out.write("      <div class=\"row \">\n");
      out.write("         \n");
      out.write("        <div class=\"col-md-6 \">\n");
      out.write("          <div class=\"card mb-4\">\n");
      out.write("            <div class=\"card-body ser-box\">\n");
      out.write("              <h3 class=\"card-title\">Personal Training</h3>\n");
      out.write("              <p class=\"card-text\">Get the best workout plans here.</p>\n");
      out.write("              <a href=\"training.jsp\" class=\"btn btn-primary\">Click Here</a>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-md-6\">\n");
      out.write("          <div class=\"card mb-4\">\n");
      out.write("            <div class=\"card-body  ser-box\">\n");
      out.write("              <h3 class=\"card-title\">Nutrition Plans</h3>\n");
      out.write("              <p class=\"card-text\">Get the best nutrition plans here.</p>\n");
      out.write("              <a href=\"nutrients.jsp\" class=\"btn btn-primary\">Click Here</a>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("  </section>\n");
      out.write("\n");
      out.write(" <footer class=\"bg-dark text-white text-center p-4\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-md-4\">\n");
      out.write("                <h3>About Us</h3>\n");
      out.write("                <p>Fitness-Hub is dedicated to helping you achieve your fitness goals. Our team of experts is passionate about promoting a healthy lifestyle through personalized training and nutrition plans.</p>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-md-4\">\n");
      out.write("                <h3>Contact Us</h3>\n");
      out.write("                <p>\n");
      out.write("                    <strong>Email:</strong> maheshghule2004@gmail.com<br>\n");
      out.write("                    <strong>Phone:</strong>(+91) 9575643790<br>\n");
      out.write("                    <strong>Address:</strong> 123 Fitness Street, Khandwa, Madhaya Pradesh,India\n");
      out.write("                </p>\n");
      out.write("            </div>\n");
      out.write("           <div class=\"col-md-4\" style=\"text-align: center;text-decoration: none;\">\n");
      out.write("    <h3>Social Media</h3>\n");
      out.write("    <div class=\"col-md-4 social-icons\">\n");
      out.write("    <a href=\"#\"><i class=\"fab fa-facebook\"></i></a>\n");
      out.write("    <a href=\"#\"><i class=\"fab fa-twitter\"></i></a>\n");
      out.write("    <a href=\"https://www.instagram.com/shayad_mahesh_hun?igshid=MXh2NGM3a3piYzQ4ZQ==\"><i class=\"fab fa-instagram\"></i></a>\n");
      out.write("    <a href=\"https://www.linkedin.com/in/mahesh-ghule-064992286?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app\"><i class=\"fab fa-linkedin\"></i></a>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("     \n");
      out.write("</footer>\n");
      out.write("\n");
      out.write("\n");
      out.write("  <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL\" crossorigin=\"anonymous\"></script>\n");
      out.write("  <script>\n");
      out.write("  document.addEventListener(\"DOMContentLoaded\", function () {\n");
      out.write("    const scroll = new SmoothScroll('a[href*=\"#\"]', {\n");
      out.write("      speed: 800,\n");
      out.write("      speedAsDuration: true,\n");
      out.write("      easing: 'easeInOutCubic'\n");
      out.write("    });\n");
      out.write("\n");
      out.write("    const navbarOffset = document.querySelector('.navbar').offsetHeight;\n");
      out.write("    scroll.offset = navbarOffset;\n");
      out.write("\n");
      out.write("    document.querySelectorAll('.nav-link').forEach(function (elem) {\n");
      out.write("      elem.addEventListener('click', function () {\n");
      out.write("        const navbarToggler = document.querySelector('.navbar-toggler');\n");
      out.write("        if (navbarToggler && !navbarToggler.classList.contains('collapsed')) {\n");
      out.write("          navbarToggler.click();\n");
      out.write("        }\n");
      out.write("      });\n");
      out.write("    });\n");
      out.write("  });\n");
      out.write("</script>\n");
      out.write("\n");
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
