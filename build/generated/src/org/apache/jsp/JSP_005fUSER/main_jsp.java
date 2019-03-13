package org.apache.jsp.JSP_005fUSER;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.Connection;
import main.connects;

public final class main_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("  <head>\n");
      out.write("\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("    <meta name=\"author\" content=\"\">\n");
      out.write("<link rel=\"icon\" href=\"../images/favicon.jpg\" type=\"image/gif\" sizes=\"16x16\">\n");
      out.write("    <title>PINE WORLD</title>\n");
      out.write("\n");
      out.write("    <!-- Bootstrap core CSS-->\n");
      out.write("    <link href=\"../vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"../css/bootstrap-rtl.min.css\" rel=\"stylesheet\">\n");
      out.write("    <!-- Custom fonts for this template-->\n");
      out.write("    <link href=\"../vendor/fontawesome-free/css/all.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("\n");
      out.write("    <!-- Page level plugin CSS-->\n");
      out.write("    <link href=\"../vendor/datatables/dataTables.bootstrap4.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- Custom styles for this template-->\n");
      out.write("    <link href=\"../css/sb-admin.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("  </head>\n");
      out.write("\n");
      out.write("  <body id=\"page-top\">\n");
      out.write("\n");
      out.write("    <nav class=\"navbar navbar-expand navbar-dark bg-dark static-top\">\n");
      out.write("\n");
      out.write("      <a class=\"navbar-brand mr-1\" href=\"index.html\">STUDENT PAGE</a>\n");
      out.write("\n");
      out.write("      <button class=\"btn btn-link btn-sm text-white order-1 order-sm-0\" id=\"sidebarToggle\" href=\"#\">\n");
      out.write("        <i class=\"fas fa-bars\"></i>\n");
      out.write("      </button>\n");
      out.write("\n");
      out.write("      <!-- Navbar Search -->\n");
      out.write("      <form class=\"d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0\">\n");
      out.write("        <div class=\"input-group\">\n");
      out.write("          </div>\n");
      out.write("      </form>\n");
      out.write("\n");
      out.write("      <!-- Navbar -->\n");
      out.write("      <ul class=\"navbar-nav ml-auto ml-md-0\">\n");
      out.write("        <li class=\"nav-item dropdown no-arrow\">\n");
      out.write("          <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"userDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("            <i class=\"fas fa-user-circle fa-fw\"></i>\n");
      out.write("          </a>\n");
      out.write("          <div class=\"dropdown-menu dropdown-menu-right\" aria-labelledby=\"userDropdown\">\n");
      out.write("       \n");
      out.write("           \n");
      out.write("            <a class=\"dropdown-item\" href=\"logout.jsp\" >Logout</a>\n");
      out.write("          </div>\n");
      out.write("        </li>\n");
      out.write("      </ul>\n");
      out.write("\n");
      out.write("    </nav>\n");
      out.write("\n");
      out.write("    <div id=\"wrapper\">\n");
      out.write("\n");
      out.write("      <!-- Sidebar -->\n");
      out.write("      <ul class=\"sidebar navbar-nav side-nav\">\n");
      out.write("        \n");
      out.write("      </ul>\n");
      out.write("\n");
      out.write("      <div id=\"content-wrapper\">\n");
      out.write("\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("   <div class=\"card-header\">QUIZ</div>\n");
      out.write("        <div class=\"card-body\">\n");
      out.write("          <!-- Breadcrumbs-->\n");
      out.write("          \n");
      out.write("          <form action=\"\" method=\"post\">\n");
      out.write("              ");

                  response.setHeader("Cache-Control", "no-cache");
                  response.setHeader("Cache-Control", "no-store");
                  response.setHeader("Pragma", "no-cache");
                  response.setDateHeader("Expires", 0);
                  String email=(String)session.getAttribute("em");
                  
      out.write("\n");
      out.write("              \n");
      out.write("              <div class=\"container\">\n");
      out.write("      <div class=\"col-md-6 \">\n");
      out.write("        <div class=\"card-header bg-warning\">STUDENT</div>\n");
      out.write("        <div class=\"card-body\">\n");
      out.write("            <table>\n");
      out.write("            <form action=\"\" method=\"post\">\n");
      out.write("            \n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                <tr>\n");
      out.write("                    <th>Name</th>\n");
      out.write("                    <td><input type=\"text\" class=\"form-control\" name=\"name\"  /></td></tr>\n");
      out.write("            </div>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                \n");
      out.write("                    <tr>  <td><input type=\"submit\" value=\"TAKE TEST\" class=\"btn btn-primary btn-block\"/></td></tr>\n");
      out.write("                        \n");
      out.write("                 \n");
      out.write("                </div>\n");
      out.write("            </form>\n");
      out.write("            </table>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("                    ");

                        if(request.getMethod().equalsIgnoreCase("post"))
                        {
                            connects co=new connects();
                            Connection con=co.con();
                            String nam=request.getParameter("name");
                            for(int j=1;j<=10;j++)
                            {
                                PreparedStatement ps=con.prepareStatement("insert into quiz_attempt(name,qno) values(?,?) ");
                                ps.setString(1, email);
                                ps.setInt(2, j);
                                ps.executeUpdate();
                            }
                            response.sendRedirect("one.jsp");
                        }
                        
      out.write("\n");
      out.write("                     \n");
      out.write("          \n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!-- /.container-fluid -->\n");
      out.write("\n");
      out.write("        <!-- Sticky Footer -->\n");
      out.write("        <footer class=\"sticky-footer\">\n");
      out.write("          <div class=\"container my-auto\">\n");
      out.write("            <div class=\"copyright text-center my-auto\">\n");
      out.write("              <span>Copyright © PINE WORLD</span>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </footer>\n");
      out.write("\n");
      out.write("      </div>\n");
      out.write("      <!-- /.content-wrapper -->\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("    <!-- /#wrapper -->\n");
      out.write("\n");
      out.write("    <!-- Scroll to Top Button-->\n");
      out.write("    <a class=\"scroll-to-top rounded\" href=\"#page-top\">\n");
      out.write("      <i class=\"fas fa-angle-up\"></i>\n");
      out.write("    </a>\n");
      out.write("\n");
      out.write("    <!-- Logout Modal-->\n");
      out.write("    <div class=\"modal fade\" id=\"logoutModal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">\n");
      out.write("      <div class=\"modal-dialog\" role=\"document\">\n");
      out.write("        <div class=\"modal-content\">\n");
      out.write("          <div class=\"modal-header\">\n");
      out.write("            <h5 class=\"modal-title\" id=\"exampleModalLabel\">Ready to Leave?</h5>\n");
      out.write("            <button class=\"close\" type=\"button\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("              <span aria-hidden=\"true\">×</span>\n");
      out.write("            </button>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"modal-body\">Select \"Logout\" below if you are ready to end your current session.</div>\n");
      out.write("          <div class=\"modal-footer\">\n");
      out.write("            <button class=\"btn btn-secondary\" type=\"button\" data-dismiss=\"modal\">Cancel</button>\n");
      out.write("            <a class=\"btn btn-primary\" href=\"logout.jsp\">Logout</a>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <!-- Bootstrap core JavaScript-->\n");
      out.write("    <script src=\"../vendor/jquery/jquery.min.js\"></script>\n");
      out.write("    <script src=\"../vendor/bootstrap/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- Core plugin JavaScript-->\n");
      out.write("    <script src=\"../vendor/jquery-easing/jquery.easing.min.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- Page level plugin JavaScript-->\n");
      out.write("    <script src=\"../vendor/chart.js/Chart.min.js\"></script>\n");
      out.write("    <script src=\"../vendor/datatables/jquery.dataTables.js\"></script>\n");
      out.write("    <script src=\"../vendor/datatables/dataTables.bootstrap4.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- Custom scripts for all pages-->\n");
      out.write("    <script src=\"../js/sb-admin.min.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- Demo scripts for this page-->\n");
      out.write("    <script src=\"../js/demo/datatables-demo.js\"></script>\n");
      out.write("    <script src=\"../js/demo/chart-area-demo.js\"></script>\n");
      out.write("\n");
      out.write("  </body>\n");
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
