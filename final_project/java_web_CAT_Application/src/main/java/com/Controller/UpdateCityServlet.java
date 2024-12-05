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

/**
 * Servlet implementation class UpdateCityServlet
 */
@WebServlet("/UpdateCityServlet")
public class UpdateCityServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateCityServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String city1 = request.getParameter("city1");
		String city2 = request.getParameter("city2");
		String city3 = request.getParameter("city3");
		System.out.println(city1 +" "+ city2 +" "+ city3);
		
        int status = 0;
		
		int id = (Integer)request.getSession().getAttribute("username");
		
		TestCity t = new TestCity(id, city1, city2, city3);
		RegistrationDAO reg = new RegistrationDAO();
		reg.printfunc();
		status = reg.updateTestCity(t);
		System.out.println(status);
		if(status>0) {
			request.setAttribute("status7", "filled");
            RequestDispatcher rd = request.getRequestDispatcher("dashboard.jsp");
			rd.forward(request, response);

//			response.sendRedirect("dashboard.jsp");
		} else {
			request.setAttribute("errorMessage", "Test City Data is not Updated!");
			RequestDispatcher rd = request.getRequestDispatcher("UpdateCities.jsp");
			rd.include(request, response);
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		

}
}
