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
<link rel="icon" href="../images/favicon.jpg" type="image/gif" sizes="16x16">
    <title>PINE WORLD .....ADMIN</title>

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
                 
                      String hrl=(String)session.getAttribute("hrl");
                     
                      if(hrl==null)
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
            <a class="nav-link" href="hradmin.jsp">
            <i class="fas fa-fw fa-user-circle-o"></i>
            <span>Dashboard</span>
          </a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-fw fa-user-astronaut"></i>
            <span>STUDENT</span>
          </a>
          <div class="dropdown-menu" aria-labelledby="pagesDropdown">
              <a class="dropdown-item" href="round.jsp">Round-0</a>
              <a class="dropdown-item" href="round1.jsp">Round-1</a>
              <a class="dropdown-item" href="round2.jsp">Round-2</a>
              <a class="dropdown-item" href="round3.jsp">Round-3</a>
              <a class="dropdown-item" href="round4.jsp">Round-4</a>
              <a class="dropdown-item" href="round5.jsp">Round-5</a>
            
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-fw fa-user-tie"></i>
            <span>EMPLOYEE</span>
          </a>
          <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            
              <a class="dropdown-item" href="emp_det.jsp">View</a>
              <a class="dropdown-item" href="add_emp.jsp">Add</a>
            
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-fw fa-address-book"></i>
            <span>OTHERS</span>
          </a>
          <div class="dropdown-menu" aria-labelledby="pagesDropdown">
              
              <a class="dropdown-item" href="view_proj.jsp">Project Status</a>
             <a class="dropdown-item" href="view_proj2.jsp">Project</a>
            
            
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
            <li class="breadcrumb-item active">Employee</li>
          </ol>

          <!-- Icon Cards-->
          <div class="row">
            
          </div>

          <div class="card mb-3">
            <div class="card-header">
              <i class="fas fa-table"></i>
              Employee Details</div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <%
                        connects co=new connects();
                                            Connection con=co.con();
                        PreparedStatement ps=con.prepareStatement("select * from employee where post!='HR-Manager'");
                        ResultSet rs=ps.executeQuery();
                        %>
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>NAME</th>
                            <th>USERNAME</th>
                            <th>PASSWORD</th>
                            <th>PHONE</th>
                            <th>ADDRESS</th>
                            <th>DEPT. ID</th>
                        
                            <th>POST</th>
                            <th>SALARY</th>
                            <th>EDIT</th>
                            <th>DELETE</th>
                        </tr>
                        </thead>
                        <tbody>
                        <%
                        while(rs.next())
                        {
                            %>
                            <tr>
                                <td><%= rs.getString("empid") %></td>
                                <td><%= rs.getString("name") %></td>
                                <td><%= rs.getString("email") %></td>
                                <td><%= rs.getString("password") %></td>
                                <td><%= rs.getString("phone") %></td>
                                <td><%= rs.getString("address") %></td>
                                <td><%= rs.getString("deptid") %></td>
                              
                                <td><%= rs.getString("post") %></td>
                                <td><%= rs.getString("salary") %></td>
                                <td><a href="update_emp1.jsp?a=<%= rs.getString("id") %>&b=<%= rs.getString("empid") %>&c=<%= rs.getString("name") %>&d=<%= rs.getString("email") %>&e=<%= rs.getString("password") %>&f=<%= rs.getString("phone") %>&g=<%= rs.getString("address") %>&h=<%= rs.getString("deptid") %>&j=<%= rs.getString("post") %>"><img src="../images/edit.jpg" width="20px"/></a></td>
                                <td><a href="delete_emp1.jsp?a=<%= rs.getString("id") %>"><img src="../images/delete.jpg" width="20px"/></a></td>
                        </tr>
                            <%
                        }
                        %>
                        </tbody>
                        
                </table>
              </div>
            </div>
          
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
