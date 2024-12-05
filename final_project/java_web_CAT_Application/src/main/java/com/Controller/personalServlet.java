package com.Controller;

import java.io.IOException;
//import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.Candidate;
import com.dao.RegistrationDAO;
import com.utilities.UniqueID;

/**
 * Servlet implementation class personalServlet
 */
@WebServlet("/personalServlet")
public class personalServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public personalServlet() {
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
		
		String title = request.getParameter("title");
		String fname = request.getParameter("fname");
		String mname = request.getParameter("mname");
		String lname = request.getParameter("lname");
		String dob = request.getParameter("dob");
		String gender = request.getParameter("gender");
		String state = request.getParameter("state");
		String nationality = request.getParameter("nationality");
		String father = request.getParameter("father");
	    String aa = request.getParameter("aadhar");
	    long aadhar = Long.parseLong(aa);
//	    PrintWriter out = response.getWriter();
		int status = 0;

		int id = (Integer)request.getSession().getAttribute("username");
	    System.out.println(id);
		
		Candidate c = new Candidate(id, title, fname, mname, lname, dob, gender, state, nationality, father, aadhar);
		RegistrationDAO reg = new RegistrationDAO();
		status = reg.personalDetails(c);
		
		if(status>0) {
			int s1 = reg.setPersonalFlag(id);
			request.setAttribute("status", "filled");
			RequestDispatcher rd = request.getRequestDispatcher("dashboard.jsp");
			
			rd.forward(request, response);
//			response.sendRedirect("dashboard.jsp");
		} else {
			request.setAttribute("errorMessage", "Personal Data is not saved!");
			RequestDispatcher rd = request.getRequestDispatcher("personal.jsp");
			rd.include(request, response);
		}
		
		
	}

}
