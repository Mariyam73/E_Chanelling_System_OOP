<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    
    <!-- styling the header -->
    <link href="css/main.css" rel="stylesheet" type="text/css" media="all">
    <link href="css/header.css" rel="stylesheet" type="text/css" media="all">
    
    <script src="https://kit.fontawesome.com/48aedca16c.js"></script>
<!-- JAVASCRIPTS -->
    <script src="scripts/jquery.min.js"></script> 
</head>
<body>
<!-- Header -->
    <div class="row1">
      <header id="header" class="clear"> 
        <div id="logo" class="fl_left">
			<!--  <img src="images/logo.png">-->
			<h1><a href="index.html">MedixLanka <i class="fa fa-stethoscope" aria-hidden="true" ></i></a></h1>
        </div>
		<br>
        <nav id="mainav" class="fl_right">
          <ul class="clear">
            <li class="active"><a href="Home.jsp">Home</a></li>
            <li><a href="#">About us</a></li>
            <li><a href="#">Contact us</a></li>
            
            <!-- displaying profile and logout buttons only if user logged in -->
            <%if(session.getAttribute("LoggedUser") == null){ %>
                <li><a href="login.jsp">Login|Register</a></li>
          
              
              <%}else{ %>
              <li><a href="#">Appointments</a></li>
              <li><a class="drop" href="#">Account</a>
              <ul>
              <li><a href="login.jsp">Login|Register</a></li>
              <li><a href="userprofile.jsp">MyProfile</a></li>
              <li><a href="logoutServlet">Logout</a></li>
              <%} %>
              </ul>
			</li>
             
          </ul>
        </nav>
      </header>
    </div>
<!-- Header -->