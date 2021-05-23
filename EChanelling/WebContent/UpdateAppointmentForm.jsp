
<%@page import = "util.DBManager" %>
  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.sql.*" %>
<%@include file="/header.jsp" %>

<html>
	<head>
		<title>update | appointment</title>
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
		String patient = request.getParameter("Patient");
		String contact = request.getParameter("Contact");
		String doctor = request.getParameter("Doctor");
		String special = request.getParameter("Special");
		String date = request.getParameter("Date");
		String gender = request.getParameter("Gender");
		String user = request.getParameter("User");
	%>

	

<div class="wrapper">
			<div class="inner">
			
			<%-- Start of form --%>
				<form name = "placeAppointment" method = "POST" action="UpdateAppointmentServlet" onsubmit = "validateAppointment()">
					<h3>Update Appointment</h3>
					
					<div class="form-row">
						<div class="form-wrapper">
							<label for="">Appointment ID</label>
							<input type="text" class="form-control" name="id" value="<%= id %>" readonly>
						</div>
						
						<div class="form-wrapper">
							<label for="">User ID</label>
							<input type="text" class="form-control" placeholder="User" name = "UserName" value="${LoggedUser.getId()}" readonly>
						</div>
					</div>
					
					<div class="form-row">
						<div class="form-wrapper">
							<label for="">Patient</label>
							<input type="text" class="form-control" name="patient" value="<%= patient %>">
						</div>
						
						<div class="form-wrapper">
							<label for="">Phone Number</label>
							<input type="text" class="form-control" name="phone" value="<%= contact %>">
						</div>
					</div>
					<div class="form-row">
						<div class="form-wrapper">
							<label for="">Date of Appointment</label>
							<span class="lnr lnr-calendar-full"></span>
							<input type="date" class="form-control datepicker-here" data-language='en' data-date-format="dd M yyyy" name="date" value="<%= date %>">
						</div>
						<div class="form-wrapper">
							<div class="form-wrapper">
							<label for="">Gender</label>
							<select name="gndr" value="<%= gender %>" class="form-control">
								<option value="Male">Male</option>
								<option value="Female">Female</option>
								<option value="Other">Other</option>
							</select>
						</div>
						</div>
					</div>
					<div class="form-row last">
							<div class="form-wrapper">
							<label for="">Doctor Name</label>
							<input type="text" class="form-control"  name="doc" value="<%= doctor %>" readonly>
						</div>
						<div class="form-wrapper">
							<label for="">Doctor Speciality</label>
							<input type="text" class="form-control" name="special" value="<%= special %>" readonly>
						</div>
					</div>
					
					<input type = "submit" class="btn btn--pill btn--green" value = "Update Appointment" name = "submit">
				</form><%-- end of form --%>
				
			</div>
		</div>
	
	
	</body>




</html>