<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/header.jsp"%>
<!DOCTYPE html>
<html>

<head>
	<title>Booking Success</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- styling user profile -->
	 <link rel = "stylesheet" type = "text/css" href = "css/bookingSuccess.css"> 
	
</head>

<body >
<img src = "img/hero1.jpg" class = "pic">

<br></br>
<!-- The content of your page would go here. -->

<!--  <h1 class="font-italic">Hello ${LoggedUser.userName}</h1>-->

	<div class="login-wrap">
		<div class="login-html">
			<h1>Booking Successfull!</h1>
			<!-- retrieve data -->
			<div class="login-form">
				<!-- name of user class is used -->
				
				
				
				<h2>Your Appointment is confirmed</h2>
				
				
				<h3>Your Booking No is 05</h3>
				
				<h1 class="font-italic">Thank You ${LoggedUser.userName}</h1><br>
				
				<h2>Get Well Soon <i class="fa fa-heartbeat" aria-hidden="true"></i></h2>
				
				
				<br>
			
			




			</div>
		</div>
	</div>





</body>

<%@ include file = "/footer.jsp" %> 
 




</html>