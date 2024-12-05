package com.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.Registration;
import com.dao.RegistrationDAO;
import com.utilities.*;

/**
 * Servlet implementation class register
 */
@WebServlet("/register")
public class register extends HttpServlet {
//	private int id = 66001;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("number");
		String password = request.getParameter("password");
		String conf_password = request.getParameter("conf_password");
		PrintWriter out = response.getWriter();
		boolean status = false;
		
		if(password.equals(conf_password)) {
			Registration reg = new Registration();
//			constants c = new constants();
			
//			reg.setCid(c.getId());
//			c.setId(c.getId()+1);
			reg.setName(name);
			reg.setEmail(email);
			long p = Long.parseLong(phone);
			reg.setPhone(p);
			reg.setPassword(password);
			RegistrationDAO registerNew = new RegistrationDAO();
			status = registerNew.RegistrationCandidate(reg);
			fetchID unique = new fetchID();
			int userId = unique.getInitialUniqueID();
			if(status) {
				out.println("status block executed");
				request.setAttribute("candidateId", "Your candidate ID is "+userId+" .Use this ID to login to dashboard");
				RequestDispatcher rd = request.getRequestDispatcher("registration.jsp");
				rd.forward(request, response);
//				response.sendRedirect("home.jsp");
			}
			
		}else {
//			RequestDispatcher rd = new RequestDispatcher();
			request.setAttribute("errorMessage", "Password and Confirm Password does not match or User is already exist!");
			RequestDispatcher rd = request.getRequestDispatcher("registration.jsp");
			rd.include(request, response);
		}
		
		
	}

}
