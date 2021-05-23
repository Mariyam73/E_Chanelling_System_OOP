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

import model.Payment;
import model.User;
import appointmentDAO.paymentdao;

/**
 * Servlet implementation class GetPayment
 */
@WebServlet("/GetPayment")
public class GetPayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetPayment() {
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
		
		
		//getting user id through session
		HttpSession session = request.getSession();
		User LoggedUser = (User) session.getAttribute("LoggedUser");
		int uID = LoggedUser.getId();

		try {
			//calling the method to retrieve details 
			  List<Payment> paymentDetails = paymentdao.getPayment(uID);
			  request.setAttribute("PaymentDetails", paymentDetails);
		}
		catch (Exception e) {
		e.printStackTrace();
		}
		
		
		RequestDispatcher dis = request.getRequestDispatcher("paymentView.jsp");
		dis.forward(request, response);  



	}

}
