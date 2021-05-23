<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@include file="/header.jsp" %>


<html>
	<head>
	<title>Home</title>
	
	<%-- Linking relevant css files --%>
	<link rel="stylesheet" href="css/css/bootstrap.min.css">
	<link rel="stylesheet" href="css/Home.css">
	</head>

<body>
	<%-- Content of the body --%>
	  <section class="banner_part">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-5 col-xl-5">
                    <div class="banner_text">
                        <div class="banner_text_iner">
                            <h5>We are here for your care</h5>
                            <h1>Best Care & Better Doctor</h1>
                            <p>We provide you with best E-chanelling service island wide
                                A panel of well qualified doctors at your service
                                For all your medical problems We care For you With Easiest One click appointment </p>
                             
                             <%-- displays make appointment button only if user is logged in --%>
                               <%if(session.getAttribute("LoggedUser") != null){ %>
                                <form method = "post" action = "GetDoctorServlet">
                             <button class="btn btn--pill btn--green" type="submit">Make an Appointment</button> 
                             </form> <%} %> 
                             
                        </div>
                    </div>
                </div>
                <div class="col-lg-7">
                    <div class="banner_img">
                        <br><br>
                    </div>
                </div>
            </div>
        </div>
        
    </section>


</body>

<%@ include file = "/footer.jsp" %> 

</html>
