package com.Controller;

import java.io.IOException;
import java.io.OutputStream;
import com.Controller.LoginServlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.Candidate;
import com.Bean.CandidateDocument;
import com.Bean.TestCity;
import com.dao.CandidateDocumentDAO;
import com.dao.RegistrationDAO;

/**
 * Servlet implementation class AdmitCardServlet
 */
@WebServlet("/AdmitCardServlet")
public class AdmitCardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdmitCardServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        int cid=(Integer)request.getSession().getAttribute("username");
		RegistrationDAO r = new RegistrationDAO();
		 Candidate personalDetails = r.getPersonalDetails(cid);
		 TestCity testCity = r.getTestCity(cid);

		 request.setAttribute("personalDetails", personalDetails);
		 request.setAttribute("testCity", testCity);
		 request.setAttribute("candidate_id", cid);

		 
		 RequestDispatcher dispatcher = request.getRequestDispatcher("admit.jsp");
		 dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//int cid = session.getAttribute("username");
		doGet(request, response);
	}

}
