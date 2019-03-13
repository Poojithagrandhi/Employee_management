
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="main.connects" %>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
<link rel="icon" href="../images/favicon.jpg" type="image/gif" sizes="16x16">
    <title>PINE WORLD</title>

    <!-- Bootstrap core CSS-->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/bootstrap-rtl.min.css" rel="stylesheet">
    <!-- Custom fonts for this template-->
    <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="../vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../css/sb-admin.css" rel="stylesheet">

  </head>

  <body id="page-top">

    <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

      <a class="navbar-brand mr-1" href="index.html">STUDENT PAGE</a>

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
      <ul class="sidebar navbar-nav side-nav">
        
      </ul>

      <div id="content-wrapper">

        <div class="container-fluid">
   <div class="card-header">QUIZ</div>
        <div class="card-body">
          <!-- Breadcrumbs-->
          
          <form action="" method="post">
              <%
                  response.setHeader("Cache-Control", "no-cache");
                  response.setHeader("Cache-Control", "no-store");
                  response.setHeader("Pragma", "no-cache");
                  response.setDateHeader("Expires", 0);
                  %>
              
              <%! int a1,b1; %>
          <%      
                String email=(String)session.getAttribute("em");
               if(email==null)
               {
                   response.sendRedirect("home.jsp");
               }
   
                  connects co=new connects();
                Connection con=co.con();
                  PreparedStatement ps=con.prepareStatement("select * from quiz where id=61");
                  ResultSet rs=ps.executeQuery();
                  while(rs.next())
                  {
                      a1=Integer.parseInt(rs.getString("op"));
                      %>
                    
            
            <div class="form-group">
              <div class="form-label-group">
                    
                 <div><%= "7.)" %><%= rs.getString("question") %></div>
              </div>
            </div>
              <div>
                  <input type="radio" name='a' value="1"/><%= rs.getString("op1") %>
              </div>
              <div>
                  <input type="radio" name='a' value="2"/><%= rs.getString("op2") %>
              </div>
              <div>
                  <input type="radio" name='a' value="3"/><%= rs.getString("op3") %>
              </div>
              <div>
                  <input type="radio" name='a' value="4"/><%= rs.getString("op4") %>
              </div><br>
          
          <%
                  }
          %>
          <div>
              <input type="submit" value='NEXT' class="btn"/>
              </div>
               
          </div>

        </div>
                  </form>
          <%
                 if(request.getMethod().equalsIgnoreCase("post"))
                  {
                  b1=Integer.parseInt(request.getParameter("a"));
                  if(a1==b1)
                  {
                      PreparedStatement ps1=con.prepareStatement("update quiz_attempt set status=1 where qno=7 and name=?");
                      ps1.setString(1, email);
                      ps1.executeUpdate();
                  }
                  else
                  {
                       PreparedStatement ps1=con.prepareStatement("update quiz_attempt set status=0 where qno=7 and name=?");
                      ps1.setString(1, email);
                      ps1.executeUpdate();
                  }
                  response.sendRedirect("eight.jsp");
                  }
                  %>
        <!-- /.container-fluid -->
        <div style="margin-left: 200px;margin-top: 150px;">
            <button class="btn"><a href="one.jsp">1</a></button>
            <button class="btn"><a href="two.jsp">2</a></button>
            <button class="btn"><a href="three.jsp">3</a></button>
            <button class="btn"><a href="four.jsp">4</a></button>
            <button class="btn"><a href="five.jsp">5</a></button>
            <button class="btn"><a href="six.jsp">6</a></button>
            <button class="btn"><a href="seven.jsp">7</a></button>
            <button class="btn"><a href="eight.jsp">8</a></button>
            <button class="btn"><a href="nine.jsp">9</a></button>
            <button class="btn"><a href="ten.jsp">10</a></button>
        </div>
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
