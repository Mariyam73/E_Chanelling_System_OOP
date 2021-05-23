   <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	 <%@include file="/header.jsp" %>
<html>


	<head>
	
	<title>Doctor Page</title>
	
	<%-- Linking relevant css files --%>
	<link rel="stylesheet" type="text/css" href="css/Tables.css">
	
	
	</head>

	<body>
	<%-- Content of the body --%>
	
		<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100">
				
				<h1 class = "title">OUR DOCTORS</h1>
				
				<%-- Start of table --%>
				<table>
				<%-- Table header --%>
				<thead>
							<tr class="table100-head">
								<th class="column2">Doctor id</th>
								<th class="column2">Doctor name</th>
								<th class="column2">Special</th>
								<th class="column2">Hospital</th>
								<th class="column2">MakeAppointment</th>
							</tr>
				</thead>
				
				<%-- Using a for each loop to access doctor details --%>
				<c:forEach var="doc" items="${DocDetails}">
				
					<c:set var="Name" value="${doc.name}"/>
					<c:set var="Specialization" value="${doc.specialization}"/>
				
					
					<%-- Table rows --%>
					<tr>
						
						<td>${doc.id}</td>
					
						<td>${doc.name}</td>
						
						<td>${doc.specialization}</td>
						
						<td>${doc.hospital}</td>
						
						
						<c:url value="AppointmentForm.jsp" var="docR">
								<c:param name="name" value="${Name}"/>
								<c:param name="specialization" value="${Specialization}"/>
						</c:url>
						
						<td>
						<a href = "${docR}">
						<button type="button" class="btn btn--pill btn--green">Place Appointment</button>
						</a>
						</td>
						
					</tr>
				
					</c:forEach>
					
					
					</table>
					
				</div>
			</div>
		</div>
	</div>
	
	<%@ include file = "/footer.jsp" %> 

	
	
	</body>
	


</html>