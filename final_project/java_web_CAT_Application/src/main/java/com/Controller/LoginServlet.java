package com.Controller;

import com.Bean.Registration;
import com.Bean.dataFilled;
import com.dao.RegistrationDAO;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.utilities.*;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
		
	        String id = request.getParameter("number");
	        String password = request.getParameter("password");
	        System.out.println(id);
	        System.out.println(password);
	        int cid = Integer.parseInt(id);
	        System.out.println(cid);
	        
	        if(cid == 11 && password.equals("admin"))
	        {
	        	HttpSession sess = request.getSession();
	        	sess.setAttribute("username",11);
	        	sess.setMaxInactiveInterval(30*60);
	        	response.sendRedirect("AdminContinue.jsp");
	        }
	        else
	        {
	        
//	        String password = request.getParameter("password");
	        RegistrationDAO dao = new RegistrationDAO();
	        Registration candidate = dao.login(cid, password);
	        
	        if (candidate != null) {
	        	UniqueID uni = new UniqueID();
		        uni.setUniqueID(cid);
	        	HttpSession session = request.getSession();
	        	
	        	dataFilled df = new dataFilled();
                df.setCid(cid);
                dao.setDefaultCandidateFlag(df);
                dao.setregisterFlag(cid);
                System.out.println("register runned!");
	        	
	        	session.setAttribute("candidate", candidate);
	        	session.setAttribute("username", cid);
	        	
	        	session.setMaxInactiveInterval(30*60);
//	        	session.invalidate();
	        	response.sendRedirect("dashboard.jsp");
	        } else {
	        	
	        	request.setAttribute("errorMessage", "Invalid Credentials!");
	        	RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
	        	rd.include(request, response);
	        }

	}
	}
}




