package appointmentDAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;


import util.DBManager;
import model.Doctor;
import model.Appointment;

public class ManageAppointment {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static boolean isSuccess;
	
    //----------------------------method for retrieving doctor details-------------------------------
    public static List<Doctor> getDoctor() throws Exception{
	
    		//using an array list to get doctors
			ArrayList<Doctor> doc = new ArrayList<>();
			
			try { 
			    con = DBManager.getConnection();//establishing connection
			    stmt = con.createStatement();
			    String sql = "select * from doctors";//extracting doctor details	    
			    rs = stmt.executeQuery(sql); //execute query
			    
			    while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String specialization = rs.getString(3);
				String hospital = rs.getString(4);
				
				//creating a new instance of doctor class
				Doctor d = new Doctor(id , name , specialization , hospital);
				doc.add(d);
			    }
			    
			}
			catch(Exception e) {
			    e.printStackTrace();
			}
			
			return doc;
	
    }
    
    //----------------------------------inserting appointments--------------------------------------------------
    
    public static boolean insertApp(String Patient,String Phonenumber,String DoctorName,String DoctorSepcialisity ,String DateofApointment,String gender , int user) {
		boolean isSuccess =false;
		
		try {
			
			con = DBManager.getConnection();//establishing connection
			stmt =con.createStatement();
			
			//inserting appointment details
			String sql="insert into appointments values(0,'"+Patient+"','"+Phonenumber+"','"+DoctorName+"','"+DoctorSepcialisity+"','"+DateofApointment+"','"+gender+"', '"+user+"')";
			int rs = stmt.executeUpdate(sql);//execute query
			
			if(rs > 0)//if inserted successfully returns true 
			{
				isSuccess = true;
			}else //if failed returns false
			{
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return  isSuccess;
		
	}
    
    
    //----------------------------retrieving appointment-------------------------------------------
    
 public static List<Appointment> getApp(int user) throws Exception{
    	
    	LocalDate ld = java.time.LocalDate.now(); //getting the current date
	
    	
			ArrayList<Appointment> a = new ArrayList<>();
			
			try { 
			    con = DBManager.getConnection();//establishing connection
			    stmt = con.createStatement();
			    String sql = "select * from appointments where User='"+user+"'and Date >'"+ld+"'";//extracting appointment details	    
			    rs = stmt.executeQuery(sql);//execute query
			    
			    while(rs.next()) {
				int id = rs.getInt(1);
				String patient = rs.getString(2);
				String contact = rs.getString(3);
				String doctor = rs.getString(4);
				String special = rs.getString(5);
				String date = rs.getString(6);
				String gender = rs.getString(7);
				//String user = rs.getString(8);
				
				//create a new instance to retrieve data
				Appointment att = new Appointment(id , patient , contact , doctor , special , date , gender , user);
				a.add(att);
			    }
			    
			}
			catch(Exception e) {
			    e.printStackTrace();
			}
			
			return a;
			
		    }


 	//--------------------------------------updating appointment----------------------------------------
 	
 public static boolean edit(int id, String patient, String contact, String doctor, String special, String date, String gender , int user) {
 	
 	try {
 		
 		con = DBManager.getConnection();//establishing connection
 		stmt = con.createStatement();
 		
 		//updates details
 		String sql = "update appointments set Patient='"+patient+"',Contact='"+contact+"',Doctor='"+doctor+"',Special='"+special+"',gender='"+gender+"' , User='"+user+"'"
 				+ "where AppointmentID='"+id+"'";
 		int rs = stmt.executeUpdate(sql);//execute query
 		
 		//if update successfully returns true else returns false
 		if(rs > 0) {
 			isSuccess = true;
 		}
 		else {
 			isSuccess = false;
 		}
 		
 	}
 	catch(Exception e) {
 		e.printStackTrace();
 	}
 	
 	return isSuccess;
 }
 
 
 
 //------------------------Delete Appointment---------------------------------------------------------
 
 public static boolean delete(int id) {
		
		boolean isSuccess=false;
	    	
	    	try {
	    		
	    		con = DBManager.getConnection();//establishing connection
	    		stmt = con.createStatement();
	    		String sql = "delete from appointments where AppointmentID='"+id+"'";//deleting details
	    		int rs = stmt.executeUpdate(sql);//execute query
	    		
	    		//if deleted successfully returns true else false
	    		if(rs > 0) {
	    			isSuccess = true;
	    		}
	    		else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}
	    	
	    	return isSuccess;
	    }
 

}
