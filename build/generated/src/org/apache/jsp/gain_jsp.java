package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class gain_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<head>\n");
      out.write("    <!-- Add your meta tags, title, and stylesheet links here -->\n");
      out.write("    <!-- ... -->\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body class=\"imgc\">\n");
      out.write("    <header>\n");
      out.write("        <!-- Your header content -->\n");
      out.write("        <!-- ... -->\n");
      out.write("    </header>\n");
      out.write("\n");
      out.write("    <!-- Your navbar code -->\n");
      out.write("    <!-- ... -->\n");
      out.write("\n");
      out.write("    <!-- High-Calorie Diet Plan -->\n");
      out.write("    <section class=\"services\">\n");
      out.write("        <h2>High-Calorie Diet Plan</h2>\n");
      out.write("        <div class=\"service-cards\">\n");
      out.write("            <div class=\"service-item\">\n");
      out.write("                <h3>Meal 1: Breakfast</h3>\n");
      out.write("                <p>Option 1: Scrambled eggs with avocado and whole-grain toast</p>\n");
      out.write("                <p>Option 2: Greek yogurt with granola and mixed berries</p>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"service-item\">\n");
      out.write("                <h3>Meal 2: Snack</h3>\n");
      out.write("                <p>Option 1: Almond butter on whole-grain crackers</p>\n");
      out.write("                <p>Option 2: Trail mix with nuts and dried fruits</p>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"service-item\">\n");
      out.write("                <h3>Meal 3: Lunch</h3>\n");
      out.write("                <p>Option 1: Grilled chicken or tofu with quinoa and roasted vegetables</p>\n");
      out.write("                <p>Option 2: Lentil soup with whole-grain roll</p>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"service-item\">\n");
      out.write("                <h3>Meal 4: Snack</h3>\n");
      out.write("                <p>Option 1: Cottage cheese with pineapple chunks</p>\n");
      out.write("                <p>Option 2: Banana with peanut butter</p>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"service-item\">\n");
      out.write("                <h3>Meal 5: Dinner</h3>\n");
      out.write("                <p>Option 1: Salmon with sweet potato and steamed broccoli</p>\n");
      out.write("                <p>Option 2: Beef stir-fry with brown rice and mixed vegetables</p>\n");
      out.write("            </div>\n");
      out.write("            <!-- Add more meal options or details as needed -->\n");
      out.write("        </div>\n");
      out.write("    </section>\n");
      out.write("\n");
      out.write("    <!-- Your other sections (if any) -->\n");
      out.write("    <!-- ... -->\n");
      out.write("\n");
      out.write("    <!-- Your footer and script tags -->\n");
      out.write("    <!-- ... -->\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
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
