 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@include file="/header.jsp" %>
<html>


	<head>
	
	<title>Medix | View Payment</title>
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
				
					<h1 class = "title">YOUR PAYMENT</h1>
					
					<table>
					<%-- Start of table --%>
						<thead>
								<tr class="table100-head">
									<th class="column1">ID</th>
									<th class="column2">Bank Name</th>
									<th class="column3">Card Number</th>
									<th class="column4">ExpYear</th>
									<th class="column5">ExpMonth</th>
									<th class="column6">CVV</th>
									<th class="column7">Date</th>
									<th class="column8">Type</th>
									<th class="column9">Amount</th>
									<th class="column1">Update</th>
								</tr>
						</thead>
						
						<%-- using a for each loop to access stored data --%>
						<c:forEach var="pay" items="${PaymentDetails}">
						
							<c:set var="ID" value="${pay.id}"/>
							<c:set var="Name" value="${pay.b_name}"/>
							<c:set var="Number" value="${pay.c_num}"/>
							<c:set var="ExpYear" value="${pay.exp_year}"/>
							<c:set var="ExpMonth" value="${pay.exp_month}"/>
							<c:set var="CVV" value="${pay.cvv}"/>
							<c:set var="date" value="${pay.date}"/>
							<c:set var="Type" value="${pay.c_type}"/>
							<c:set var="amount" value="${pay.amount}"/>
	
							<tr>
								<td>${pay.id}</td>
							
								<td>${pay.b_name}</td>
								
								<td>${pay.c_num}</td>
								
								<td>${pay.exp_year}</td>
								
								<td>${pay.exp_month}</td>
								
								<td>${pay.cvv}</td>
								
								<td>${pay.date}</td>
								
								<td>${pay.c_type}</td>
								
								<td>${pay.amount}</td>
								
								
								
								<c:url value="UpdatePaymentForm.jsp" var="payup">
									<c:param name="ID" value="${ID}"/>
									<c:param name="Name" value="${Name}"/>
									<c:param name="Number" value="${Number}"/>
									<c:param name="ExpYear" value="${ExpYear}"/>
									<c:param name="ExpMonth" value="${ExpMonth}"/>
									<c:param name="CVV" value="${CVV}"/>
									<c:param name="date" value="${date}"/>
									<c:param name="type" value="${Type}"/>
									<c:param name="amount" value="${amount}"/>
									<c:param name="User" value="${User}"/>
								</c:url>
								
											
								<td>
								<a href = "${payup}">
								<button class = "btn btn--pill btn--green">Update</button>
								</a>
								</td>
								
							</tr>
						
							</c:forEach>
							
							
					</table>
					<br><br>
					<button class="btn btn--pill btn--green"><a href = "Home.jsp">Cancel</a></button>
					<button class="btn btn--pill btn--green"><a href = "bookingSuccess.jsp">Continue</a></button>
				</div>
			</div>
		</div>
	</div>

	
	<%@include file="/footer.jsp" %>
	</body>


</html>