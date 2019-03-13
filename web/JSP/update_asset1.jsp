<%@page import="main.connects"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>PINE WORLD .....ADMIN</title>
<link rel="icon" href="../images/favicon.jpg" type="image/gif" sizes="16x16">
    <!-- Bootstrap core CSS-->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="../vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../css/sb-admin.css" rel="stylesheet">

  </head>

  <body id="page-top" >
<%
                  response.setHeader("Cache-Control", "no-cache");
                  response.setHeader("Cache-Control", "no-store");
                  response.setHeader("Pragma", "no-cache");
                  response.setDateHeader("Expires", 0);
                 
                      String asl=(String)session.getAttribute("asl");
                
                      if(asl==null)
                      {
                          response.sendRedirect("../index.jsp");
                      }
                      %>
    <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

      <a class="navbar-brand mr-1" href="index.html">ADMIN PAGE</a>

      <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
        <i class="fas fa-bars"></i>
      </button>

      <!-- Navbar Search -->
      <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
        <div class="input-group">
          </div>
      </form>

      <!-- Navbar -->
      <ul class="navbar-nav ml-auto ml-md-0">
        <li class="nav-item dropdown no-arrow">
          <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-user-circle fa-fw"></i>
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
            <a class="dropdown-item" href="logout.jsp" >Logout</a>
          </div>
        </li>
      </ul>

    </nav>

    <div id="wrapper">

      <!-- Sidebar -->
      
      <ul class="sidebar navbar-nav">
        <li class="nav-item active">
            <a class="nav-link" href="asset_admin.jsp">
            <i class="fas fa-fw fa-user-circle-o"></i>
            <span>Dashboard</span>
          </a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-fw fa-accessible-icon"></i>
            <span>Pages</span>
          </a>
          <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            
            <a class="dropdown-item" href="add_asset1.jsp">ADD ASSET</a>
            <a class="dropdown-item" href="asset_table1.jsp">VIEW ASSET</a>
          </div>
        </li>
        
              </ul>
      <div id="content-wrapper">

        <div class="container-fluid">

          <!-- Breadcrumbs-->
          <ol class="breadcrumb">
            <li class="breadcrumb-item">
              <a href="#">Dashboard</a>
            </li>
            <li class="breadcrumb-item active">Update Asset</li>
          </ol>

          <!-- Icon Cards-->
          <div class="row">
            
          </div>

          
                <div class="container">
      <div class="col-md-6 ">
        <div class="card-header bg-warning">UPDATE ASSET</div>
        <div class="card-body">
            <table>
            <form action="" method="post">
            <div class="form-group">
                <tr >
                    <th>Employee Id</th>
                    <td> <input type="text" class="form-control" name="id"  required="required" value="<%= request.getParameter("b") %>"/></td></tr>
            </div>
            <div class="form-group">
                <tr>
                    <th>Model</th>
                    <td><input type="text" class="form-control" name="model"  required="required" value="<%= request.getParameter("c") %>"/></td></tr>
            </div>
            <div class="form-group">
                <tr>
                    <th>Asset Id</th>
                    <td><input type="text" class="form-control" name="aid"  required="required" value="<%= request.getParameter("d") %>"/></td></tr>
            </div>
            <div class="form-group">
                <tr>
                    <th>RAM</th>
                    <td><input type="text" class="form-control" name="ram" value="<%= request.getParameter("e") %>" /></td></tr>
            </div>
                <div class="form-group">
                <tr>
                    <th>ROM</th>
                    <td><input type="text" class="form-control" name="rom" value="<%= request.getParameter("f") %>" /></td></tr>
            </div>
                 <div class="form-group">
                <tr>
                    <th>Core</th>
                    <td><input type="text" class="form-control" name="core"  value="<%= request.getParameter("g") %>"/></td></tr>
            </div>
                <div class="form-group">
                <tr>
                    <th>Size</th>
                    <td><input type="text" class="form-control" name="size"  value="<%= request.getParameter("h") %>"/></td></tr>
            </div>
                <div class="form-group">
                    <tr style="column-span: 2;padding-left: 50px">
                        <td>
                            <input type="submit" value="UPDATE" class="btn btn-primary btn-block"/>
                        </td>
                    </tr>
                </div>
            </form>
            </table>
        </div>
      </div>
    </div>
                    <%
                        if(request.getMethod().equalsIgnoreCase("post"))
                        {
                        String id=request.getParameter("id");
                        String name=request.getParameter("name");
                        String model=request.getParameter("model");
                        String aid=request.getParameter("aid");
                        String ram=request.getParameter("ram");
                        String rom=request.getParameter("rom");
                        String core=request.getParameter("core");
                        String size=request.getParameter("size");
                        connects co=new connects();
                                            Connection con=co.con();
                        
                            PreparedStatement ps2=con.prepareStatement("update asset_desc set number=?,name=?,model=?,ram=?,rom=?,core=?,size=? where id=?");
                            ps2.setString(1, aid);
                            ps2.setString(2, name);
                            ps2.setString(3, model);
                            ps2.setString(4, ram);
                            ps2.setString(5, rom);
                            ps2.setString(6, core);
                            ps2.setString(7, size);
                            ps2.setInt(8, Integer.parseInt(request.getParameter("a")));
                            int b=ps2.executeUpdate();
                            
                            if(b==0)
                            {
                                %>
                                <div class="alert alert-danger">
                                    <strong>Failed to updated asset details</strong>
                                </div>
                                <%
                            }
                            else
                            {
                                %>
                                <div class="alert alert-success">
                                    <strong>Successfully updated asset details</strong>
                                </div>
                                <%
                            }
                        }
                        %>
                     
          
        </div>
        <!-- /.container-fluid -->

        <!-- Sticky Footer -->
        <footer class="sticky-footer">
          <div class="container my-auto">
            <div class="copyright text-center my-auto">
              <span>Copyright © PINE WORLD</span>
            </div>
          </div>
        </footer>

      </div>
      <!-- /.content-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->


    <!-- Bootstrap core JavaScript-->
    <script src="../vendor/jquery/jquery.min.js"></script>
    <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Page level plugin JavaScript-->
    <script src="../vendor/chart.js/Chart.min.js"></script>
    <script src="../vendor/datatables/jquery.dataTables.js"></script>
    <script src="../vendor/datatables/dataTables.bootstrap4.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../js/sb-admin.min.js"></script>

    <!-- Demo scripts for this page-->
    <script src="../js/demo/datatables-demo.js"></script>
    <script src="../js/demo/chart-area-demo.js"></script>

  </body>

</html>
