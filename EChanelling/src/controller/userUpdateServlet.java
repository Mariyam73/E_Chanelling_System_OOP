package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;


import appointmentDAO.userdao;

import model.User;

/**
 * Servlet implementation class userUpdateServlet
 */
@WebServlet("/userUpdateServlet")
public class userUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userUpdateServlet() {
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
		
		//getting the details of logged user
		
				HttpSession session = request.getSession();
				User LoggedUser = (User) session.getAttribute("LoggedUser");
				int UID = LoggedUser.getId();
				String pass = LoggedUser.getPassword();
				
				
				//getting the update form values to variables
				String password = request.getParameter("pass");
				String uname = request.getParameter("uname");
				String name = request.getParameter("name");
				String email = request.getParameter("email");
				String phone = request.getParameter("phone");
				
				if (pass.equals(password)) {
					boolean isTrue;
					
					userdao u1 = new userdao();
					
					isTrue = u1.updateUser(UID , name ,uname ,  email , phone);
					
					if(isTrue == true)
					{
						//retrieving the updated variables to the logged user session
						
						List<User> user = u1.getUserDetails(UID);
						request.setAttribute("LoggedUser", user);
						
						
						RequestDispatcher dispatcher = request.getRequestDispatcher("logoutServlet");
			  		  dispatcher.forward(request, response);
						System.out.println("updated successfully");
					}
					
					else
					{
						RequestDispatcher dispatcher = request.getRequestDispatcher("Home.jsp");
				  		  dispatcher.forward(request, response);
						System.out.println("update failed");
					}
					
					
				}else {
					//response.sendRedirect("Logout");
					System.out.println("password doesnt match!");
				}
	}

}
