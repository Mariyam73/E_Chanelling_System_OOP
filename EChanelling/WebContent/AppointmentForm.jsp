
<%@page import = "util.DBManager" %>
  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.sql.*" %>
<%@include file="/header.jsp" %>


<html>
	<head>
		<title>Appointment Form</title>
		<!-- <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> -->
		
		<%-- linking relevant styling sheets --%>
		<link rel="stylesheet" href="css/AppointmentForm.css">
		
		<%-- linking java scripts --%>
		<script src="js/AppointmentForm.js"></script>
		
	
	</head>

	<body class = "center">
	<%-- Content of body --%>
	
	<%-- Getting the data required doctor data to form --%>
	<%
		String Dname = request.getParameter("name");
		String Dspecial = request.getParameter("specialization");
	%>
	

<div class="wrapper">
			<div class="inner">
			
			<%-- Start of appointment form --%>
				<form name = "placeAppointment" method = "POST" action="InsertAppointment" onsubmit = "validateAppointment()">
					<h3>Make Your Appointment</h3>
					<div class="form-row">
					<div class="form-wrapper">
							<label for="">Your User ID</label>
							<input type="text" class="form-control" placeholder="User" name = "UserName" value="${LoggedUser.getId()}" readonly>
						</div>
						</div>
					
					<div class="form-row">
						<div class="form-wrapper">
							<label for="">Patient</label>
							<input type="text" class="form-control" placeholder="Patient" name = "PatientName" onblur = "onlyletter()">
						</div>
						
						<div class="form-wrapper">
							<label for="">Phone Number</label>
							<input type="text" class="form-control" placeholder="Phone" name = "Phone" onblur = "phoneNumber()">
						</div>
					</div>
					<div class="form-row">
						<div class="form-wrapper">
							<label for="">Date of Appointment</label>
							<span class="lnr lnr-calendar-full"></span>
							<input type="date" name = "date" class="form-control datepicker-here" data-language='en' data-date-format="dd M yyyy" id="dp1">
						</div>
						<div class="form-wrapper">
							<div class="form-wrapper">
							<label for="">Gender</label>
							<select name="gender" id="" class="form-control">
								<option value="Male">Male</option>
								<option value="Female">Female</option>
								<option value="Other">Other</option>
							</select>
							<i class="zmdi zmdi-chevron-down"></i>
						</div>
						</div>
					</div>
					<div class="form-row last">
							<div class="form-wrapper">
							<label for="">Doctor Name</label>
							<input type="text" class="form-control"  name = "Dname" value="<%= Dname %>" readonly>
						</div>
						<div class="form-wrapper">
							<label for="">Doctor Special</label>
							<input type="text" class="form-control" name = "Dspecial" value="<%= Dspecial %>" readonly>
						</div>
					</div>
					
					<input type = "submit" class="btn btn--pill btn--green" value = "Book Appointment" name = "submit">
				</form><%-- End of form --%>
				
			</div>
		</div>
	
	<%-- <%@include file="/footer.jsp" %>--%>
	</body>

</html>