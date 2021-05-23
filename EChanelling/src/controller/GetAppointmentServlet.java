package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Appointment;
import model.User;
import appointmentDAO.ManageAppointment;

/**
 * Servlet implementation class GetAppointmentServlet
 */
@WebServlet("/GetAppointmentServlet")
public class GetAppointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetAppointmentServlet() {
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
		
		//getting the user id of the currently logged in user
		//String user = request.getParameter("UserName");
		//int uID = Integer.parseInt(user);
		
		//getting user id through session
				HttpSession session = request.getSession();
				User LoggedUser = (User) session.getAttribute("LoggedUser");
				int uID = LoggedUser.getId();
		
		try {
	    	//calling the method to retrieve details 
      	  List<Appointment> AppDetails = ManageAppointment.getApp(uID);
      	  request.setAttribute("AppDetails", AppDetails);
	    }
	    catch (Exception e) {
		e.printStackTrace();
	    }
	    
	    
	    RequestDispatcher dis = request.getRequestDispatcher("Bookings.jsp");
	    dis.forward(request, response);  
		
		
	}

}
