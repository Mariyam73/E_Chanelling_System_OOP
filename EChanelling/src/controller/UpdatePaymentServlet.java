package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import appointmentDAO.paymentdao;

/**
 * Servlet implementation class UpdatePaymentServlet
 */
@WebServlet("/UpdatePaymentServlet")
public class UpdatePaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdatePaymentServlet() {
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
		String bankName = request.getParameter("bname");
		String cardNumber = request.getParameter("cnum");
		String Expyear = request.getParameter("year");
		String ExpMonth = request.getParameter("month");
		String CVV = request.getParameter("cvv");
		String type = request.getParameter("type");
		String date = request.getParameter("date");
		String amount = request.getParameter("amount");
		String user = request.getParameter("UserName");
		int uID = Integer.parseInt(user);
		
		boolean isTrue;//to catch boolean value
		
		//calling the edit method with variables to update the details
		isTrue = paymentdao.edit(id, bankName, cardNumber, Expyear, ExpMonth, CVV , type , amount, uID  , date);
		
		//on successful update
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("GetPayment");
			dis.forward(request, response);
		}
		//if update fails
		else {
			RequestDispatcher dis = request.getRequestDispatcher("Home.jsp");
			dis.forward(request, response);
		}
	}
		
	

}
