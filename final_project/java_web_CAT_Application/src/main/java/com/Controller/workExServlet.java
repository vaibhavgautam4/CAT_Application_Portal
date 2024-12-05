package com.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.WorkEx;
import com.dao.RegistrationDAO;
import com.utilities.UniqueID;

/**
 * Servlet implementation class workExServlet
 */
@WebServlet("/workExServlet")
public class workExServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public workExServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		String experience = request.getParameter("experience");
		int ex = Integer.parseInt(experience);
		String company = request.getParameter("company");
		int status = 0;
		
		int id = (Integer)request.getSession().getAttribute("username");
		
		WorkEx ob = new WorkEx(id,ex,company);
		RegistrationDAO reg = new RegistrationDAO();
		status = reg.workExDetails(ob);
		
		if(status>0) {
			 int s1 = reg.setWorkExFlag(id);
			request.setAttribute("status3", "filled");
			RequestDispatcher rd = request.getRequestDispatcher("dashboard.jsp");
			rd.forward(request, response);
//			response.sendRedirect("dashboard.jsp");
		} else {
			request.setAttribute("errorMessage", "Work Experience Data is not saved!");
			RequestDispatcher rd = request.getRequestDispatcher("workEx.jsp");
			rd.include(request, response);
		}
	}

}
