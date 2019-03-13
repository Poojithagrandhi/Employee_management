<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="main.connects" %>
<!DOCTYPE html>
<!--[if lt IE 7]><html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]><html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"><![endif]-->
    <title>Pine World</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width">
    <link rel="icon" href="../images/favicon.jpg" type="image/gif" sizes="16x16">
    <!-- 
    Circle Template 
    http://www.templatemo.com/preview/templatemo_410_circle 
    -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet">

    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/normalize.min.css">
    <link rel="stylesheet" href="../css/font-awesome.min.css">
    <link rel="stylesheet" href="../css/animate.css">
    <link rel="stylesheet" href="../css/templatemo_misc.css">
    <link rel="stylesheet" href="../css/templatemo_style.css">

    <script src="../js/vendor/modernizr-2.6.2.min.js"></script>
	<!-- templatemo 410 circle -->
</head>
<body>

    
    <div class="bg-overlay"></div>

    <div class="container-fluid">
        <div class="row">
            
            <div class="col-md-4 col-sm-12">
                <div class="sidebar-menu">
                    
                    <div class="logo-wrapper">
                        <h1 class="logo">
                            <a href="#"><img src="../images/logo.jpg" alt="Circle Template">
                            <span>DREAM ON CODING</span></a>
                        </h1>
                    </div> <!-- /.logo-wrapper -->
                    
                    <div class="menu-wrapper">
                        <ul class="menu">
                            <li><a href="home.jsp">Home</a></li>
                            <li><a href="#">APPLY</a></li>
                            <li><a href="user1.jsp">LOGIN</a></li>
                            <li><a href="about.jsp">About</a></li>
                        </ul>  
                        <a href="#" class="toggle-menu"><i class="fa fa-bars"></i></a>
                    </div> 

                </div> <!-- /.sidebar-menu -->
            </div> <!-- /.col-md-4 -->
            <div class="col-md-8 col-sm-12">
                
                <div id="menu-container">

             
                        <div class="row">
                                    <div class="col-md-6 ">
                                        <div class="toggle-content text-center" id="tab1">
                                            <div class="card-header  bg-warning" ><font size="5">APPLY HERE</font></div>
        <div class="card-body">
            <table>
                <form action="" method="post" onsubmit="return show()" enctype="multipart/form-data">
            
                  <div class="form-group">
                <tr >
                    <th>Name</th>
                    <td> <input type="text" class="form-control" name="name"  required="required"/></td></tr>
            </div>                 
                <div class="form-group">
                <tr >
                    <th>Email Id</th>
                    <td> <input type="text" class="form-control" name="em"  required="required"/></td></tr>
            </div>
            <div class="form-group">
                <tr>
                    <th>Phone</th>
                    <td><input type="text" class="form-control" name="ph"  required="required"/></td></tr>
            </div>
            <div class="form-group">
                <tr>
                    <th>Address</th>
                    <td><input type="text" class="form-control" name="addr"  required="required"/></td></tr>
            </div>
                <div class="form-group">
                <tr >
                    <th>Qualification</th>
                    <td> <input type="text" class="form-control" name="qlf"  required="required"/></td></tr>
            </div>
                     <div class="form-group">
                <tr >
                    <th>Post</th>
                    <td>
                        <select name="post">
                            <option >.....</option>
                            <option value="web-developer">Web-Developer</option>
                            <option value="programmer">Programmer</option>
                            <option value="debugger">Debugger</option>
                            <option value="network-architect">Network-Architect</option>
                            <option value="system-analyst">System-Analyst</option>
                            <option value="dba">Database Administrator</option>
                        </select>
                    </td>
                </tr>
            </div>
                <div class="form-group">
                <tr >
                    <th>Resume</th>
                    <td> <input type="file" class="form-control" name="res" required="required"/></td></tr>
            </div>
                
           <div class="form-group">
                    <tr style="column-span: 2;padding-left: 50px">
                        <td>
                            <input type="submit" value="APPLY" class="btn btn-primary btn-block"/>
                        </td>
                    </tr>
                </div>
            </form>
            </table>
            <%
                if("post".equalsIgnoreCase(request.getMethod()))
            {
                ServletContext sc=getServletContext();
                
                String dir=sc.getRealPath("\\");
                
                MultipartRequest mr=new MultipartRequest(request, dir, 100*1024*1024); //20MB
                
                String fileName=mr.getFilesystemName("res");
                
                String filePath=dir+fileName;
                
                File f=new File(filePath);
                
                FileInputStream fis=new FileInputStream(f);
                
                int len=fis.available();
                //String fileType=sc.getMimeType(fileName);
                String name=mr.getParameter("name");
                String em=mr.getParameter("em");
                String ph=mr.getParameter("ph");
                String qlf=mr.getParameter("qlf");
                String post=mr.getParameter("post");
                String addr=mr.getParameter("addr");
                
                connects co=new connects();
                Connection con=co.con();
                PreparedStatement ps=con.prepareStatement("insert into student(name,email,phone,address,qualification,post,fileName,fileData) values(?,?,?,?,?,?,?,?)");
                ps.setString(1, name);
                ps.setString(2, em);
                ps.setString(3, ph);
                ps.setString(4, addr);
                ps.setString(5, qlf);
                ps.setString(6, post);
                ps.setString(7, fileName);
                ps.setBinaryStream(8, fis, len);
                int x=ps.executeUpdate();
                if(x==0){
                    %>
                    <div class="alert alert-danger">
                        <strong>FAILED TO APPLY</strong>
                    </div>
                    <%
                }
                else
                {
                    %>
                    <div class="alert alert-success">
                        <strong>SUCCESSFULLY APPLIED</strong>
                    </div>
                    <%
                }
            }
                %>
        </div>
      </div>
                                    

                        </div> <!-- /.row -->
                    </div> <!-- /.about -->
 <!-- /.col-md-12 -->

                    
    <div class="container-fluid">   
        <div class="row">
            <div class="col-md-12 footer">
                <p id="footer-text">
                
                	Copyright &copy; 2084 <a href="#">Company Name</a>
                 	
                    | design: templatemo
                 
                 </p>
            </div><!-- /.footer --> 
        </div>
    </div> <!-- /.container-fluid -->

    <script src="../js/vendor/jquery-1.10.1.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.10.1.min.js"><\/script>')</script>
    <script src="../js/jquery.easing-1.3.js"></script>
    <script src="../js/bootstrap.js"></script>
    <script src="../js/plugins.js"></script>
    <script src="../js/main.js"></script>
    <script type="text/javascript">
            
			jQuery(function ($) {

                $.supersized({

                    // Functionality
                    slide_interval: 3000, // Length between transitions
                    transition: 1, // 0-None, 1-Fade, 2-Slide Top, 3-Slide Right, 4-Slide Bottom, 5-Slide Left, 6-Carousel Right, 7-Carousel Left
                    transition_speed: 700, // Speed of transition

                    // Components                           
                    slide_links: 'blank', // Individual links for each slide (Options: false, 'num', 'name', 'blank')
                    slides: [ // Slideshow Images
                        {
                            image: '../images/1 .jpg'
                        }, {
                            image: '../images/2.jpg'
                        }, {
                            image: '../images/3.jpg'
                        }, {
                            image: '../images/4.jpg'
                        }
                    ]

                });
            });
            
    </script>
    
    	<!-- Google Map -->
        <script src="http://maps.google.com/maps/api/js?sensor=true"></script>
        <script src="../js/vendor/jquery.gmap3.min.js"></script>
        <!-- Google Map Init-->
        <script type="text/javascript">
           function templatemo_map() {
                $('.google-map').gmap3({
                    marker:{
                        address: '16.8496189,96.1288854' 
                    },
                        map:{
                        options:{
                        zoom: 15,
                        scrollwheel: false,
                        streetViewControl : true
                        }
                    }
                });
            }
        </script>
</body>
</html>