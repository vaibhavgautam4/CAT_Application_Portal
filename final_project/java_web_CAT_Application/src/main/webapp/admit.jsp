<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="com.dao.CandidateDocumentDAO" %>

<%@ page import="com.Bean.CandidateDocument" %>

<%@ page import="java.util.List" %>

<%@ page import="java.util.Base64" %>

<%@ page import="java.io.IOException, java.io.*" %>

<%@ page import="javax.servlet.ServletException" %>

<%@ page import="javax.servlet.http.HttpServlet, javax.servlet.http.HttpSession" %>

<%@ page import="javax.servlet.http.HttpServletRequest" %>

<%@ page import="javax.servlet.http.HttpServletResponse" %>

<!DOCTYPE html>

<html lang="en">

<head>

  <meta charset="ISO-8859-1">

 <meta name="viewport" content="width=device-width, initial-scale=1.0">

 <title>Download Admit Card</title>

 <link rel="stylesheet" href="styles1.css">

</head>

<body>

<%

	
	if(session == null || session.getAttribute("username") == null || session.getAttribute("candidate") == null){
		response.sendRedirect("login.jsp");
		return;
	}
	
	
	%>

 
<div class="container">

 <h1>Admit Card</h1>

 <!-- <p>Your admit card is ready for download.</p>

 <button id="downloadButton" onclick="redirectToDashboard()">Download Admit Card</button>

 <div id="admitCardMessage"></div> -->

<% int candidateId; 
  %>

 <div class="attribute">

  <div class="candidate-info">

  <div class="candidate_name row">

   <p>Candidate Name:</p>

   <div class="cname value">${personalDetails.title}<%out.print(" ");%>${personalDetails.fname}<%out.print(" ");%>${personalDetails.mname}<%out.print(" ");%>${personalDetails.lname}</div>

  </div>
  <div class="dob row">

   <p>Date of Birth:</p>

   <div class="dob value">${personalDetails.dob}</div>

  </div>

  <div class="father_name row">

   <p>Father's/Guardian's Name:</p>

   <div class="fatherName value">${personalDetails.father}</div>

  </div>

  <div class="exam_center row">

   <p>Exam Center:</p>

   <div class="examCity value">${testCity.city1}</div>

  </div>

  <div class="exam_center_address row">

   <p>Exam Center Address:</p>

   <div class="examCenterAdd value">123, Main Street, City</div>

  </div>

  <div class="exam_date row">

   <p>Exam Date:</p>

   <div class="examDate value">24th November, 2024</div>

  </div>

  <div class="exam_time row">

   <p>Exam Time:</p>

   <div class="examTime value">09:00 AM - 12:00 PM</div>

  </div>

  </div>

<% 
	
    try {

      
      candidateId = (Integer)session.getAttribute("username");
      
     
		//System.out.println(candidateId);


      // Create an object of CandidateDocumentsDAO

     
      
      CandidateDocumentDAO dao = new CandidateDocumentDAO();

       

      // Fetch the document using the getDocuments function

      CandidateDocument document = dao.getDocuments(candidateId);



      if (document != null) {

    	  %>

  <div class="photo">

  <img src="DisplayDocument?candidate_id=<%= candidateId %>&type=profile" alt="Candidate Photo" width=100><br><br>

  </div>

 </div>
<%

      } else {

  %>

        <p>Documents not found for the given candidate ID.</p>

  <%

      }

    } catch (Exception e) {

      e.printStackTrace();
    }
  %>
 
   <!-- Instructions div added here -->

   <div class="instructions">

    <h3>Instructions for Candidates:</h3>
  
    <ul>
  
    <li>Arrive at the exam center at least 30 minutes before the exam start time.</li>
  
    <li>Carry a valid photo ID along with this admit card for verification.</li>
  
    <li>Electronic devices, including mobile phones and calculators, are not allowed inside the exam hall.</li>
  
    <li>Follow the instructions of the invigilators at all times during the exam.</li>
  
    <li>Any form of cheating or misconduct will result in disqualification.</li>
  
    </ul>
  
   </div>
   <button class="button" onclick="location.href='dashboard.jsp'">Back to Dashboard</button>
 </div>




</body>

</html>