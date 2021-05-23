      <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@include file="/header.jsp" %>
   <%@page import = "java.time.LocalDate" %>
     
<!DOCTYPE html>
<html>

<head>

	<title>Medix| Payment</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- styling login and sign up form -->
	 <link rel = "stylesheet" type = "text/css" href = "css/Payment.css">
	 
	 <!-- validating form fields -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</head>

<body >
<img src = "img/bg.jpg" class = "pic">

<%
	Double amount = 500.00;
	LocalDate date = java.time.LocalDate.now();
%>

<br></br>
<!-- The content of your page would go here. -->

<div class="login-wrap">
		<div class="login-html">
			<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label
				for="tab-1" class="tab">Make payment</label>
			<div class="login-form">
				<form name="paymentForm" method="post" action="InsertPayment">
				
				<div class="group">
						<label for="pass" class="label">Payment made by</label> 
						<input id="pass" type="text" class="input" name="user" value="${LoggedUser.getId()}" readonly >
							
					</div>
				
				<div class="group">
						<label for="pass" class="label">Our service charge is fixed</label> 
						<input id="pass" type="text" class="input" name="amt" value="<%= amount %>" readonly >
							
					</div>
					
					<div class="group">
						<label for="pass" class="label">Bank name</label> <input
							id="pass" type="text" class="input" name="bname" >
							
					</div>
					<div class="group">
						<h3>SELECT TYPE OF PAYEMNT</h3>
						<select name = "card" class = "input">
						<option value = "Credit">Credit card</option>
						<option value = "Debit">Debit card</option>
						</select>
					</div>
					
					<div class="group">
						<label for="pass" class="label">Card Number</label> <input id="pass"
							type="text" class="input" name="number" >
					</div>
					
					<div class="group">
						<label for="pass" class="label">CVV</label> <input
							id="pass" type="text" class="input" name="cvv">
							
					</div>
					
						<div class="group">
						<label for="pass" class="label">Expiry year</label> <input
							id="pass" type="text" class="input" name="expYear">
							
					</div>
					
						<div class="group">
						<label for="pass" class="label">Expiry month</label> <input
							id="pass" type="text" class="input" name="expMonth">
							
					</div>
					
					<div class="group">
						<label for="pass" class="label">Date</label> 
						<input id="pass" type="date" class="input" name="date" value="<%= date %>" readonly>
							
					</div>
						
					<div class="group">
						<input type="submit" class="button" value="Make Payment">
					</div>
				</form>
			</div>
		</div>
	</div>

<br></br>
 <%@ include file = "/footer.jsp" %> 




</body>

 




</html>