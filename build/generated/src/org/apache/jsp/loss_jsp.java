package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class loss_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>Weight Loss Diet Plan - Fitness-Hub</title>\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\"\n");
      out.write("        integrity=\"sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("    <style>\n");
      out.write("        /* Add your existing styles here */\n");
      out.write("\n");
      out.write("        /* Weight Loss Diet Plan Styles */\n");
      out.write("        .services {\n");
      out.write("            text-align: center;\n");
      out.write("            padding: 50px 0;\n");
      out.write("            background-color: #f5f5f5;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .services h2 {\n");
      out.write("            color: #333;\n");
      out.write("            margin-bottom: 30px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .service-cards {\n");
      out.write("            display: flex;\n");
      out.write("            justify-content: center;\n");
      out.write("            align-items: center;\n");
      out.write("            flex-wrap: wrap;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .service-item {\n");
      out.write("            width: 300px;\n");
      out.write("            margin: 20px;\n");
      out.write("            padding: 20px;\n");
      out.write("            background-color: #fff;\n");
      out.write("            border-radius: 5px;\n");
      out.write("            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .service-item h3 {\n");
      out.write("            color: #333;\n");
      out.write("            margin-bottom: 10px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .service-item p {\n");
      out.write("            color: #666;\n");
      out.write("            line-height: 1.6;\n");
      out.write("        }\n");
      out.write("    </style>\n");
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
      out.write("    <!-- Weight Loss Vegetarian Diet Plan -->\n");
      out.write("    <section class=\"services\">\n");
      out.write("        <h2>Weight Loss Vegetarian Diet Plan</h2>\n");
      out.write("        <div class=\"service-cards\">\n");
      out.write("            <div class=\"service-item\">\n");
      out.write("                <h3>Meal 1: Breakfast</h3>\n");
      out.write("                <p>Option 1: Green smoothie with spinach, banana, and almond milk</p>\n");
      out.write("                <p>Option 2: Oatmeal with fresh berries and a sprinkle of chia seeds</p>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"service-item\">\n");
      out.write("                <h3>Meal 2: Snack</h3>\n");
      out.write("                <p>Option 1: Greek yogurt with sliced cucumber and cherry tomatoes</p>\n");
      out.write("                <p>Option 2: Apple slices with a tablespoon of almond butter</p>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"service-item\">\n");
      out.write("                <h3>Meal 3: Lunch</h3>\n");
      out.write("                <p>Option 1: Grilled vegetable salad with quinoa</p>\n");
      out.write("                <p>Option 2: Lentil soup with a side of mixed greens</p>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"service-item\">\n");
      out.write("                <h3>Meal 4: Snack</h3>\n");
      out.write("                <p>Option 1: Carrot and celery sticks with hummus</p>\n");
      out.write("                <p>Option 2: A handful of mixed nuts</p>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"service-item\">\n");
      out.write("                <h3>Meal 5: Dinner</h3>\n");
      out.write("                <p>Option 1: Baked sweet potato with roasted broccoli and tofu</p>\n");
      out.write("                <p>Option 2: Zucchini noodles with tomato and basil sauce</p>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"service-item\">\n");
      out.write("                <h3>Snack Before Bed</h3>\n");
      out.write("                <p>Option 1: Chamomile tea with a small serving of berries</p>\n");
      out.write("                <p>Option 2: Low-fat cottage cheese with pineapple</p>\n");
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
