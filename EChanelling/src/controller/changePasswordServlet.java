package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import appointmentDAO.userdao;

import model.User;

/**
 * Servlet implementation class changePasswordServlet
 */
@WebServlet("/changePasswordServlet")
public class changePasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public changePasswordServlet() {
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
		
		PrintWriter out = response.getWriter();
		
		//getting the id and password of the user logged in the session
		HttpSession session = request.getSession();
		User LoggedUser = (User) session.getAttribute("LoggedUser");
		int UID = LoggedUser.getId();
		String password = LoggedUser.getPassword();
		
		
		// Get Parameters from Form to change password and Store it in Variables
		
				String pass = request.getParameter("pass");
				String npass = request.getParameter("npass");
				String renpass = request.getParameter("renpass");
				
				
				//if the user is confirmed and the new passwords are confirmed 
				//password id updated
				if (password.equals(pass)) {
					if(npass.equals(renpass))
					{
						userdao u1 = new userdao();
						u1.changePassword(UID, npass);
						
						//redirected to home page
						response.sendRedirect("login.jsp");
					}

					else
					{
						out.println("Error in confirming your password");
					}
				}
				else {
					out.println("password change unsuccessfull!");
				}

		
	}

}
