package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import appointmentDAO.paymentdao;
import model.User;

/**
 * Servlet implementation class InsertPayment
 */
@WebServlet("/InsertPayment")
public class InsertPayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertPayment() {
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
		String BankName =request.getParameter("bname");
		String type =request.getParameter("card");
		String CardNumber =request.getParameter("number");
		String ExpYear=request.getParameter("expYear");
		String ExpMonth=request.getParameter("expMonth");
		String CVV =request.getParameter("cvv");
		String amount = request.getParameter("amt");
		String date=request.getParameter("date");
		
		//getting user id through session
		HttpSession session = request.getSession();
		User LoggedUser = (User) session.getAttribute("LoggedUser");
		int uID = LoggedUser.getId();
		
		boolean isTrue;//to catch boolean value
		
		//calling the method to insert data
		isTrue=paymentdao.Insertpayment(BankName, CardNumber, ExpYear, ExpMonth, CVV , type , amount , uID , date);
		
		//on success redirects to retrieve servlet else home page
		if(isTrue == true) 
		{
			RequestDispatcher dis =request.getRequestDispatcher("GetPayment");
			dis.forward(request, response);
		}
		else 
		{
				RequestDispatcher dis2 =request.getRequestDispatcher("Payment.jsp");
				dis2.forward(request, response);
		}
		
		
	}

}
