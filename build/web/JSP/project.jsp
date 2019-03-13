<%@page import="main.connects"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
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

  <body id="page-top">
<%
                  response.setHeader("Cache-Control", "no-cache");
                  response.setHeader("Cache-Control", "no-store");
                  response.setHeader("Pragma", "no-cache");
                  response.setDateHeader("Expires", 0);
                 
                      String asl=(String)session.getAttribute("eml");
                
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
            <a class="dropdown-item" href="logout.jsp">Logout</a>
          </div>
        </li>
      </ul>

    </nav>

    <div id="wrapper">

      <!-- Sidebar -->
      <ul class="sidebar navbar-nav">
        <li class="nav-item active">
            <a class="nav-link" href="employee.jsp">
            <i class="fas fa-fw fa-user-circle-o"></i>
            <span>Dashboard</span>
          </a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-fw fa-user-astronaut"></i>
            <span>PAGES</span>
          </a>
          <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            
              <a class="dropdown-item" href="comments.jsp">Add Comments</a>
              <a class="dropdown-item" href="project.jsp">Assign Project</a>
             
          </div>
             
        
      </ul>

      <div id="content-wrapper">

        <div class="container-fluid">

          <!-- Breadcrumbs-->
          <ol class="breadcrumb">
            <li class="breadcrumb-item">
              <a href="#">Dashboard</a>
            </li>
            <li class="breadcrumb-item active">Project</li>
          </ol>

          <!-- Icon Cards-->
          <div class="container">
      <div class="col-md-6 ">
        <div class="card-header bg-warning">ASSIGN PROJECT</div>
        <div class="card-body">
            <table>
            <form action="" method="post">
            
                  <div class="form-group">
                <tr >
                    <th>Employee id</th>
                    <td> <input type="text" class="form-control" name="id"  required="required"/></td></tr>
            </div>                 

            <div class="form-group">
                <tr>
                    <th>Project Id</th>
                    <td><input type="text" class="form-control" name="pid"  required="required"/></td></tr>
            </div>
            <div class="form-group">
                <tr>
                    <th>Module No.</th>
                    <td><input type="text" class="form-control" name="mno"  required="required"/></td></tr>
            </div>
                <div class="form-group">
                <tr>
                    <th>Module Name</th>
                    <td><input type="text" class="form-control" name="mname"  required="required"/></td></tr>
            </div>
                <div class="form-group">
                    <tr style="column-span: 2;padding-left: 50px">
                        <td>
                            <input type="submit" value="ADD" class="btn btn-primary btn-block"/>
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
                        String mno=request.getParameter("mno");
                        String id=request.getParameter("id");
                        String pid=request.getParameter("pid");
                        String mname=request.getParameter("mname");
                        connects co=new connects();
                                            Connection con=co.con();
                            PreparedStatement ps1=con.prepareStatement("insert into proj_assignment(empid,pid,mod_no,module) values(?,?,?,?)");
                            ps1.setString(1, id);
                            ps1.setString(2, pid);
                            ps1.setString(3, mno);
                            ps1.setString(4, mname);
                            int a=ps1.executeUpdate();
                            if(a==0)
                            {
                                %>
                                <div class="alert alert-danger">
                                    <strong>Failed to assign project </strong>
                                </div>
                                <%
                            }
                            else
                            {
                                %>
                                <div class="alert alert-success">
                                    <strong>Successfully assigned project</strong>
                                </div>
                                <%
                            }
                        }
                        
                        %>
                     
          
        </div>

          <!-- Area Chart Example-->
         
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
