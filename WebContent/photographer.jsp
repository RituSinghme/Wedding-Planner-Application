<%@page import="com.sun.xml.internal.txw2.Document"%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>


<!DOCTYPE html>
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

<body id = "pageBody">

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
</div><br>


<%
   if ((session.getAttribute("customer_id") == null) || (session.getAttribute("customer_id") == "")) {
 %>
   You are not logged in<br/>
  <a href="index.jsp">Please Login</a> 
<%} else {
%>

<div align="center" class="container">
    <caption><h3>Please choose a Photographer !!</h3></caption> <br>  
    
 <table class="table table-bordered" >
    <thead>
    <tr>
         <th align="center" width="5%"></th>                         
        <th align="center" width="5%">Id</th>
        <th align="center" width="27%">Web Address</th>
        <th align="center"width="15%">Manager's Name</th>
        <th align="center" width="23%">Manager's Email Id</th>
        <th align="center" width="10%">Cost</th>
        <th align="center" width="15%">Contact Number</th>
    </tr>
    </thead>
    </table>
    </div>
    
<% Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wedding_planner","root", "Chetu1234");
Statement st = con.createStatement();
ResultSet od;
ResultSet rs;

od = st.executeQuery("select ph_id from wedding_component a inner join wedding b on a.w_id = b.w_id where ph_id is not null and w_date ='" + session.getAttribute("wedding_date").toString()+ "'");
//out.println(od.next());

if (od.next() == false)
{ //out.println(od.next());
{ 
Statement uv = con.createStatement();
rs = uv.executeQuery("select * from photographer");  

while(rs.next())
 {
 
 %>
    
    <div align="center">
        <table class = "table table-bordered" >
           <thead>
           <tr>
               <td width="5%">
               <div class="radio">
                     <label><input type="radio" id='newbooking' name="optradio" onclick="document.location.href='ph_update.jsp?id=<%=rs.getString("ph_id") %>'">
                   
                     </label> 
                
                 </div>
               </td>
             <td width="5%"><% out.print(rs.getString("ph_id")); %></td>
               <td width="27%"><a href= <% out.print(rs.getString("web_address"));%>><% out.print(rs.getString("web_address")); %></a></td>
               <td width="15%"><% out.print(rs.getString("mgr_name")); %></td>
               <td width="23%"><% out.print(rs.getString("mgr_email_id")); %></td>
               <td width="10%"><% out.print(rs.getString("cost")); %></td>
               <td width="15%"><% out.print(rs.getString("contact_no")); %></td>
                              
           </tr>
           </thead>
       </table>
    </div>

<%
 }}}

else{
	int ph_id ;
	String ph = "(";
do
{ //out.println(od.next());
	ph_id = (od.getInt("ph_id"));
	ph = ph + ph_id + ",";
	}while(od.next());
ph = ph + ph_id+ ")";

Statement uv = con.createStatement();
rs = uv.executeQuery("select * from photographer where ph_id not in " + ph ); 
while(rs.next())
{ 

	%> 
    
   <div align="center" class="container">
       <table class = "table table-bordered" >
           <thead>
           <tr>
               <td width="5%">
               <div class="radio">
                     <label><input type="radio" id='prevbooking' name="optradio" onclick="document.location.href='ph_update.jsp?id=<%=rs.getString("ph_id") %>'">
                   
                     </label> 
                
                 </div>
               </td>
             <td width="5%"><% out.print(rs.getString("ph_id")); %></td>
               <td width="27%"><a href= <% out.print(rs.getString("web_address"));%>><% out.print(rs.getString("web_address")); %></a></td>
               <td width="15%"><% out.print(rs.getString("mgr_name")); %></td>
               <td width="23%"><% out.print(rs.getString("mgr_email_id")); %></td>
               <td width="10%"><% out.print(rs.getString("cost")); %></td>
               <td width="15%"><% out.print(rs.getString("contact_no")); %></td>
                              
           </tr>
           </thead>
       </table>
       
   </div>
   
   
   
   <% 
}

}
%>

<% 

//onclick=<% request.setAttribute("ph_id", this);


//out.println(this);
//Boolean success = reg.filldetails(request);


    }
%>

<div class="btn-group btn-group-justified" align ="center">
    <a href="success.jsp?id=ph_id" class="btn btn-primary btn-lg">Back</a>
    <a href="decorator.jsp?id=ph_id" class="btn btn-primary btn-lg">Next</a>
  </div>
  
<br>
    </div>
    
<div id="footerInnerSeparator"></div>

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
<script type="text/javascript">
function startCamera() {$('#camera_wrap').camera({ fx: 'scrollLeft', time: 2000, loader: 'none', playPause: false, navigation: true, height: '35%', pagination: true });}$(function(){startCamera()});</script>


</body>
</html>