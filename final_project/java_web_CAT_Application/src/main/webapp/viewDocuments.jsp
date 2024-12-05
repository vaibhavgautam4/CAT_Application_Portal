<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="com.dao.CandidateDocumentDAO" %>

<%@ page import="com.Bean.CandidateDocument" %>

<%@ page import="java.util.List" %>

<%@ page import="java.util.Base64" %>

<%@ page import="java.io.IOException" %>

<%@ page import="javax.servlet.ServletException" %>

<%@ page import="javax.servlet.http.HttpServlet" %>

<%@ page import="javax.servlet.http.HttpServletRequest" %>

<%@ page import="javax.servlet.http.HttpServletResponse" %>



<!DOCTYPE html>

<html lang="en">

<head>

  <meta charset="UTF-8">

  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>View Candidate Documents</title>

</head>

<body>

  <h2>Candidate Documents</h2>

  <%

    try {

      int candidateId = 7200;



      // Create an object of CandidateDocumentsDAO

     
      
      CandidateDocumentDAO dao = new CandidateDocumentDAO();

       

      // Fetch the document using the getDocuments function

      CandidateDocument document = dao.getDocuments(candidateId);



      if (document != null) {

  %>

        <h3>Profile Photo:</h3>

        <img src="DisplayDocument?candidate_id=<%= candidateId %>&type=profile" width="150"><br><br>



        <h3>Aadhar Card:</h3>

        <img src="DisplayDocument?candidate_id=<%= candidateId %>&type=aadhar" width="300"><br><br>



        <h3>Signature Photo:</h3>

        <img src="DisplayDocument?candidate_id=<%= candidateId %>&type=signature" width="150"><br><br>

  <%

      } else {

  %>

        <p>Documents not found for the given candidate ID.</p>

  <%

      }

    } catch (Exception e) {

      

  %>

      <p>Error fetching documents. Please check the logs for more details.</p>

  <%

    }

  %>

</body>

</html>