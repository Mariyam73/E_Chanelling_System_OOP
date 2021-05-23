   <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@include file="/header.jsp" %>
<html>


	<head>
	
	<title>Bookings</title>
	<%-- linking relevant css files --%>
	<link rel="stylesheet" type="text/css" href="css/Tables.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	
	
	</head>

	<body>
	<%-- content of body --%>
		<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100">
				
					<h1 class = "title">YOUR DUE APPOINTMENTS</h1>
					
					<table>
					<%-- Start of table --%>
						<thead>
								<tr class="table100-head">
									<th class="column1">ID</th>
									<th class="column2">Patient</th>
									<th class="column3">Contact</th>
									<th class="column3">Doctor</th>
									<th class="column3">Special</th>
									<th class="column3">Date of Appointment</th>
									<th class="column2">Gender</th>
									<th class="column2">Appointment Placed by</th>
									<th class="column1">Update</th>
									<th class="column1">Delete</th>
								</tr>
						</thead>
						
						<%-- using a for each loop to access stored data --%>
						 <c:forEach var="app" items="${AppDetails}">
						
							<c:set var="ID" value="${app.id}"/>
							<c:set var="Patient" value="${app.patient}"/>
							<c:set var="Contact" value="${app.contact}"/>
							<c:set var="Doctor" value="${app.doctor}"/>
							<c:set var="Special" value="${app.special}"/>
							<c:set var="Date" value="${app.date}"/>
							<c:set var="Gender" value="${app.gender}"/>
							<c:set var="User" value="${app.user}"/>
	
							<tr>
								<td>${app.id}</td>
							
								<td>${app.patient}</td>
								
								<td>${app.contact}</td>
								
								<td>${app.doctor}</td>
								
								<td>${app.special}</td>
								
								<td>${app.date}</td>
								
								<td>${app.gender}</td>
								
								<td>${app.user}</td>
								
								<c:url value="UpdateAppointmentForm.jsp" var="appup">
									<c:param name="ID" value="${ID}"/>
									<c:param name="Patient" value="${Patient}"/>
									<c:param name="Contact" value="${Contact}"/>
									<c:param name="Doctor" value="${Doctor}"/>
									<c:param name="Special" value="${Special}"/>
									<c:param name="Date" value="${Date}"/>
									<c:param name="Gender" value="${Gender}"/>
									<c:param name="User" value="${User}"/>
								</c:url>
								
								<c:url value="DeleteAppointment.jsp" var="apup">
									<c:param name="ID" value="${ID}"/>
								</c:url>
											
								<td>
								<a href = "${appup}">
								<button class = "btn btn--pill btn--green">Update</button>
								</a>
								</td>
								<td>
								<a href = "${apup}">
								<button class="btn btn--pill btn--green">Delete</button>
								</a>
								</td>
								
							</tr>
						
							</c:forEach>
							
							
					</table>
					<br><br>
					<button class="btn btn--pill btn--green"><a href = "Home.jsp">Cancel</a></button>
					<button class="btn btn--pill btn--green"><a href = "Payment.jsp">Continue</a></button>
				</div>
			</div>
		</div>
	</div>

	
	<%@include file="/footer.jsp" %>
	</body>


</html>