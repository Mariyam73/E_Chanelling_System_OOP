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
 * Servlet implementation class UpdateAppointmentServlet
 */
@WebServlet("/UpdateAppointmentServlet")
public class UpdateAppointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateAppointmentServlet() {
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
		
		//getting the details from update form
		String sid = request.getParameter("id");
		int id = Integer.parseInt(sid);
		String patient = request.getParameter("patient");
		String contact = request.getParameter("phone");
		String doctor = request.getParameter("doc");
		String special = request.getParameter("special");
		String date = request.getParameter("date");
		String gender = request.getParameter("gndr");
		String user = request.getParameter("UserName");
		int uID = Integer.parseInt(user);
		
		boolean isTrue;//to catch boolean value
		
		//calling the edit method with variables to update the details
		isTrue = ManageAppointment.edit(id, patient, contact, doctor, special, date , gender , uID);
		
		//on successful update
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("GetAppointmentServlet");
			dis.forward(request, response);
		}
		//if update fails
		else {
			RequestDispatcher dis = request.getRequestDispatcher("Home.jsp");
			dis.forward(request, response);
		}
	}

}
