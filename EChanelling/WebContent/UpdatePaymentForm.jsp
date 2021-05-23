 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.sql.*" %>
<%@include file="/header.jsp" %>


<html>
	<head>
		<title>update | payment</title>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		
		<%-- Linking relevant styling sheets --%>
		<link rel="stylesheet" href="css/AppointmentForm.css">
		
		<%-- linking java script --%>
		<script src="js/AppointmentForm.js"></script>
		
	
	</head>

	<body class = "center">
	<%-- content of body  --%>
	
	<%-- Getting the data required to form for update --%>
	<%
		String id = request.getParameter("ID");
		String Name = request.getParameter("Name");
		String Number = request.getParameter("Number");
		String ExpYear = request.getParameter("ExpYear");
		String ExpMonth = request.getParameter("ExpMonth");
		String CVV = request.getParameter("CVV");
		String user = request.getParameter("User");
		String date = request.getParameter("date");
		String amount = request.getParameter("amount");
		String type = request.getParameter("type");
	%>

	

<div class="wrapper">
			<div class="inner">
			
			<%-- Start of form --%>
				<form name = "updateAppointment" method = "POST" action="UpdatePaymentServlet" >
					<h3>Update Payment</h3>
					
					<div class="form-row">
						<div class="form-wrapper">
							<label for="">Payment ID</label>
							<input type="text" class="form-control" name="id" value="<%= id %>" readonly>
						</div>
						
						<div class="form-wrapper">
							<label for="">User ID</label>
							<input type="text" class="form-control" placeholder="User" name = "UserName" value="${LoggedUser.getId()}" readonly>
						</div>
					</div>
					
					<div class="form-row">
						<div class="form-wrapper">
							<label for="">Bank Name</label>
							<input type="text" class="form-control" name="bname" value="<%= Name %>">
						</div>
						
						<div class="form-wrapper">
							<label for="">Card Number</label>
							<input type="text" class="form-control" name="cnum" value="<%= Number %>">
						</div>
					</div>
					
					
					<div class="form-row">
						<div class="form-wrapper">
							<label for="">Amount</label>
							<input type="text" class="form-control "  name="amount" value="<%= amount %>">
						</div>
						
						<div class="form-wrapper">
							<label for="">Type</label>
							<input type="text" class="form-control "  name="type" value="<%= type %>">
						</div>
						</div>
					
					<div class="form-row">
						<div class="form-wrapper">
							<label for="">Exp Year</label>
							<input type="text" class="form-control "  name="year" value="<%= ExpYear %>">
						</div>
						
						<div class="form-wrapper">
							<label for="">Exp Month</label>
							<input type="text" class="form-control "  name="month" value="<%= ExpMonth %>">
						</div>
						</div>
						
						<div class="form-wrapper">
							<div class="form-wrapper">
							<label for="">CVV</label>
							<input type="text" class="form-control "  name="cvv" value="<%= CVV %>">
						</div>
						</div>
						
						<div class="form-row">
						<div class="form-wrapper">
							<label for="">Date</label>
							<span class="lnr lnr-calendar-full"></span>
							<input type="date" class="form-control datepicker-here" data-language='en' data-date-format="dd M yyyy" name="date" value="<%= date %>">
						</div>
					</div>
					
					
					<input type = "submit" class="btn btn--pill btn--green" value = "Update Payment" name = "submit">
				</form><%-- end of form --%>
				
			</div>
		</div>
	
	
	</body>




</html>