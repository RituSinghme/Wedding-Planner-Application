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
                            <li ><a href="logout.jsp">Logout</a></li>
                            </ul>
                            </div>
                    </div>
                    </div>

                </div>
            </div>

		<h2 align="center">Hi There <% out.print(session.getAttribute("user_name"));%> , Welcome !!</h2>
        
            <%
   			if ((session.getAttribute("user_name") == null) || (session.getAttribute("user_name") == "")) {
			%>
			You are not logged in<br/>
			<a href="index.jsp">Please Login</a>
			<%
			 } 
   			
   		else {
   				
   				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wedding_planner","root", "Chetu1234");
				Statement st = con.createStatement();
				ResultSet rs;
				out.print(session.getAttribute("customer_id"));
				rs = st.executeQuery("select * from customer where c_id =" + session.getAttribute("customer_id"));
				//out.print(rs);
				Class.forName("com.mysql.jdbc.Driver");
			
				while(rs.next())
				{
					
			%>
		     
				    <div align="center">
				        <table border="1" cellpadding="5">
				            <caption><h2>Account Information</h2></caption>
				            <tr>
				                <th>Groom</th>
				                <th>Bride</th>
				                <th>Email</th>
				                <th>Contact Person</th>
				                <th>Wedding Date</th>
				            </tr>
				            <tr>
				                <td><% out.print(rs.getString("groom_name")); %></td>
				                <td><% out.print(rs.getString("bride_name")); %></td>
				                <td><% out.print(rs.getString("email")); %></td>
				                <td><% out.print(rs.getString("contact_person")); %></td>
				                <td>"01/01/01"</td>
				                                            
				            </tr>
				        </table>
				    </div>
			<% } %>
				    <br><br>
				    <h2 align = "center"><a href="Ritu.jsp"> Choose from our Services</h2>
				<% 
			        ResultSet wc,gc;
					String booked = "False";
			        String cat,phot,ven,dec,perf;
			        wc = st.executeQuery("select * from wedding_component where wc_id  = 1");
			        while (wc.next())
			        {
			        	cat = wc.getString("cat_id");
			        	phot = wc.getString("ph_id");
			        	ven = wc.getString("venue_id");
			        	dec = wc.getString("d_id");
			        	perf = wc.getString("p_id");
			        	
			    %>
				    <div align="center">
				    <table border="1" cellpadding="5">
				        <caption><p>Services Chosen</p></caption>
				        <tr>
				        <% if (cat!= null) { booked = "True"; %>
				        	<th>Caterer</th> <% } 
				        if (phot != null) { booked = "True";
				        %>
				        	<th>Photographer</th> <% }
				        if (ven!= null) { booked = "True"; %>
				        	<th>Venue</th> <% }
				        if (perf != null) { booked = "True"; %>
				        	<th>Performer</th><% }
				        if (dec != null) { booked = "True"; %>
			        	<th>Decorater</th><% }%>
				        </tr>
				        <tr>
				        <% if (cat!= null) { %>
				        	<td><% out.print(cat); %></td> <% } 
				        if (phot != null) { 
				        %>
				        	<td><% out.print(phot); %></td> <% }
				        if (ven!= null) { %>
				        	<td><% out.print(ven); %></td> <% }
				        if (perf != null) { %>
				        	<td><% out.print(perf); %></th><% }
				        if (dec != null) { %>
			        	<td><% out.print(dec); %></td><% }%>
				        </tr>
				    </table>
				</div>
				
				<% 
			        }
				if (booked == "True")
				{ 				
				%>
				
				<h2 align = "center"><a href="guest.jsp"> Invite guests here!</h2>
				
				<% } %>
			
			
			<%
			    }
			%>
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
