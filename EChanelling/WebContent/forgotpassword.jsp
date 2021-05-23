
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@include file="/header.jsp"%>
<!DOCTYPE html>
<html>

<head>

<title>Forgot password</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- styling the form fields and page -->
<link rel="stylesheet" type="text/css" href="css/userprofile.css">
<link rel="stylesheet" type="text/css" href="css/login.css">


</head>

<body>
<img src = "img/bg.jpg" class = "pic">

	<br></br>
	<!-- The content of your page would go here. -->

	<h2 style="text-align: center">Forgot Your Password???</h2>
	<br>

	<div class="login-wrap">
		<div class="login-html">
			<div class="login-form">
				<form method="post" name="Forgot" action="reset_password.jsp"
					id="resetForm">
					<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label
						for="tab-1" class="tab">Reset your password</label>
					<!--  <h3><i class="fa fa-key" aria-hidden="true">  Reset your password!!!</i></h3><br>-->
					<hr>
					<br>
					
					<div class="group">
						<label id="in6"><b>Enter Your User Name</b></label> <input type="text"
							name="uname" id="email" >
					</div>
					
					<div class="group">
						<label id="in6"><b>Enter Your Email</b></label> <input type="text"
							name="email" id="email" size=20>
					</div>

					<div>
						<label id="in6"><b>Enter Your new Password</b></label> <input
							type="password" name="pass" id="email">
					</div>
					<br>
					<div class="group">
						<button type="submit" class="button" value="submit">Submit</button>
					</div>

					<hr>
					<a href="login.jsp">Back to login?</a>
				</form>
			</div>
		</div>
	</div>

	<script type="text/javascript">
 
    $(document).ready(function() {
        $("#resetForm").validate({
            rules: {
                email: {
                    required: true,
                    email: true
                }      
            },
            
            messages: {
                email: {
                    required: "Please enter email",
                    email: "Please enter a valid email address"
                }
            }
        });
 
    });
</script>


	<%@ include file="/footer.jsp"%>


</body>






</html>