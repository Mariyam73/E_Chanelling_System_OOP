package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBManager implements ConnectionProvider{
	
	//method to get connection database
	public static Connection getConnection() {
		
		//using a try catch block to handle exceptions
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
				//connecting to database
			 Connection con = DriverManager.getConnection(url, user, pass);
			 return con;
		}
		catch(ClassNotFoundException e1 )
		{
			e1.printStackTrace();
			return null;
		}
		catch(SQLException e )
		{
			e.printStackTrace();
			return null;
		}
	
	
    }


}
