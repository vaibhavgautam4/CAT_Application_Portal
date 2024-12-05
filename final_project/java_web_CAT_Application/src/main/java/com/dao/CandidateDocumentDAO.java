package com.dao;

import java.sql.*;

import com.Bean.CandidateDocument;
import com.Connection.dbConnection;


public class CandidateDocumentDAO {
	public boolean uploadDocuments(CandidateDocument document) {
		  dbConnection dbcon = new dbConnection();
		 
		  

	    String sql = "INSERT INTO candidate_documents (candidate_id, profile_photo, aadhar_card, signature_photo) VALUES (?, ?, ?, ?)";

	    try 
	    {
	    	 Connection conn = dbcon.dbConnect();

	       PreparedStatement statement = conn.prepareStatement(sql);



	      statement.setInt(1, document.getCandidateId());

	      statement.setBytes(2, document.getProfilePhoto());

	      statement.setBytes(3, document.getAadharCard());

	      statement.setBytes(4, document.getSignaturePhoto());



	      int rowsInserted = statement.executeUpdate();
	      
	      conn.close();
	      return rowsInserted > 0; // Returns true if data is inserted successfully
	    }
	    
	    catch (SQLException e) {

	      e.printStackTrace(); // Log the error

	      return false; // Returns false if an error occurs

	    }

	  }



	  // Method to retrieve the documents from the database by candidate ID

	  public CandidateDocument getDocuments(int candidateId) {
		  dbConnection dbcon = new dbConnection();
		  

	    String sql = "SELECT profile_photo, aadhar_card, signature_photo FROM candidate_documents WHERE candidate_id = ?";

	    try 
	    {
	    	Connection conn = dbcon.dbConnect();
	    	
	  

	       PreparedStatement statement = conn.prepareStatement(sql); 



	      statement.setInt(1, candidateId);

	      try (ResultSet resultSet = statement.executeQuery()) {

	        if (resultSet.next()) {

	          byte[] profilePhoto = resultSet.getBytes("profile_photo");

	          byte[] aadharCard = resultSet.getBytes("aadhar_card");

	          byte[] signaturePhoto = resultSet.getBytes("signature_photo");

	          return new CandidateDocument(candidateId, profilePhoto, aadharCard, signaturePhoto);

	        }

	      }
	      conn.close();

	    } catch (SQLException e) {

	      e.printStackTrace(); // Log the error

	    }

	    return null; // Return null if no documents are found

	  }
}
