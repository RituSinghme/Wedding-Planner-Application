<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>
<%@ page import= "javax.servlet.http.*"%> 
<%@ page import= "java.sql.DriverManager"  %> 
<%@ page import= "javax.servlet.http.HttpSession" %> 

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
                        <a href="index.jsp" id="divSiteTitle">Forever</a><br />
                        <a href="index.jsp" id="divTagLine">Your Wedding, Your Way!</a>
                    </div>

                    <div id="divMenuRight" class="pull-right">
                    <div class="navbar">
                        <button type="button" class="btn btn-navbar-highlight btn-large btn-primary" data-toggle="collapse" data-target=".nav-collapse">
                            NAVIGATION <span class="icon-chevron-down icon-white"></span>
                        </button>
                        
                        <div class="social_bookmarks">
                        <ul class="nav nav-pills ddmenu">
                        <a style="color:dodgerblue"><font size="2">Invite Through Social Media: </font></a>
                        <br>
                        <a href="www.facebook.com"><i class="social foundicon-facebook"></i> Facebook</a>
						<a href="www.twitter.com"><i class="social foundicon-twitter"></i> Twitter</a>
						<a href="www.pinterest.com"><i class="social foundicon-pinterest"></i> Pinterest</a>
						<a href="www.instagram.com"><i class="social foundicon-instagram"></i> Instagram</a>
						
						</ul>
                    	</div>
                    	
                    </div>
                    </div>
			</div>
                </div>
            </div>    
</div>   
            <%
            
String w_id = request.getParameter("w_id");
Connection connection = null;
ResultSet rst = null;
Statement statement = null;
Class.forName("com.mysql.jdbc.Driver");
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/wedding_planner","root", "passwordbaru");
       try {
String queryString = "SELECT groom_name, bride_name, w_date, address FROM customer, venue as V, wedding_component as W where V.venue_id = W.venue_id and c_id = "+  (Integer)session.getAttribute("customer_id") +" and W.w_id="+ w_id;	     
statement = connection.createStatement();

rst = statement.executeQuery(queryString);
while(rst.next()) { %>

 
 	<br>
 	<h2 align="center" style="color:orange"><font size="6">You Are Cordially Invited To The Wedding Of:</font></h2>
 	<br>
 	<h2 align="center"><a id="divSiteTitle" style="color:goldenrod"><font size="15"><%=rst.getString(1)%></font></a><br /></h2> 
 
	<h2 align ="center"><img src="images/ampersand.png" alt="Ampersand" style="width:100x;height:80px;"></h2>
 	<h2 align="center"><a id="divSiteTitle" style="color:firebrick"><font size="15"><%=rst.getString(2)%></font></a></h2>
 	
 	<hr>
 	
 	<div class="divPanel">
 	<div class="row-fluid">
 	
 				<div class="span4" id="footerArea2" >
                    <h2 align="center" style="color:black;"><font size="4">The bride and the groom would be delighted if you could join them on their very special day.</font></h2>
 				</div>
 				
 				<div class="span4" id="footerArea1" >
                    <h2 align ="center"><img src="images/date.jpg" alt="Date" style="width:250x;height:180px;"></h2>
 				</div>
 				
 				<div class="span4" id="footerArea3" >
 				<h3>Important Info:</h3>  
                                                               
                    <ul id="contact-info">
                    <li>                                    
                        <i class="general foundicon-calendar icon"></i>
                        <span class="field">Date:</span>
                        <br />
                        <%=rst.getString(3)%>                                                                    
                    </li>
                    
                    <li>
                        <i class="general foundicon-location icon"></i>
                        <span class="field">Venue:</span>
                        <br />
                        <%=rst.getString(4)%>
                    </li>
                    
                    <li>
                        <i class="general foundicon-heart icon" style="margin-bottom:50px"></i>
                        <i class="general foundicon-heart icon" style="margin-bottom:50px"></i>
                        <i class="general foundicon-heart icon" style="margin-bottom:50px"></i>
                        <i class="general foundicon-heart icon" style="margin-bottom:50px"></i>
                        <i class="general foundicon-heart icon" style="margin-bottom:50px"></i>
                        <i class="general foundicon-heart icon" style="margin-bottom:50px"></i>
                        
                    </li>
               
                    </ul>
 				</div>				
 	</div>
    
   
   </div>
<%
}
} 
catch (Exception ex) {
out.println("Unable to connect to database.");

 }
finally {
  // close all the connections.
  statement.close();
  connection.close();
}

//}
%>                           
</body>
</html>
