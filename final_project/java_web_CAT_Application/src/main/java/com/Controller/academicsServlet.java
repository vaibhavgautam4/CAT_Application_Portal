package com.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.Academics;
import com.dao.RegistrationDAO;
import com.utilities.UniqueID;

/**
 * Servlet implementation class academicsServlet
 */
@WebServlet("/academicsServlet")
public class academicsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public academicsServlet() {
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
		String schoolName10 = request.getParameter("schoolName10");
		String schoolBoard10 = request.getParameter("schoolBoard10");
		String per10 = request.getParameter("percentage10");
		double percentage10 = Double.parseDouble(per10);
		String schoolName12 = request.getParameter("schoolName12");
		String schoolBoard12 = request.getParameter("schoolBoard12");
		String per12 = request.getParameter("percentage12");
		double percentage12 = Double.parseDouble(per12);
		String collegeName = request.getParameter("collegeName");
		String collegeCourse = request.getParameter("collegeCourse");
		String collegeSpecialization = request.getParameter("collegeSpecialization");
		String cgpa = request.getParameter("collegeCGPA");
		double collegecgpa = Double.parseDouble(cgpa);
	    
		int status = 0;
		
		int id = (Integer)request.getSession().getAttribute("username");
		
		Academics ob = new Academics(id,schoolName10,schoolBoard10,percentage10,schoolName12,schoolBoard12,percentage12,collegeName,collegeCourse,collegeSpecialization,collegecgpa);
		RegistrationDAO red = new RegistrationDAO();
		status = red.academicDetails(ob);
		if(status>0) {
			int s1 = red.setAcademicsFlag(id);
			request.setAttribute("status2", "filled");
			RequestDispatcher rd = request.getRequestDispatcher("dashboard.jsp");
			rd.forward(request, response);
//			response.sendRedirect("dashboard.jsp");
		} else {
			request.setAttribute("errorMessage", "Academics Data is not saved!");
			RequestDispatcher rd = request.getRequestDispatcher("academics.jsp");
			rd.include(request, response);
		}
	}

}
