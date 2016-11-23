<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 

<!DOCTYPE HTML>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Wedding Planning Portal</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">

    <link href="scripts/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="scripts/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Icons -->
    <link href="scripts/icons/general/stylesheets/general_foundicons.css" media="screen" rel="stylesheet" type="text/css" />  
    <link href="scripts/icons/social/stylesheets/social_foundicons.css" media="screen" rel="stylesheet" type="text/css" />
    <!--[if lt IE 8]>
        <link href="scripts/icons/general/stylesheets/general_foundicons_ie7.css" media="screen" rel="stylesheet" type="text/css" />
        <link href="scripts/icons/social/stylesheets/social_foundicons_ie7.css" media="screen" rel="stylesheet" type="text/css" />
    <![endif]-->
    <link rel="stylesheet" href="scripts/fontawesome/css/font-awesome.min.css">
    <!--[if IE 7]>
        <link rel="stylesheet" href="scripts/fontawesome/css/font-awesome-ie7.min.css">
    <![endif]-->

    <link href="scripts/carousel/style.css" rel="stylesheet" type="text/css" />
    <link href="scripts/camera/css/camera.css" rel="stylesheet" type="text/css" />

    <link href="http://fonts.googleapis.com/css?family=Syncopate" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Abel" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Pontano+Sans" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Oxygen" rel="stylesheet" type="text/css">

    <link href="styles/custom.css" rel="stylesheet" type="text/css" />
</head>
<body id="pageBody">

