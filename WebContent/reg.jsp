<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>
<%@ page import="layout.*" %> 

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
                            <li><a href="index.jsp">Home</a></li>
                            <li><a href="gallery.jsp">Gallery</a></li>
                            <li class="active"><a href="reg.jsp">Sign Up</a></li>
                            <li><a href="log.jsp">Login</a></li>
                            <li><a href="about.jsp">About</a></li>
                            </ul>
                            </div>
                    </div>
                    </div>

                </div>
            </div>
            
<div id="signup"  class="container spacer about">
	<div class="row">
	<div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
		<form action="" method="post">
			<br>
			<h2 align="center">Welcome to the Wedding Planner Portal!!</h2>
			<h2 align="center">
                	<div class="form-group">
                		<input type="text" name="groom_name" id="groom_name" class="form-control input-lg" placeholder="Groom Name" tabindex="1" required="required">
                	</div>
                	
                
                	
                    <div class="form-group">
                    	<input type="text" name="bride_name" id="bride_name" class="form-control input-lg" placeholder="Bride Name" tabindex="2" required="required" >
                    </div>
                    
                
                                 
                <fieldset>
                	<div class="form-group">
                    	<input type="text" name="contact_person" id="contact_person" class="form-control input-lg" placeholder="Primary Contact Person" tabindex="3" required="required">
                    </div>
                </fieldset>
                                 
                <fieldset>
                    <div class="form-group">
                        <input type="text" name="user_name" id="user_name" class="form-control input-lg" placeholder="Username" tabindex="4" required="required">
                   	</div>
                    <span id="result"></span>
                </fieldset>
                                    
                <div class="form-group">
                	<input type="password" name="password" id="password" class="form-control input-lg" placeholder="Password" tabindex="5" required="required">
               	</div>
                            
                <div class="form-group">
                    <input type="email" name="email" id="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" class="form-control input-lg" placeholder="Email Address" tabindex="6" required="required">
                </div>
                            
                <fieldset>
                	<div class="form-group">
						<input type="text" name="w_date" id="w_date" class="form-control input-lg" placeholder="Wedding Date (dd/mm/yyyy)" tabindex="7" required="required"/>
					</div>
				</fieldset>
                            
                <hr class="colorgraph">
                <div class="row">
                
                
                <div class="col-xs-6 col-sm-6 col-md-6"> <div class="form-group"><input type="submit" name="register" value="Create User" class="btn btn-primary btn-block" tabindex="9"></div>
                </div>
                  
                  	<div class="col-xs-12 col-sm-6 col-md-6"><div class="form-group"><input name="register" value="Sign in" class="btn btn-primary btn-block" onclick="document.location.href='log.jsp';" tabindex="10"></div>
                    </div>
                </div>                              
   <%
   
Register reg = new Register();
Boolean success = reg.filldetails(request);
if (success) { 
	           response.sendRedirect("welcome.jsp");
             
              }
            
	  
	//}
%>                         

		</form>
	</div>
	</div>
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