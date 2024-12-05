package com.Controller;

import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.CandidateDocument;
import com.dao.CandidateDocumentDAO;
import com.utilities.UniqueID;

/**
 * Servlet implementation class DisplayDocument
 */
@WebServlet("/DisplayDocument")
public class DisplayDocument extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private CandidateDocumentDAO dao = new CandidateDocumentDAO();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DisplayDocument() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		UniqueID un = new UniqueID();
		int id = un.uniqueID();

    int candidateId = (Integer)request.getSession().getAttribute("username");

    String type = request.getParameter("type");

     

    CandidateDocument document = dao.getDocuments(candidateId);

    byte[] imageData = null;



    if (document != null) {

      if ("profile".equals(type)) {

        imageData = document.getProfilePhoto();

      } else if ("aadhar".equals(type)) {

        imageData = document.getAadharCard();

      } else if ("signature".equals(type)) {

        imageData = document.getSignaturePhoto();

      }

    }



    if (imageData != null) {

      response.setContentType("image/jpeg");

      OutputStream outputStream = response.getOutputStream();

      outputStream.write(imageData);

      outputStream.flush();

    } else {

      response.getWriter().println("No image found for the requested type.");

    }

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
