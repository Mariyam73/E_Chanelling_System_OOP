
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/header.jsp"%>

<!DOCTYPE html>
<html>

<head>
	<title>User ChangePassword</title>
	
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- styles for login and sign up page -->
	 <link rel = "stylesheet" type = "text/css" href = "css/login.css"> 

	<!-- validating the fields of the login signup form -->
	 <script src = "validate.js"></script>
	
</head>

<body >
<img src = "img/bg.jpg" class = "pic">

<br></br>
<!-- The content of your page would go here. -->

<div class = "login-wrap">
<div class = "login-html">

  <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Change Password</label>
  <!-- retrieve data -->
<div class="login-form">

<form name="changePassword" method="post" action="changePasswordServlet" >

					<div class="group">
						<label for="pass" class="label">Your Password</label> <input
							id="pass" type="password" class="input" name="pass"  >
					</div>

					<div class="group">
						<label for="pass" class="label">New Password</label> <input
							id="pass" type="password" class="input" name="npass" >
					</div>

					<div class="group">
						<label for="pass" class="label">Confirm new Password</label> <input
							id="pass" type="password" class="input" name="renpass">
					</div>

					<div class="group">
					<input type="submit" class="button" value="Change Password" >
				</div>
				</form>
					

</div>
</div>
</div>

</body>

<%@ include file = "/footer.jsp" %> 
 




</html>