
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
    <link rel="icon" href="images/favicon.jpg" type="image/gif" sizes="16x16">
    <!-- 
    Circle Template 
    http://www.templatemo.com/preview/templatemo_410_circle 
    -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/normalize.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/templatemo_misc.css">
    <link rel="stylesheet" href="css/templatemo_style.css">

    <script src="js/vendor/modernizr-2.6.2.min.js"></script>
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
                            <a href="#"><img src="images/logo.jpg" alt="Circle Template">
                            <span>DREAM ON CODING</span></a>
                        </h1>
                    </div> <!-- /.logo-wrapper -->
                    
                    <div class="menu-wrapper">
                        <ul class="menu">
                            <li><a href="index.jsp">Home</a></li>
                            <li><a href="admin.jsp">ADMIN</a></li>
                            <li><a href="hr.jsp">HR</a></li>
                            <li><a href="asset.jsp">ASSET</a></li>
                            <li><a href="emp.jsp">EMPLOYEE</a></li>
                            <li><a href="#">About</a></li>
                        </ul>  
                        <a href="#" class="toggle-menu"><i class="fa fa-bars"></i></a>
                    </div> 

                </div> <!-- /.sidebar-menu -->
            </div> <!-- /.col-md-4 -->
            <div class="col-md-8 col-sm-12">
                
                <div id="menu-container">

                   
                        <div class="row">
                            <ul class="tabs">
                                <li class="col-md-4 col-sm-4">
                                    <a href="#tab1" class="icon-item">
                                        <i class="fa fa-align-center"></i>
                                    </a> <!-- /.icon-item -->
                                </li>
                                <li class="col-md-4 col-sm-4">
                                    <a href="#tab2" class="icon-item">
                                        <i class="fa fa-camera-retro"></i>
                                    </a> <!-- /.icon-item -->
                                </li>
                                <li class="col-md-4 col-sm-4">
                                    <a href="#tab3" class="icon-item">
                                        <i class="fa fa-bitcoin"></i>
                                    </a> <!-- /.icon-item -->
                                </li>
                            </ul> <!-- /.tabs -->
                            
                            <div class="col-md-12 col-sm-12">
                                <div class="toggle-content text-center" id="tab1">
                                    <h3>Our History</h3>
                                    <p>Pine world is a company started to bring up the ideas given by young dreamers who want to code
                                        <br><br>
                                </div>

                                <div class="toggle-content text-center" id="tab2">
                                    <h3>What We Do</h3>
                                    <p>
                                        We encourage young minds to present their ideas and projects<br><br>Based on the submissions we decide our future employees...<br>
                                    </p>
                                </div>

                                <div class="toggle-content text-center" id="tab3">
                                    <h3>Our Dream</h3>
                                    <p>We want atleast 1000 new ideas from the brilliant minds every year...</p>
                                    </div>
                            </div> <!-- /.col-md-12 -->
                            
                        </div> <!-- /.row -->
                 <!-- /.contact -->

                </div> <!-- /#menu-container -->

            </div> <!-- /.col-md-8 -->

        </div> <!-- /.row -->
    </div> <!-- /.container-fluid -->
    
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

    <script src="js/vendor/jquery-1.10.1.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.10.1.min.js"><\/script>')</script>
    <script src="js/jquery.easing-1.3.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/main.js"></script>
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
                            image: 'images/1 .jpg'
                        }, {
                            image: 'images/2.jpg'
                        }, {
                            image: 'images/3.jpg'
                        }, {
                            image: 'images/4.jpg'
                        }
                    ]

                });
            });
            
    </script>
    
    	<!-- Google Map -->
        <script src="http://maps.google.com/maps/api/js?sensor=true"></script>
        <script src="js/vendor/jquery.gmap3.min.js"></script>
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