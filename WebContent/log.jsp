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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
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
                        <li ><a href="index.jsp">Home</a></li>
                        <li ><a href="reg.jsp">Sign Up</a></li>
                        <li class="active"><a href="log.jsp">Login</a></li>
                    </ul>
                </div>
                <!-- #Nav Ends -->

            </div>
        </div>

    </div>

<!-- #Header Starts -->


                <div id="login"  class="container spacer about">
                    <div class="row">
                    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
                        <form action="" method="post">
                       
                            <h2 align="center">Enter Your Credentials</h2>
                                 <fieldset>
                                <div class="form-group">
                                    <input type="text" name="user_name" id="username" class="form-control input-lg" placeholder="Username" tabindex="1" required="required">
                                    
                                </div>
                                     <span id="result"></span>
                               </fieldset>
                                    <div class="form-group">
                                        <input type="password" name="password" id="password" class="form-control input-lg" placeholder="Password" tabindex="2" required="required">
                                    </div>
                           

                            <hr class="colorgraph">
                            <div class="row">
                               
                            
                                 
                                <div class="col-xs-12 col-sm-6 col-md-6"> <div class="form-group"><input type="submit" name="register" value="Sign in" class="btn btn-primary btn-block"  tabindex="3"></div>
                                </div>
                                    <div class="col-xs-12 col-sm-6 col-md-6"><div class="form-group"><input name="register" value="New User" class="btn btn-primary btn-block" onclick="document.location.href='reg.jsp';" tabindex="4"></div>
                                </div>
                            </div>
<%
    String user_name = request.getParameter("user_name");    
    String password = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/members?useSSL=false","root","passwordbaru");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from members where user_name='" + user_name + "' and password='" + password + "'");
    if (rs.next()) {
        session.setAttribute("user_name", user_name);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("success.jsp");
    } else {
        out.println("Invalid password <a href='log.jsp'>try again</a>");
    }
%>                            
                           
                        </form>
                      
                    </div>
                </div>
                </div>
            


</body>
</html>