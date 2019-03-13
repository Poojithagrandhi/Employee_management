package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.Connection;

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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!--[if lt IE 7]><html class=\"no-js lt-ie9 lt-ie8 lt-ie7\"> <![endif]-->\n");
      out.write("<!--[if IE 7]><html class=\"no-js lt-ie9 lt-ie8\"> <![endif]-->\n");
      out.write("<!--[if IE 8]><html class=\"no-js lt-ie9\"> <![endif]-->\n");
      out.write("<!--[if gt IE 8]><!--> <html class=\"no-js\"> <!--<![endif]-->\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <!--[if IE]><meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\"><![endif]-->\n");
      out.write("    <title>Pine World</title>\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width\">\n");
      out.write("    <link rel=\"icon\" href=\"images/favicon.jpg\" type=\"image/gif\" sizes=\"16x16\">\n");
      out.write("    <!-- \n");
      out.write("    Circle Template \n");
      out.write("    http://www.templatemo.com/preview/templatemo_410_circle \n");
      out.write("    -->\n");
      out.write("    <link href=\"http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/normalize.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/font-awesome.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/animate.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/templatemo_misc.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/templatemo_style.css\">\n");
      out.write("\n");
      out.write("    <script src=\"js/vendor/modernizr-2.6.2.min.js\"></script>\n");
      out.write("\t<!-- templatemo 410 circle -->\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("    \n");
      out.write("    <div class=\"bg-overlay\"></div>\n");
      out.write("\n");
      out.write("    <div class=\"container-fluid\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("            \n");
      out.write("            <div class=\"col-md-4 col-sm-12\">\n");
      out.write("                <div class=\"sidebar-menu\">\n");
      out.write("                    \n");
      out.write("                    <div class=\"logo-wrapper\">\n");
      out.write("                        <h1 class=\"logo\">\n");
      out.write("                            <a href=\"#\"><img src=\"images/logo.jpg\" alt=\"Circle Template\">\n");
      out.write("                            <span>DREAM ON CODING</span></a>\n");
      out.write("                        </h1>\n");
      out.write("                    </div> <!-- /.logo-wrapper -->\n");
      out.write("                    \n");
      out.write("                    <div class=\"menu-wrapper\">\n");
      out.write("                        <ul class=\"menu\">\n");
      out.write("                            <li><a  href=\"#\">Home</a></li>\n");
      out.write("                            <li><a  href=\"admin.jsp\">ADMIN</a></li>\n");
      out.write("                            <li><a  href=\"hr.jsp\">HR</a></li>\n");
      out.write("                            <li><a  href=\"asset.jsp\">ASSET</a></li>\n");
      out.write("                            <li><a  href=\"emp.jsp\">EMPLOYEE</a></li>\n");
      out.write("                            <li><a  href=\"about.jsp\">About</a></li>\n");
      out.write("                        </ul>  \n");
      out.write("                        <a href=\"#\" class=\"toggle-menu\"><i class=\"fa fa-bars\"></i></a>\n");
      out.write("                    </div> \n");
      out.write("\n");
      out.write("                </div> <!-- /.sidebar-menu -->\n");
      out.write("            </div> <!-- /.col-md-4 -->\n");
      out.write("             <!-- /.col-md-8 -->\n");
      out.write("\n");
      out.write("        </div> <!-- /.row -->\n");
      out.write("    </div> <!-- /.container-fluid -->\n");
      out.write("    \n");
      out.write("    <div class=\"container-fluid\">   \n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-md-12 footer\">\n");
      out.write("                <p id=\"footer-text\">\n");
      out.write("                \n");
      out.write("                \tCopyright &copy; 2084 <a href=\"#\">Company Name</a>\n");
      out.write("                 \t\n");
      out.write("                    | design: templatemo\n");
      out.write("                 \n");
      out.write("                 </p>\n");
      out.write("            </div><!-- /.footer --> \n");
      out.write("        </div>\n");
      out.write("    </div> <!-- /.container-fluid -->\n");
      out.write("\n");
      out.write("    <script src=\"js/vendor/jquery-1.10.1.min.js\"></script>\n");
      out.write("    <script>window.jQuery || document.write('<script src=\"js/vendor/jquery-1.10.1.min.js\"><\\/script>')</script>\n");
      out.write("    <script src=\"js/jquery.easing-1.3.js\"></script>\n");
      out.write("    <script src=\"js/bootstrap.js\"></script>\n");
      out.write("    <script src=\"js/plugins.js\"></script>\n");
      out.write("    <script src=\"js/main.js\"></script>\n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("            \n");
      out.write("\t\t\tjQuery(function ($) {\n");
      out.write("\n");
      out.write("                $.supersized({\n");
      out.write("\n");
      out.write("                    // Functionality\n");
      out.write("                    slide_interval: 3000, // Length between transitions\n");
      out.write("                    transition: 1, // 0-None, 1-Fade, 2-Slide Top, 3-Slide Right, 4-Slide Bottom, 5-Slide Left, 6-Carousel Right, 7-Carousel Left\n");
      out.write("                    transition_speed: 700, // Speed of transition\n");
      out.write("\n");
      out.write("                    // Components                           \n");
      out.write("                    slide_links: 'blank', // Individual links for each slide (Options: false, 'num', 'name', 'blank')\n");
      out.write("                    slides: [ // Slideshow Images\n");
      out.write("                        {\n");
      out.write("                            image: 'images/1 .jpg'\n");
      out.write("                        }, {\n");
      out.write("                            image: 'images/2.jpg'\n");
      out.write("                        }, {\n");
      out.write("                            image: 'images/3.jpg'\n");
      out.write("                        }, {\n");
      out.write("                            image: 'images/4.jpg'\n");
      out.write("                        }\n");
      out.write("                    ]\n");
      out.write("\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("            \n");
      out.write("    </script>\n");
      out.write("    \n");
      out.write("    \t<!-- Google Map -->\n");
      out.write("        <script src=\"http://maps.google.com/maps/api/js?sensor=true\"></script>\n");
      out.write("        <script src=\"js/vendor/jquery.gmap3.min.js\"></script>\n");
      out.write("        <!-- Google Map Init-->\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("           function templatemo_map() {\n");
      out.write("                $('.google-map').gmap3({\n");
      out.write("                    marker:{\n");
      out.write("                        address: '16.8496189,96.1288854' \n");
      out.write("                    },\n");
      out.write("                        map:{\n");
      out.write("                        options:{\n");
      out.write("                        zoom: 15,\n");
      out.write("                        scrollwheel: false,\n");
      out.write("                        streetViewControl : true\n");
      out.write("                        }\n");
      out.write("                    }\n");
      out.write("                });\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("</body>\n");
      out.write("</html>");
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
