package com.Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.RegistrationDAO;

@WebServlet("/AdminClickServlet")
public class AdminClickServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public AdminClickServlet() {
        super();
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the approved candidate ID from the request
    	int cid = Integer.parseInt(request.getParameter("cid"));
        RegistrationDAO r = new RegistrationDAO();
        r.setAdminFlag(cid);

        response.sendRedirect("AdminServlet");
//        RequestDispatcher dispatcher = request.getRequestDispatcher("admin.jsp");
//
//	    dispatcher.forward(request, response);

    }
}
