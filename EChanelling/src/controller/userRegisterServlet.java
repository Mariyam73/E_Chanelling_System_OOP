package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import appointmentDAO.userdao;

import model.User;

/**
 * Servlet implementation class userRegisterServlet
 */
@WebServlet("/register")
public class userRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userRegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//assigning name of sign up form fields to variables
		PrintWriter out=response.getWriter(); 
		String username = request.getParameter("uname");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email"); 
	    String password = request.getParameter("pass");
	   
	    
	    //setting the variables to object attributes
	   
	    User u1 = new User();
		
	    u1.setUserName(username);
	    u1.setName(name);
	    u1.setEmail(email);  
	    u1.setPhone(phone);
	    u1.setPassword(password);
	  
	   
	    try {
	    	//getting the status returned by the register method(to verify successs or unsucess)
	    	
	    	userdao user = new userdao();
	    	int status = user.registerUser(u1);
	    	
	    	//checking for insertion success 
	    	if(status > 0)
	    	{
	    		//if insertion success redirect  to display the home page to login.
	    		out.print("<p>Record saved successfully!</p>"); 
	    		
	    		RequestDispatcher dispatcher = request.getRequestDispatcher("Home.jsp");
	    		  dispatcher.forward(request, response);

	    	}
	    	
	    	else{  
	    		//prompt user to re enter
	            out.println("Sorry! unable to save record"); 
	            request.getRequestDispatcher("login.jsp").include(request, response);  
	    	}
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
	}

}
