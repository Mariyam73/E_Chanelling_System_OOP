package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import appointmentDAO.ManageAppointment;

/**
 * Servlet implementation class DeleteServlet
 */
@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteServlet() {
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
		
		//getting the appointment id to delete
		String sid = request.getParameter("id");
		int id = Integer.parseInt(sid);
		
		boolean isTrue;//to catch boolean value
		 
		isTrue = ManageAppointment.delete(id);//passing values 
		
		//on success returns to home page 
		if(isTrue == true) {
			RequestDispatcher dis =request.getRequestDispatcher("GetAppointmentServlet");
			dis.forward(request, response);
			}
		else {
				RequestDispatcher dis2 =request.getRequestDispatcher("GetAppointmentServlet");
				dis2.forward(request, response);
			}
	}

}
