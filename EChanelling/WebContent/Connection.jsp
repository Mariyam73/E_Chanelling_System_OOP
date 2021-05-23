
<%@page import = "util.DBManager" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<html>

	<head>
	
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	</head>
	
	<body>
		Working
			<% 
				DBManager db = new DBManager();
				Connection conn = db.getConnection(); 
				
				if (conn == null)
				{
					out.println("Connection failed");
				}
				else
					out.println("Connection success");
			%>
		
	</body>


</html>

