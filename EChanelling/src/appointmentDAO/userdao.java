package appointmentDAO;

import java.sql.Connection;



import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.User;

import util.DBManager;

public class userdao {
	
	private static Connection con = null;
	private static PreparedStatement ps = null;
	private static ResultSet rs = null;
	private static Statement st = null;
	
	
	//method to validate the presence of the logged user
		public  boolean validate(String username , String password)
		{
			boolean status = false;

			try {

				//1. making the connection
				con=DBManager.getConnection(); 

				//2. create a statement using connection object
				ps = con.prepareStatement("select username ,password  from channelingcustomer where Username = ? and Password = ? ") ;


				ps.setString(1, username);
				ps.setString(2 , password);


				System.out.println(ps);

				//3.execute the query
				rs = ps.executeQuery();
				status = rs.next();

			}
			catch(Exception e)
			{
				e.printStackTrace();
			}

			return status;
		}
		
		//if user exists retrieving the details of user
		 public User UserLogin(String username, String password) {
			 
				String sqlQuery = "select * from channelingcustomer where Username=? and Password=?";
				
				User loggedUser = new User();
				
				try {
					
					//1. making the connection
					  con=DBManager.getConnection(); 
					 
					  //2.create a statement using connection object
					 ps = con.prepareStatement(sqlQuery) ;
					 
					 ps.setString(1, username);
					 ps.setString(2, password);
					 
					 
					 //3.execute the query
					  rs = ps.executeQuery();
					 
					 while(rs.next()) {
							loggedUser.setId(rs.getInt(1));
							loggedUser.setName(rs.getString(2));
							loggedUser.setUserName(rs.getString(3));
							loggedUser.setPhone(rs.getString(4));
							loggedUser.setEmail(rs.getString(5));
							loggedUser.setPassword(rs.getString(6));
							
				}
				}
				catch(Exception e)
				{
					e.printStackTrace();
					
				}
				return loggedUser;		
		 
				}
		
		
		 //method to insert user data to database
		 public   int registerUser(User user) throws ClassNotFoundException {
			 String INSERT_USERS_SQL = "INSERT INTO channelingcustomer" +
					 "  (id , Name ,Username ,  Phone , Email ,Password) VALUES " +
					 " ( ? , ?, ? ,? ,? , ?);";

			 int result = 0;

			 try {

				 // 1. making the connection
				 con=DBManager.getConnection();

				 // Step 2:Create a statement using connection object
				 ps = con.prepareStatement(INSERT_USERS_SQL);

				 ps.setInt(1, user.getId());
				 ps.setString(2, user.getName());
				 ps.setString(3, user.getUserName());
				 ps.setString(4, user.getPhone());
				 ps.setString(5, user.getEmail());
				 ps.setString(6, user.getPassword());



				 System.out.println(ps);

				 // Step 3: Execute the query or update query
				 result = ps.executeUpdate();

			 } catch (SQLException e) {

				 e.printStackTrace();
			 }
			 return result;
		 }

			
			//method to update user data
			
			public  boolean updateUser(int id ,String name ,String username ,  String email , String phone)
			{
				 boolean status = false;
				 
				 try {
		     		
					 //1. making the connection
					 
		       	   con=DBManager.getConnection();
		       	  
		       	   //2. creating a statement using connection object
		           st = con.createStatement();
		          
		          String sql = "update channelingcustomer set Name = '"+name+"',Username = '"+username+"' , Email = '"+email+"', Phone = '"+phone+"' where id = '"+id+"'";
		          
		          
		          //3. execute query or update
		          int rs = st.executeUpdate(sql);
		          
		          if(rs > 0)
		          {
		        	  status = true;
		          }
		          
		          else
		          {
		        	  status = false;
		          }
				 }catch(Exception e)
				 {
					 e.printStackTrace();
				 }
				 
				 return status;
				 
			}
			
			
			/*method to retrieve data*/
			public  List<User> getUserDetails(int uID)
			{
				
				ArrayList<User> user = new ArrayList<>();
				
				
				try {
					
					//1 making the connection
					 con=DBManager.getConnection();
			       	  
					 //2.creating a statement using connection object
			          st = con.createStatement();
			          
			          String sql = "select * from channelingcustomer where id = '"+uID+"'"  ;
			          
			          //3. execute the query
			           rs = st.executeQuery(sql);
			          
			          while(rs.next())
			          {
			        	  int Id = rs.getInt(1);
			        	  String name = rs.getString(2);
			        	  String uname = rs.getString(3);
			        	  String  phone = rs.getString(4);
			        	  String email = rs.getString(5);
			        	 String password = rs.getString(6);
			        	 
			        	  //assigning the user variables to a user object
			        	  User u = new User(Id ,name , uname ,phone ,email , password );
			        	  
			        	  user.add(u);
			        	  
			          }
					
					
				}catch(Exception e)
				{
					e.printStackTrace();
				}
				return user;
			}
			
			
			/*method to change password as per user preference*/
			
			public  void changePassword(int uid, String password) {

				String sqlQuery = "update channelingcustomer set Password=? " + "where id=? ";

				try{

					//1.making the connection
					con=DBManager.getConnection(); 

					// Step 2:Create a statement using connection object
					ps = con.prepareStatement(sqlQuery);


					ps.setString(1, password);
					ps.setInt(2, uid);

					//3.execute query
					ps.executeUpdate();
				}
				catch (Exception e) {
					e.printStackTrace();
				}
			}
			
		
			
			/*method to delete a user account on his/her concern*/
			
			public  void deleteUser(int uid) {

				String sqlQuery = "delete  from channelingcustomer " + "where id=? ";

				try{
					// 1.making the connection
					con=DBManager.getConnection();

					// Step 2:Create a statement using connection object
					ps = con.prepareStatement(sqlQuery);

					ps.setInt(1, uid);
					
					//3. execute the query 
					ps.executeUpdate();
				}
				catch (Exception e) {
					e.printStackTrace();
				}
			}
	
	

}
