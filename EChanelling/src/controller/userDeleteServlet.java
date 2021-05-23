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
 * Servlet implementation class userDeleteServlet
 */
@WebServlet("/userDeleteServlet")
public class userDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userDeleteServlet() {
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
		 
		 //get id and password to confirm that user deletes his account 
		 // with his own concern
		 
			HttpSession session = request.getSession();
			User LoggedUser = (User) session.getAttribute("LoggedUser");
			int UID = LoggedUser.getId();
			String password = LoggedUser.getPassword();
			
			// Get Parameters from delete Form and Store it in Variables
			
			String pass = request.getParameter("pass");
			
			if (password.equals(pass)) {
				
				userdao u1 = new userdao();
				
				u1.deleteUser(UID);
				
				//redirect to logout Servlet
				response.sendRedirect("logoutServlet");
				
			}else {
				response.sendRedirect("Home.jsp");
				out.println("delete unsuccessfull");
			}
			
		}
		
	}

