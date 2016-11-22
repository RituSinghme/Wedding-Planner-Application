<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@ page import="takeone.*" %>

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
                        <li class="active"><a href="reg.jsp">Sign Up</a></li>
                        <li ><a href="log.jsp">Login</a></li>
                    </ul>
                </div>
                <!-- #Nav Ends -->

            </div>
        </div>

    </div>

<!-- #Header Starts -->

                <div id="signup"  class="container spacer about">
                    <div class="row">
                    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
                        <form action="" method="post">
               
                            <h2 align="center">Welcome to the Wedding Planner Portal!!</h2>

                            <div class="row">
                                <div class="col-xs-12 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <input type="text" name="groom_name" id="groom_name" class="form-control input-lg" placeholder="Groom Name" tabindex="1" required="required">
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <input type="text" name="bride_name" id="bride_name" class="form-control input-lg" placeholder="Bride Name" tabindex="2" required="required" >
                                    </div>
                                </div>
                            </div>
                                 <fieldset>
                                <div class="form-group">
                                    <input type="text" name="contact_person" id="contact_person" class="form-control input-lg" placeholder="Primary Contact Person" tabindex="3" required="required">
                                    
                                </div>
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
                        
                                <div class="col-xs-12 col-sm-6 col-md-6"> <div class="form-group"><input type="submit" name="register" value="Create User" class="btn btn-primary btn-block" tabindex="9"></div>
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


</body>

</html>
