package com.cg.logincontroller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @author Rohit Naik Servlet implementation class LoginController
 */
@WebServlet("*.app")
public class LoginController extends HttpServlet {

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath(); //get action
		
		HttpSession session = request.getSession(); //get session
		System.out.println(action);
		switch (action) {							//operation on action
			case "/home.app":
				response.sendRedirect("login.jsp");
			break;
		case "/login.app":
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			if (username.equals("rnaik") && password.equals("3112")) {// Credential check
				session = request.getSession();
				session.setAttribute("username", username);
				response.sendRedirect("success.jsp");			//redirect to success.jsp on successful authentication
			} else
				response.sendRedirect("error.jsp");		//redirect to success.jsp on authentication failed
			break;
		case "/logout.app":
			session.invalidate();  // invalidate session
			response.sendRedirect("login.jsp");

		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
