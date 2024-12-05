
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>



<!DOCTYPE html>

<html lang="en">

<head>

  <meta charset="UTF-8">

  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>Review Application</title>

  <link rel="stylesheet" href="styles.css">

</head>

<body>

  <div class="container" style="min-width:700px;
    border:2px solid grey;
  
  ">

    <h1 style="text-align:center">Application Review</h1>
    
    
 <div style="border:1.5px solid grey;
   border-radius:10px;
   padding:15px;
 
 ">
 
  <h2 class="ar">Personal Details</h2>

    <p>Title: ${personalDetails.title}</p>

    <p>First Name: ${personalDetails.fname}</p>

    <p>Middle Name: ${personalDetails.mname}</p>

    <p>Last Name: ${personalDetails.lname}</p>

    <p>Date of Birth: ${personalDetails.dob}</p>

    <p>Gender: ${personalDetails.gender}</p>

    <p>State: ${personalDetails.state}</p>

    <p>Nationality: ${personalDetails.nationality}</p>

    <p>Father's Name: ${personalDetails.father}</p>

    <p>Aadhar Number: ${personalDetails.aadhar}</p>
    
 </div>   

   
<div style="border:1.5px solid grey;
   border-radius:10px;
   padding:15px;
 
 ">
<h2 class="ar">Academic Details</h2>

    <p>10th School Name: ${academicDetails.schoolName10}</p>

    <p>10th Board: ${academicDetails.schoolBoard10}</p>

    <p>10th Percentage: ${academicDetails.percentage10}</p>

    <p>12th School Name: ${academicDetails.schoolName12}</p>

    <p>12th Board: ${academicDetails.schoolBoard12}</p>

    <p>12th Percentage: ${academicDetails.percentage12}</p>

    <p>College Name: ${academicDetails.collegeName}</p>

    <p>College Course: ${academicDetails.collegeCourse}</p>

    <p>Specialization: ${academicDetails.collegeSpecialization}</p>

    <p>CGPA: ${academicDetails.collegeCGPA}</p>

</div>


    
<div style="border:1.5px solid grey;
   border-radius:10px;
   padding:15px;
 
 " >

 <h2 class="ar">Work Experience</h2>

    <p>Years of Experience: ${workExperience.experience}</p>

    <p>Company: ${workExperience.company}</p>



</div>

   
<div style="border:1.5px solid grey;
   border-radius:10px;
   padding:15px;
 
 ">
 <h2 class="ar">Test City Preferences</h2>

    <p>Preferred City 1: ${testCity.city1}</p>

    <p>Preferred City 2: ${testCity.city2}</p>

    <p>Preferred City 3: ${testCity.city3}</p>
</div>



   
    
    <form action="redirecting" method="get">
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

  color: #ffffff;" type="submit" >Save and next</button>
    </form>
  </div>
  <footer style="position: relative;
   color: white;
   text-align: center;
   color: #777;
   text-align: center;">

 <p>&copy; 2024 CAT Application Portal. All rights reserved.</p>

 </footer>

</body>

</html>

