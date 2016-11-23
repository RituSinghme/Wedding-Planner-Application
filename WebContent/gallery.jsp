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
                            <li><a href="index.jsp">Home</a></li>
                            <li class="active"><a href="gallery.jsp">Gallery</a></li>
                            <li><a href="reg.jsp">Sign Up</a></li>
                            <li><a href="log.jsp">Login</a></li>
                            <li><a href="about.jsp">About</a></li>
                            </ul>
                            </div>
                    </div>
                    </div>

                </div>
            </div>

<!--Edit gallery Content Area here-->			
            <div class="row-fluid">
                <div class="span12">
				
				<h1>Gallery</h1>
            <div class="yoxview">
                    <div class="row-fluid">
            <ul class="thumbnails">
              <li class="span3">
                <div class="thumbnail">
                  <a href="gallery/g1-display.jpg"><img src="gallery/g1.jpg" alt="Thumbnail Placeholder" title="Thumbnail Placeholder" /></a>
                  <div class="caption">
                    <h3>November 15, 2016</h3>
                    <p>Not sure how to display the picture yet....</p>
                    <p><a href="#" class="btn btn-primary">Read More...</a></p>
                  </div>
                </div>
              </li>
              <li class="span3">
                <div class="thumbnail">
                  <a href="gallery/g2.jpg"><img src="gallery/g2.jpg" alt="Thumbnail Placeholder" title="Thumbnail Placeholder"/></a>
                  <div class="caption">
                    <h3>November 7, 2016</h3>
                    <p>Not sure how to display the picture yet....</p>
                    <p><a href="#" class="btn btn-primary">Read More...</a></p>
                  </div>
                </div>
              </li>
              <li class="span3">
                <div class="thumbnail">
                  <a href="gallery/preview-300.png"><img src="gallery/300x200.png" alt="Thumbnail Placeholder" title="Thumbnail Placeholder"/></a>
                  <div class="caption">
                    <h3>November 7, 2016</h3>
                    <p>Not sure how to display the picture yet....</p>
                    <p><a href="#" class="btn btn-primary">Read More...</a></p>
                  </div>
                </div>
              </li>
			  <li class="span3">
                <div class="thumbnail">
                  <a href="gallery/preview-300.png"><img src="gallery/300x200.png" alt="Thumbnail Placeholder" title="Thumbnail Placeholder"/></a>
                  <div class="caption">
                    <h3>October 30, 2016</h3>
                    <p>Not sure how to display the picture yet....</p>
                    <p><a href="#" class="btn btn-primary">Read More...</a></p>
                  </div>
                </div>
              </li>
            </ul>
          </div>
		  <div class="row-fluid">
            <ul class="thumbnails">
              <li class="span3">
                <div class="thumbnail">
                  <a href="gallery/preview-300.png"><img src="gallery/300x200.png" alt="Thumbnail Placeholder" title="Thumbnail Placeholder"/></a>
                  <div class="caption">
                    <h3>October 30, 2016</h3>
                    <p>Not sure how to display the picture yet....</p>
                    <p><a href="#" class="btn btn-primary">Read More...</a></p>
                  </div>
                </div>
              </li>
              <li class="span3">
                <div class="thumbnail">
                  <a href="gallery/preview-300.png"><img src="gallery/300x200.png" alt="Thumbnail Placeholder" title="Thumbnail Placeholder"/></a>
                  <div class="caption">
                    <h3>October 10, 2016</h3>
                    <p>Not sure how to display the picture yet....</p>
                    <p><a href="#" class="btn btn-primary">Read More...</a></p>
                  </div>
                </div>
              </li>
              <li class="span3">
                <div class="thumbnail">
                  <a href="gallery/preview-300.png"><img src="gallery/300x200.png" alt="Thumbnail Placeholder" title="Thumbnail Placeholder"/></a>
                  <div class="caption">
                    <h3>October 1, 2016</h3>
                    <p>Not sure how to display the picture yet....</p>
                    <p><a href="#" class="btn btn-primary">Read More...</a></p>
                  </div>
                </div>
              </li>
			  <li class="span3">
                <div class="thumbnail">
                  <a href="gallery/preview-300.png"><img src="gallery/300x200.png" alt="Thumbnail Placeholder" title="Thumbnail Placeholder"/></a>
                  <div class="caption">
                    <h3>September 27, 2016</h3>
                    <p>Not sure how to display the picture yet....</p>
                    <p><a href="#" class="btn btn-primary">Read More...</a></p>
                  </div>
                </div>
              </li>
            </ul>
          </div>
		  <div class="row-fluid">
            <ul class="thumbnails">
              <li class="span3">
                <div class="thumbnail">
                  <a href="gallery/preview-300.png"><img src="gallery/300x200.png" alt="Thumbnail Placeholder" title="Thumbnail Placeholder"/></a>
                  <div class="caption">
                    <h3>September 26, 2016</h3>
                    <p>Not sure how to display the picture yet....</p>
                    <p><a href="#" class="btn btn-primary">Read More...</a></p>
                  </div>
                </div>
              </li>
              <li class="span3">
                <div class="thumbnail">
                  <a href="gallery/preview-300.png"><img src="gallery/300x200.png" alt="Thumbnail Placeholder" title="Thumbnail Placeholder"/></a>
                  <div class="caption">
                    <h3>September 5, 2016</h3>
                    <p>Not sure how to display the picture yet....</p>
                    <p><a href="#" class="btn btn-primary">Read More...</a></p>
                  </div>
                </div>
              </li>
              <li class="span3">
                <div class="thumbnail">
                  <a href="gallery/preview-300.png"><img src="gallery/300x200.png" alt="Thumbnail Placeholder" title="Thumbnail Placeholder"/></a>
                  <div class="caption">
                    <h3>September 1, 2016</h3>
                    <p>Not sure how to display the picture yet....</p>
                    <p><a href="#" class="btn btn-primary">Read More...</a></p>
                  </div>
                </div>
              </li>
			  <li class="span3">
                <div class="thumbnail">
                  <a href="gallery/preview-300.png"><img src="gallery/300x200.png" alt="Thumbnail Placeholder" title="Thumbnail Placeholder"/></a>
                  <div class="caption">
                    <h3>August 24, 2016</h3>
                    <p>Not sure how to display the picture yet....</p>
                    <p><a href="#" class="btn btn-primary">Read More...</a></p>
                  </div>
                </div>
              </li>
            </ul>
			</div>
          </div>

                </div>
                
            </div>
			<!--/End gallery Content Area-->

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