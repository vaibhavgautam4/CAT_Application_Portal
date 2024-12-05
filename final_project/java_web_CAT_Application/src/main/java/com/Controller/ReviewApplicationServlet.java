package com.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.*;
import com.dao.RegistrationDAO;

/**
 * Servlet implementation class ReviewApplicationServlet
 */
@WebServlet("/ReviewApplicationServlet")
public class ReviewApplicationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewApplicationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
//		int cid = Integer.parseInt(request.getParameter("cid"));
		int cid = (Integer)request.getSession().getAttribute("username");



	    // Fetch data using DAO
		
		RegistrationDAO r = new RegistrationDAO();

	    Candidate personalDetails = r.getPersonalDetails(cid);

	    Academics academicDetails = r.getAcademicDetails(cid);

	    WorkEx workExperience = r.getWorkExperience(cid);

	    TestCity testCity = r.getTestCity(cid);



	    // Set attributes for JSP

	    request.setAttribute("personalDetails", personalDetails);

	    request.setAttribute("academicDetails", academicDetails);

	    request.setAttribute("workExperience", workExperience);

	    request.setAttribute("testCity", testCity);



	    // Forward to JSP

	    RequestDispatcher dispatcher = request.getRequestDispatcher("reviewApplication.jsp");

	    dispatcher.forward(request, response);

	  }

}


