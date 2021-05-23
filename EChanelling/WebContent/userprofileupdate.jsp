
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/header.jsp"%>



<!DOCTYPE html>
<html>

<head>
	<title>Update Profile</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

     <!-- styling the form -->
	 <link rel = "stylesheet" type = "text/css" href = "css/login.css"> 
	
	
	
</head>

<body >
<img src = "img/bg.jpg" class = "pic">

<br></br>
<!-- The content of your page would go here. -->

<!-- retrieving the passed parameters to update form -->
<%
	String email = request.getParameter("email");
	String name =  request.getParameter("name");
	String phone = request.getParameter("phone");
	String id = request.getParameter("id");
	String username = request.getParameter("username");
	
%>


	<div class="login-wrap">
		<div class="login-html">
			<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label
				for="tab-1" class="tab">Update your profile</label>
			<div class="login-form">
				<form name="updateForm" method="post" action="userUpdateServlet"
					onsubmit=" validateSignUpForm()">
					
					<div class="group">
						<label for="pass" class="label">User name</label> <input
							id="pass" type="text" class="input" name="uname" readonly
							value="<%=username%>">
					</div>
					
					<div class="group">
						<label for="pass" class="label">Email Address</label> <input
							id="pass" type="text" class="input" name="email" 
							value="<%=email%>">
					</div>

					<div class="group">
						<label for="pass" class="label">Name</label> <input id="pass"
							type="text" class="input" name="name" value="<%=name%>">
					</div>
					
					<div class="group">
						<label for="pass" class="label">Contact Number</label> <input
							id="pass" type="text" class="input" name="phone"
							value="<%=phone%>">
					</div>

					<div class="group">
						<label for="pass" class="label">Enter password to confirm its you!</label> 
						<input id="pass" type="password" class="input"
							name="pass">
					</div>


					<div class="group">
						<input type="submit" class="button" value="Update data">
					</div>
				</form>
			</div>
		</div>
	</div>











</body>

<%@ include file = "/footer.jsp" %> 
 




</html>