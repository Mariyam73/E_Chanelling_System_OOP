      <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@include file="/header.jsp" %>
     
<!DOCTYPE html>
<html>

<head>

	<title>Login | Register</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- styling login and sign up form -->
	 <link rel = "stylesheet" type = "text/css" href = "css/login.css">
	 
	 <!-- validating form fields -->
<script src="script/validate.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</head>

<body>
<img src = "img/bg.jpg" class = "pic">

<br></br>
<!-- The content of your page would go here. -->

<div class="login-wrap">
	<div class="login-html">
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
		<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
		<div class="login-form">
			<div class="sign-in-htm">
			<form name = "signINform" method = "post" action = "loginServlet" onsubmit="return signinValidate()">
				<div class="group">
					<label for="user" class="label">User Name</label>
					<input id="user" type="text" class="input" name = "uname" >
				</div>
				<div class="group">
					<label for="pass" class="label">Password</label>
					<input id="pass" type="password" class="input" data-type="password" name = "password" >
				</div>${message} <!-- To tell the user that login failed -->
				<div class="group">
					<input id="check" type="checkbox" class="check" >
					<label for="check"><span class="icon"></span> Keep me Signed in</label>
				</div>
				<div class="group">
					<input type="submit" class="button" value="Sign In">
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					<a href="forgotpassword.jsp">Forgot Password?</a>
				</div>
				</form>
			</div>
				<div class="sign-up-htm">
					<form name="signUPform" method="post" action="register"
						onsubmit="return validation()">
						<div class="group">
							<label for="pass" class="label">Name</label> <input id="pass"
								type="text" class="input" name="name" >
						</div>
						
						<div class="group">
							<label for="pass" class="label">User Name</label> <input id="pass"
								type="text" class="input" name="uname" >
						</div>
						<div class="group">
							<label for="pass" class="label">Email Address</label> <input
								id="pass" type="text" class="input" name="email">
						</div>

						<div class="group">
							<label for="pass" class="label">Contact Number</label> <input
								id="pass" type="text" class="input" name="phone">
						</div>

						<div class="group">
							<label for="pass" class="label">Password</label> <input
								id="txtPassword" type="password" class="input"
								data-type="password" name="pass" onblur = "CheckPassword()">
						</div>
						<div class="group">
							<label for="pass" class="label">Repeat Password</label> <input
								id="txtConfirmPassword" type="password" class="input"
								data-type="password" name="conpass">
						</div>


						<div class="group">
							<input type="submit" class="button" value="Sign Up"
								id="btnSubmit">
						</div>
						<div class="hr"></div>
						
					</form>
				</div>
			</div>
	</div>
</div>
<br></br>
 <%@ include file = "/footer.jsp" %> 


 <!--  
<script type="text/javascript">
    $(function () {
        $("#btnSubmit").click(function () {
            var password = $("#txtPassword").val();
            var confirmPassword = $("#txtConfirmPassword").val();
            if (password != confirmPassword) {
                alert("Passwords do not match.");
                return false;
            }
            return true;
        });
    });
</script>
-->
</body>

 




</html>