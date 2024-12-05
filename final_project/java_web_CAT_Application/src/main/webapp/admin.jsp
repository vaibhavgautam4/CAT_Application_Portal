<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.List, com.Bean.Candidate, com.Bean.Academics, com.Bean.WorkEx, com.Bean.TestCity" %>
    
<%@ page import="javax.servlet.http.HttpSession" %> 


<%
    List<Candidate> personalDetailsList = (List<Candidate>) request.getAttribute("personalDetailsList");
    List<Academics> academicDetailsList = (List<Academics>) request.getAttribute("academicDetailsList");
    List<WorkEx> workExperienceList = (List<WorkEx>) request.getAttribute("workExperienceList");
    List<TestCity> testCityList = (List<TestCity>) request.getAttribute("testCityList");
%>



<!DOCTYPE html>

<html lang="en">

<head>

 <meta charset="ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Admin Dashboard</title>
<link rel="icon" type="image/x-icon" href="images/favicon.ico">


<style>
.logout-btn{
 padding: 8px 16px;

  margin-left: 10px;

  border: none;

  border-radius: 5px;

  font-weight: 600;

  cursor: pointer;

  transition: 0.3s;


}
/* Navbar Styling */

.navbar {

 display: flex;

 justify-content: space-between;

 align-items: center;

 padding: 15px 50px;

 background-color: #003366;



 top: 0;

 z-index: 10;

 box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);

 }

 

</style>

</head>

<body style="display: flex;
flex-direction:column;
min-height:100vh;
margin:0;">
<header>
<nav class="navbar">

        <div style="color:white; font-size:30px;"class="navbar-brand">CAT Application Portal</div>
         <button id="logoutButton" class="logout-btn" onclick="location.href = 'AdminLogoutServlet'">Logout</button>
            </nav>

</header>
	

        
        


<%
     // Fetch the session, do not create a new one
    
    // Check if the session exists and if the user is logged in as admin
    if (session == null || session.getAttribute("username") == null || !"11".equals(session.getAttribute("username").toString())) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
	


<div class="dashboard-container">

  <h1 style="text-align:center">Admin Dashboard</h1>

  <div id="studentList"></div>
  
  <%
  if(personalDetailsList.size() != 0){
  for (int i = 0; i < personalDetailsList.size(); i++) {
      Candidate personalDetails = personalDetailsList.get(i);
      Academics academicDetails = academicDetailsList.get(i);
      WorkEx workExperience = workExperienceList.get(i);
      TestCity testCity = testCityList.get(i);
%>
  




  <div class="container" style="min-width:700px;
    border:2px solid grey;
  
  ">
 
 <h3>Candidate ID : <%= personalDetails.getCid() %></h3>
    
    


 <div style="border:1.5px solid grey;
   border-radius:10px;
   padding:15px;
 
 ">
 
  <h2 class="ar">Personal Details</h2>

    <p>Title: <%= personalDetails.getTitle() %></p>

    <p>First Name: <%= personalDetails.getFname() %></p>

    <p>Middle Name: <%= personalDetails.getMname() %></p>

    <p>Last Name: <%= personalDetails.getLname() %></p>

    <p>Date of Birth: <%= personalDetails.getDob() %></p>

    <p>Gender: <%= personalDetails.getGender() %></p>

    <p>State: <%= personalDetails.getState() %></p>

    <p>Nationality: <%= personalDetails.getNationality() %></p>

    <p>Father's Name: <%= personalDetails.getFather() %></p>

    <p>Aadhaar Number: <%= personalDetails.getAadhar() %></p>
    
 </div>   

   
<div style="border:1.5px solid grey;
   border-radius:10px;
   padding:15px;
 
 ">
<h2 class="ar">Academic Details</h2>

    <p>10th School Name: <%= academicDetails.getSchoolName10() %></p>

    <p>10th Board: <%= academicDetails.getSchoolBoard10() %></p>

    <p>10th Percentage: <%= academicDetails.getPercentage10() %></p>

    <p>12th School Name: <%= academicDetails.getSchoolName12() %></p>

    <p>12th Board: <%= academicDetails.getSchoolBoard12() %></p>

    <p>12th Percentage: <%= academicDetails.getPercentage12() %></p>

    <p>College Name: <%= academicDetails.getCollegeName() %></p>

    <p>College Course: <%= academicDetails.getCollegeCourse() %></p>

    <p>Specialization: <%= academicDetails.getCollegeSpecialization() %></p>

    <p>CGPA: <%= academicDetails.getCollegeCGPA() %></p>

</div>


    
<div style="border:1.5px solid grey;
   border-radius:10px;
   padding:15px;
 
 " >

 <h2 class="ar">Work Experience</h2>

    <p>Years of Experience: <%= workExperience.getExperience() %></p>

    <p>Company: <%= workExperience.getCompany() %></p>



</div>

   
<div style="border:1.5px solid grey;
   border-radius:10px;
   padding:15px;
 
 ">
 <h2 class="ar">Test City Preferences</h2>

    <p>Preferred City 1: <%= testCity.getCity1() %></p>

    <p>Preferred City 2: <%= testCity.getCity2() %></p>

    <p>Preferred City 3: <%= testCity.getCity3() %></p>
</div>

   
    <form action="AdminClickServlet" method="POST">
    <input type="hidden" name="cid" value="<%= personalDetails.getCid() %>">
    <button style=" padding: 12px 20px;

  font-size: 1em;

  font-weight: bold;

  color: #003366;

  background: #ffffff;

  border: none;

  border-radius: 8px;

  margin: 10px 0;

  transition: all 0.3s ease;

  cursor: pointer;

  box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
    background: #f9b233;

  color: #ffffff;"
    type="submit">Approve</button>
</form>
    
  </div>
<%
        }
  }
  else{
	  
  
    %>
    <p style="color: red; font-size:20px; font-weight: 800; display:grid; text-align: center;">No Candidates Available for Approval. </p>
    
    <% } %>
  
 </div>
<footer style="
   display:absolute;
   bottom:0;
   width:100%;
   text-align:center;
   padding:10px 0;">

 <p>&copy; 2024 CAT Application Portal. All rights reserved.</p>
 </footer>
 
</body>

</html>
