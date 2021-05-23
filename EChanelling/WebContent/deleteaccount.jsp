      <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <%@include file="/header.jsp" %> 
     
     
 
<!DOCTYPE html>
<html>

<head>

<title>UpdateProfile | Delete</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- styling the delete account form -->
<link rel="stylesheet" type="text/css" href="css/login.css">

<!-- validating the check box -->
<!--  <script src="script/deleteConfirm.js"></script>-->

</head>

<body >
<img src = "img/bg.jpg" class = "pic">

<br></br>
<!-- The content of your page would go here. -->


	<div class="login-wrap">
		<div class="login-html">
			<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label
				for="tab-1" class="tab">Delete Your Account</label>
			<div class="login-form">
				<form name="deleteForm" method="post" action="userDeleteServlet">
					
					<div class="group">
						<label for="pass" class="label">Enter password to confirm
							its you!</label> <input id="pass" type="password" class="input"
							name="pass">
					</div>

					<div class="group">
						<input id="check" type="checkbox" class="check" onclick = goFurther()> <label
							for="check"><span class="icon"></span> Do you really want to delete your account</label>
					</div>


					<div class="group">
						<input type="submit" class="button" id = "delete" value="Delete Account" >
					</div>



				</form>
			</div>
		</div>
	</div>
	
	</body>

<%@ include file = "/footer.jsp" %> 
 




</html>