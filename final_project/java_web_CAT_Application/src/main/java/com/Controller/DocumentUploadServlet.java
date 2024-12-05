package com.Controller;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import java.io.*;

import com.Bean.CandidateDocument;
import com.dao.CandidateDocumentDAO;
import com.dao.RegistrationDAO;
import com.utilities.UniqueID;

import javax.servlet.annotation.*;



@WebServlet("/UploadDocuments")

@MultipartConfig(maxFileSize = 1024 * 1024 * 10) // 10MB max file size

public class DocumentUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

  private CandidateDocumentDAO dao = new CandidateDocumentDAO();



  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	  
	  int id = (Integer)request.getSession().getAttribute("username");
	  int candidateId = id;



    // Read the files using getPart()

    Part profilePhotoPart = request.getPart("profile_photo");

    Part aadharCardPart = request.getPart("aadhar_card");

    Part signaturePhotoPart = request.getPart("signature_photo");



    byte[] profilePhoto = getBytesFromPart(profilePhotoPart);

    byte[] aadharCard = getBytesFromPart(aadharCardPart);

    byte[] signaturePhoto = getBytesFromPart(signaturePhotoPart);



    // Store in the database

    CandidateDocument document = new CandidateDocument(candidateId, profilePhoto, aadharCard, signaturePhoto);

    boolean success = dao.uploadDocuments(document);
    
    RegistrationDAO reg = new RegistrationDAO();



    if (success) {
    	
    	int s1 = reg.setPhotoFlag(id);
    	
    	request.setAttribute("status4", "filled");
    	
    	RequestDispatcher rd = request.getRequestDispatcher("dashboard.jsp");
    	
    	rd.forward(request, response);

//      response.sendRedirect("viewDocuments.jsp?candidate_id=" + candidateId);

    } else {

//      response.getWriter().println("Failed to upload documents.");
    	
    	request.setAttribute("errorMessage", "Documents cannot be saved!");
		RequestDispatcher rd = request.getRequestDispatcher("doc.jsp");
		rd.include(request, response);

    }

  }



  // Helper method to convert Part to byte array

  private byte[] getBytesFromPart(Part part) throws IOException {

    try (InputStream inputStream = part.getInputStream()) {

      return inputStream.readAllBytes();

    }

  }

}
