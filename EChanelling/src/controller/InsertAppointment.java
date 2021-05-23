package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import appointmentDAO.ManageAppointment;
import model.User;

/**
 * Servlet implementation class InsertAppointment
 */
@WebServlet("/InsertAppointment")
public class InsertAppointment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertAppointment() {
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
		
		//getting details from the form to insert
		String Patient=request.getParameter("PatientName");
		String Phonenumber=request.getParameter("Phone");
		String DoctorName=request.getParameter("Dname");
		String DoctorSepcialisity=request.getParameter("Dspecial");
		String DateofApointment=request.getParameter("date");
		String gender=request.getParameter("gender");
		
		//getting user id through session
		HttpSession session = request.getSession();
		User LoggedUser = (User) session.getAttribute("LoggedUser");
		int uID = LoggedUser.getId();
		
		boolean isTrue;//to catch boolean value
		 
		//calling the method to insert data
		isTrue=ManageAppointment.insertApp(Patient, Phonenumber, DoctorName, DoctorSepcialisity , DateofApointment, gender , uID);
		
		//on success redirects to retrieve servlet else home page
		if(isTrue == true) 
		{
			RequestDispatcher dis =request.getRequestDispatcher("GetAppointmentServlet");
			dis.forward(request, response);
		}
		else 
		{
				RequestDispatcher dis2 =request.getRequestDispatcher("Home.jsp");
				dis2.forward(request, response);
		}
		
		
		
	}

}
