package com.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.Bean.TestCity;
import com.dao.RegistrationDAO;
import com.utilities.UniqueID;

/**
 * Servlet implementation class cityServlet
 */
@WebServlet("/cityServlet")
public class cityServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public cityServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		String city1 = request.getParameter("city1");
		String city2 = request.getParameter("city2");
		String city3 = request.getParameter("city3");
//		String city4 = request.getParameter("city4");
		
		int status = 0;
		
		int id = (Integer)request.getSession().getAttribute("username");
		
		TestCity t = new TestCity(id, city1, city2, city3);
		RegistrationDAO reg = new RegistrationDAO();
		status = reg.enterTestCity(t);
		
		if(status>0) {
			int s1 = reg.setCityFlag(id);
			request.setAttribute("status5", "filled");
RequestDispatcher rd = request.getRequestDispatcher("dashboard.jsp");
			
			rd.forward(request, response);

//			response.sendRedirect("dashboard.jsp");
		} else {
			request.setAttribute("errorMessage", "Test City Data is not Saved!");
			RequestDispatcher rd = request.getRequestDispatcher("cities.jsp");
			rd.include(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		
		
	}

}
