<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 

<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
   
	
    <title>VAPoR Wedding Planner Portal</title>

    <!-- Google fonts -->
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,300,700' rel='stylesheet' type='text/css'>

    <!-- font awesome -->
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
    <!-- bootstrap -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />

    <!-- animate.css -->
    <link rel="stylesheet" href="bootstrap/css/animate.css" />
    <link rel="stylesheet" href="bootstrap/css/set.css" />

    <!-- gallery -->
    <link rel="stylesheet" href="css/blueimp-gallery.min.css">

    <!-- favicon -->


    <link rel="stylesheet" href="bootstrap/css/style.css">

</head>

<body>
<div class="topbar animated fadeInLeftBig"></div>

<!-- Header Starts -->

    <div class="container">
        <div class="navbar-inverse navbar-fixed-top" role="navigation" id="top-nav">
            <div class="container">
                <div class="navbar-header">
                    <!-- Logo Starts -->
                    <h1 style="font-size:300%;">VAPoR</h1>
                    <!-- #Logo Ends -->

                </div>


                <!-- Nav Starts -->
                  <div class="navbar-collapse  collapse">
                       <ul class="nav navbar-nav navbar-right scroll">
                        <li ><a href="logout.jsp">Logout</a></li>
                    </ul>
                </div>
                <!-- #Nav Ends -->

            </div>
        </div>

    </div>
    
<!-- #Header Starts -->
<body>
		<h2 align="center">Hi There!!</h2>
        
            <%
   			if ((session.getAttribute("user_name") == null) || (session.getAttribute("user_name") == "")) {
			%>
			You are not logged in<br/>
			<a href="index.jsp">Please Login</a>
			<%} 
   			
   			else {
				%>
			Welcome <%=session.getAttribute("user_name")%>
			
			<%
			    }
			%>
    </body>
</body>
</html>
