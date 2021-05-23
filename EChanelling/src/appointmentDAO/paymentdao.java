package appointmentDAO;

import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import util.DBManager;
import model.Payment;

public class paymentdao {
	
	private static Connection con = null;
	private static ResultSet rs = null;
	private static Statement stmt = null;
		
		
	public static  boolean Insertpayment( String BankName  ,String CardNumber,  String ExpYear , String ExpMonth,String CVV ,String type , String amount , int user , String date) {
			boolean isSuccess =false;
			
			try {
				
				con = DBManager.getConnection();//establishing connection
				stmt =con.createStatement();
				
				String sql="insert into payments values(0,'"+BankName+"','"+CardNumber+"','"+ExpYear+"','"+ExpMonth+"','"+CVV+"','"+type+"','"+amount+"' , '"+user+"' , '"+date+"')";
				
				//inserting appointment details
				
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
	
	
	
	
public static List<Payment> getPayment(int user) throws Exception{
    	
    	LocalDate ld = java.time.LocalDate.now(); //getting the current date
	
    	
			ArrayList<Payment> a = new ArrayList<>();
			
			try { 
			    con = DBManager.getConnection();//establishing connection
			    stmt = con.createStatement();
			    String sql = "select * from payments where user='"+user+"'and date ='"+ld+"'";//extracting payment details	    
			    rs = stmt.executeQuery(sql);//execute query
			    
			    while(rs.next()) {
				int id = rs.getInt(1);
				String bankName = rs.getString(2);
				String cardNumber = rs.getString(3);
				String ExpYear = rs.getString(4);
				String ExpMonth = rs.getString(5);
				String CVV = rs.getString(6);
				String type = rs.getString(7);
				double amount = rs.getDouble(8);
				String date = rs.getString(10);
				
				//String user = rs.getString(8);
				
				//create a new instance to retrieve data
				Payment pt = new Payment(id , bankName , type ,cardNumber, ExpYear , ExpMonth , CVV, date,  amount ,user);
				a.add(pt);
			    }
			    
			}
			catch(Exception e) {
			    e.printStackTrace();
			}
			
			return a;
			
		    }




public static boolean edit(int id, String bankName, String cardNumber, String ExpYear, String ExpMonth, String cvv , String type , String amount , int user ,  String date ) {
	boolean isSuccess =false;
	
 	try {
 		
 		con = DBManager.getConnection();//establishing connection
 		stmt = con.createStatement();
 		
 		//updates details
 		String sql = "update payments set BankName='"+bankName+"',Cardnumber='"+cardNumber+"',ExpYear='"+ExpYear+"',ExpMonth='"+ExpMonth+"',CVV='"+cvv+"' ,  type='"+type+"', amount = '"+amount+"' , User='"+user+"' , date = '"+date+"'"
 				+ "where id='"+id+"'";
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

}
