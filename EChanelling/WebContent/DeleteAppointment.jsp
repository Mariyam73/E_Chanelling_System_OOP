   <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <%@include file="/header.jsp" %>
<!DOCTYPE html>
<html>

<head>
	<title>Delete | Appointment</title>
	<meta charset="ISO-8859-1">
	
	<!-- linking style sheets -->
	<link rel="stylesheet" type="text/css" href="css/login.css">
	
</head>

<body>
	<img src = "img/bg.jpg" class = "pic">
	<!-- Getting the appointment id to delete the appointment -->
	<%
		String id = request.getParameter("ID");
	%>
	
	<div class="login-wrap">
		<div class="login-html">
			<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label
				for="tab-1" class="tab">Delete Your Appointment</label>
			<div class="login-form">
				<form name="deleteForm" method="post" action="DeleteServlet">
					
					<div class="group">
						<label for="pass" class="label">Your Appointment ID is : </label> 
						<input type="text" name="id" class = "input" value="<%= id %>" readonly><br>
					</div>

					<div class="group">
						<input id="check" type="checkbox" class="check" onclick = goFurther()> <label
							for="check"><span class="icon"></span> Do you really want to cancel your appointment</label>
					</div>


					<div class="group">
						<input type="submit" class="button" id = "delete" value="Cancel Appointment" >
					</div>



				</form>
			</div>
		</div>
	</div>
	
	<%@ include file = "/footer.jsp" %> 

</body>