package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Doctor;
import appointmentDAO.ManageAppointment;

/**
 * Servlet implementation class GetDoctorServlet
 */
@WebServlet("/GetDoctorServlet")
public class GetDoctorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetDoctorServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		try {
			//calling the dao method to retrive doctors
      	  List<Doctor> DocDetails = ManageAppointment.getDoctor();
      	  request.setAttribute("DocDetails", DocDetails);
	    }
	    catch (Exception e) {
		e.printStackTrace();
	    }
	    
	    //on success redirects to a doctor page
	    RequestDispatcher dis = request.getRequestDispatcher("ViewDoctor.jsp");
	    dis.forward(request, response);  
	}
		
}


