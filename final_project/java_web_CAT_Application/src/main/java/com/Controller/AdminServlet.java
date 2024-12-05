package com.Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.Academics;
import com.Bean.Candidate;
import com.Bean.TestCity;
import com.Bean.WorkEx;
import com.dao.RegistrationDAO;

/**
 * Servlet implementation class AdminServlet
 */
@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
//		ArrayList<Integer> arr = new ArrayList<>();
//
//
//
//	    // Fetch data using DAO
//		
//		RegistrationDAO r = new RegistrationDAO();
//		
//		arr = r.getAllcidfromRegistration();
//		
//		arr.removeIf(candidate -> candidate.isApproved());
//
//        // Send the filtered list to JSP
//        request.setAttribute("candidates", arr);
//		
//		for(int i = 0;i<arr.size();i++)
//		{
//			int cid = arr.get(i);
//
//	    Candidate personalDetails = r.getPersonalDetails(cid);
//
//	    Academics academicDetails = r.getAcademicDetails(cid);
//
//	    WorkEx workExperience = r.getWorkExperience(cid);
//
//	    TestCity testCity = r.getTestCity(cid);
//
//
//
//	    // Set attributes for JSP
//
//	    request.setAttribute("personalDetails", personalDetails);
//
//	    request.setAttribute("academicDetails", academicDetails);
//
//	    request.setAttribute("workExperience", workExperience);
//
//	    request.setAttribute("testCity", testCity);
//		
//		}
//
//
//	    // Forward to JSP
//
//	    RequestDispatcher dispatcher = request.getRequestDispatcher("admin.jsp");
//
//	    dispatcher.forward(request, response);
//
		
		
		RegistrationDAO dao = new RegistrationDAO();
	    
	    // Get unapproved candidate IDs
	    List<Integer> unapprovedCids = dao.getUnapprovedCandidates();

	    List<Candidate> personalDetailsList = new ArrayList<>();
	    List<Academics> academicDetailsList = new ArrayList<>();
	    List<WorkEx> workExperienceList = new ArrayList<>();
	    List<TestCity> testCityList = new ArrayList<>();

	    for (int cid : unapprovedCids) {
	        personalDetailsList.add(dao.getPersonalDetails(cid));
	        academicDetailsList.add(dao.getAcademicDetails(cid));
	        workExperienceList.add(dao.getWorkExperience(cid));
	        testCityList.add(dao.getTestCity(cid));
	    }

	    // Set attributes for JSP
	    request.setAttribute("personalDetailsList", personalDetailsList);
	    request.setAttribute("academicDetailsList", academicDetailsList);
	    request.setAttribute("workExperienceList", workExperienceList);
	    request.setAttribute("testCityList", testCityList);

	    // Forward to JSP
	    RequestDispatcher dispatcher = request.getRequestDispatcher("admin.jsp");
	    dispatcher.forward(request, response);
		
}
}

