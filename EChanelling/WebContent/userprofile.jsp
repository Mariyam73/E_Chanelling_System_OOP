
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/header.jsp"%>
<!DOCTYPE html>
<html>

<head>
	<title>User Profile</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- styling user profile -->
	 <link rel = "stylesheet" type = "text/css" href = "css/login.css"> 
	
</head>

<body >
<img src = "img/bg.jpg" class = "pic">

<br></br>
<!-- The content of your page would go here. -->

<h1 class="font-italic">Hello ${LoggedUser.userName}</h1>

	<div class="login-wrap">
		<div class="login-html">
			<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label
				for="tab-1" class="tab">User Profile</label>
			<!-- retrieve data -->
			<div class="login-form">
				<!-- name of user class is used -->
				<c:set var="id" value="${LoggedUser.getId()}" />
				<h4>${id}</h4>

				<c:set var="username" value="${LoggedUser.userName}" />
				<h4>${username}</h4>
				
				<c:set var="name" value="${LoggedUser.name}" />
				<h4>${name}</h4>
				
				<c:set var="email" value="${LoggedUser.email}" />
				<h4>${email}</h4>

				<c:set var="phone" value="${LoggedUser.phone}" />
				<h4>${phone}</h4>

				
				
				<br>
			
			<!-- passing the values for user update -->
				<c:url value="userprofileupdate.jsp" var="cusupdate">
					<c:param name="id" value="${id}" />
					<c:param name="username" value="${username}" />
					<c:param name="email" value="${email}" />
					<c:param name="name" value="${name}" />
					<c:param name="phone" value="${phone}" />

				</c:url>


				<div class="group">
					<a href="${cusupdate}"><button name="edit" class="button"
							value="Submit">Edit details</button></a>
				</div>

				<div class="group">
					<a href="changePassword.jsp"><button name="edit" class="button"
							value="Submit">Change password</button></a>
				</div>

				<div class="group">
					<a href="deleteAccount.jsp"><button name="edit" class="button"
							value="Submit">Delete Account</button></a>
				</div>




			</div>
		</div>
	</div>





</body>

<%@ include file = "/footer.jsp" %> 
 




</html>