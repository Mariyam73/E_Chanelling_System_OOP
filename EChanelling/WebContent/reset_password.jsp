<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reset password</title>
</head>
<body>
<img src = "img/bg.jpg" class = "pic">
	<%
	
	String driverName = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/echanelling";

	String userId = "root";
	String password = "1234";
	
	try {
		Class.forName(driverName);

		Connection con = null;
		Statement st = null;

		con = DriverManager.getConnection(connectionUrl, userId, password);
		st = con.createStatement();

		String username = request.getParameter("uname");
		String email = request.getParameter("email");
		String passw = request.getParameter("pass");
		String strQuery = "SELECT Username FROM  channelingcustomer where Username='" + username + "'";

		ResultSet rs = st.executeQuery(strQuery);
		if (rs.next()) {
			String Countrow = rs.getString(1);

			if (Countrow.equals(username)) {

		String updatequery = "update channelingcustomer set Password = '" + passw + "' where Username = '"
				+ username + "'";

		int update = st.executeUpdate(updatequery);

		if (update > 0) {
			//out.println("Password send to your email id successfully !");

			String redirectURL = "Home.jsp";
			response.sendRedirect(redirectURL);
		}

		else {
			System.out.println("update failure!");
		}

			}

		} else {
			out.println("Invalid Email Id !");
		}

		out.println("Account doesnt exist!");

	} catch (Exception e) {
		System.out.println(e);
	}
	%>


	

</body>
</html>