<div id="divBoxed" class="container">

    <div class="transparent-bg" style="position: absolute;top: 0;left: 0;width: 100%;height: 100%;z-index: -1;zoom: 1;"></div>

    <div class="divPanel notop nobottom">
            <div class="row-fluid">
                <div class="span12">

                    <div id="divLogo" class="pull-left">
                        <a href="index.html" id="divSiteTitle">Forever</a><br />
                        <a href="index.html" id="divTagLine">Your Wedding, Your Way!</a>
                    </div>

                    <div id="divMenuRight" class="pull-right">
                    <div class="navbar">
                        <button type="button" class="btn btn-navbar-highlight btn-large btn-primary" data-toggle="collapse" data-target=".nav-collapse">
                            NAVIGATION <span class="icon-chevron-down icon-white"></span>
                        </button>
                        <div class="nav-collapse collapse">
                            <ul class="nav nav-pills ddmenu">
                            <li class="active"><a href="index.jsp">Home</a></li>
                            <li><a href="gallery.jsp">Gallery</a></li>
                            <li><a href="reg.jsp">Sign Up</a></li>
                            <li><a href="log.jsp">Login</a></li>
                            <li><a href="about.jsp">About</a></li>
                            </ul>
                            </div>
                    </div>
                    </div>

                </div>
            </div>

            <div class="row-fluid">
            <div class="span12">

                <div id="headerSeparator"></div>

                <div class="camera_full_width">
                    <div id="camera_wrap">
                        <div data-src="slider-images/3.jpg" ><div class="camera_caption fadeFromBottom cap1">A Once In A Lifetime Memory</div></div>
						<div data-src="slider-images/1.jpg" ><div class="camera_caption fadeFromBottom cap2">That You Want It To Be Perfect</div></div>
						<div data-src="slider-images/2.jpg" ><div class="camera_caption fadeFromBottom cap2">...and Flawless</div></div>
                    </div>
                    <br style="clear:both"/><div style="margin-bottom:40px"></div>
                </div>               

                <div id="headerSeparator2"></div>

            </div>
        </div>
    </div>

    <div class="contentArea">

        <div class="divPanel notop page-content">
            

            <div class="row-fluid">
            <!--Edit Main Content Area here-->
                <div class="span12" id="divMain">
                    <h1>Welcome</h1>
                    				
					<p><strong>Congratulation for both of you for the upcoming big day!!!</strong> Our team here at Forever knows that planning a wedding can be a headache and tedious job.
					That's why will make this one big day to be perfect according to your plan and wish. </p>

                    <br />                   
                    <br />                 

	<div class="row-fluid">
    <div class="span3">
			<div class="box">
				<i class="icon-home"></i>
				<h4 class="title">Venue</h4> <hr/>
				<p>
					Choose from a list of venue that suit your needs. From ballroom, farmland, beachside, pool party, or 
					even countryside ranch, we have it all. Just choose the one that suits you best!
				</p>
			</div>
	</div> 
		
	<div class="span3">
			<div class="box">
				<i class="icon-music"></i>
				<h4 class="title">Performers</h4> <hr/>
				<p>
					Classical music, country music, orchestra, band, or whichever famous artists you love? 
					Make it happen by bringing them to your wedding. Feeling adventurous? Just go with the most famous 
					name that you heard of.
				</p>
			</div>
	</div> 
		
	<div class="span3">
			<div class="box">
				<i class="icon-beer"></i>
				<h4 class="title">Caterers</h4> <hr/>
				<p>
					What is your favorite food? Is it your hometown food? Choose from a list of caterers
					and make your wedding more memorable with the feast and fellowship/togetherness provided.
				</p>
			</div>
	</div> 
		
	<div class="span3">
			<div class="box">
				<i class="icon-envelope"></i>
				<h4 class="title">Invitation</h4> <hr/>
				<p>
					Sit back and relax. Once you have finish choosing all the services you need for your wedding,
					we will create you a fantastic invitation webpage for your guests. They'll not gonna say NO to
					that one.
				</p>
			</div>
	</div>    </div>
                      
                </div>
            <!--End Main Content-->
            </div>

            <div id="footerInnerSeparator"></div>
        </div>
    </div>

    <div id="footerOuterSeparator"></div>

    <div id="divFooter" class="footerArea">

        <div class="divPanel">

            <div class="row-fluid">
                <div class="span4" id="footerArea1">
                    <h3>About Company</h3>
                    <p>Forever is a wedding planning company, founded by four SJSU students, that focus on helping the soon to be husband and wife in preparing the big wedding day.</p>
                </div>
                
                <div class="span4" id="footerArea3">

                    <h3>Vision and Mission</h3> 
                    <p>Forever will always strive to provide an exceptional service and extraordinary program for every client. We provide a range of choices for
                    all the services within your wedding scope.</p>

                </div>
                <div class="span4" id="footerArea4">

                    <h3>Get in Touch</h3>  
                                                               
                    <ul id="contact-info">
                    <li>                                    
                        <i class="general foundicon-phone icon"></i>
                        <span class="field">Phone:</span>
                        <br />
                        (123) 456 7890                                                                     
                    </li>
                    <li>
                        <i class="general foundicon-mail icon"></i>
                        <span class="field">Email:</span>
                        <br />
                        <a title="Email">planyourwedding@forever.com</a>
                    </li>
                    <li>
                        <i class="general foundicon-home icon" style="margin-bottom:50px"></i>
                        <span class="field">Address:</span>
                        <br />
                        San Jose State University<br />
                        College of Engineering #ENGR337<br />
                        San Jose, CA 95112<br />
                    </li>
                    </ul>

                </div>
            </div>

            <div class="row-fluid">
                <div class="span12">
                    <p class="copyright">
                        Copyright © 2016 Forever. All Rights Reserved.
                    </p>
                </div>
            </div>

        </div>
    </div>
</div>
<br /><br />

<script src="scripts/jquery.min.js" type="text/javascript"></script> 
<script src="scripts/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="scripts/default.js" type="text/javascript"></script>


<script src="scripts/carousel/jquery.carouFredSel-6.2.0-packed.js" type="text/javascript"></script><script type="text/javascript">$('#list_photos').carouFredSel({ responsive: true, width: '100%', scroll: 2, items: {width: 320,visible: {min: 2, max: 6}} });</script><script src="scripts/camera/scripts/camera.min.js" type="text/javascript"></script>
<script src="scripts/easing/jquery.easing.1.3.js" type="text/javascript"></script>
<script type="text/javascript">function startCamera() {$('#camera_wrap').camera({ fx: 'scrollLeft', time: 2000, loader: 'none', playPause: false, navigation: true, height: '35%', pagination: true });}$(function(){startCamera()});</script>


</body>
</html>