<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>

<html lang="en">

<head>

 <meta charset="UTF-8">

 <meta name="viewport" content="width=device-width, initial-scale=1.0">

 <title>Academic Details</title>

 <style>

  /* General Styles */

* {

  box-sizing: border-box;

  margin: 0;

  padding: 0;

  font-family: Arial, sans-serif;

}

body {

  background-color: #f4f4f9;

  display: flex;

  flex-direction: column;

  align-items: center;

  justify-content: center;

  min-height: 100vh;
   display: flex;
 
  justify-content: center;
 
  align-items: center;
 
  min-height: 90vh;
  min-width:90vh;
 
  background: linear-gradient(135deg, #e1f5fe, #b3e5fc, #81d4fa);
 
  color: #333;

}

/* Form Container */

.academic-details-form {

  background-color: #ffffff;

  padding: 20px;

  border-radius: 8px;

  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);

  width: 100%;

  max-width: 500px;

}

.academic-details-form h2 {

  margin-bottom: 10px;

  font-size: 1.5em;

  color: #333;

}

.academic-details-form p {

  font-size: 0.9em;

  color: #666;

  margin-bottom: 20px;

}

/* Form Groups */

.form-group {

  margin-bottom: 15px;

}

.form-group label {

  display: block;

  font-weight: bold;

  margin-bottom: 5px;

  color: #333;

}

.form-group input {

  width: 100%;

  padding: 8px;

  border-radius: 5px;

  border: 1px solid #ccc;

  font-size: 0.9em;

  outline: none;

}

.form-group input:focus {

  border-color: #007BFF;

}

/* Buttons */

.form-buttons {

  display: flex;

  justify-content: space-between;

  margin-top: 20px;

}

.btn {

  padding: 10px 20px;

  border: none;

  border-radius: 5px;

  cursor: pointer;

  font-size: 0.9em;

}

.prev-btn {

  background-color: #6c757d;

  color: white;

}

.prev-btn:hover {

  background-color: #5a6268;

}

.next-btn {

  background-color: #007BFF;

  color: white;

}

.next-btn:hover {

  background-color: #0056b3;

}

/* Footer */

.footer {

  margin-top: 20px;

  text-align: center;

  font-size: 0.8em;

  color: #777;

}

 </style>

</head>

<body>


 <!-- Academic Details Form Section -->

 <section class="academic-details-form" id="academic-details-form">

 <h2>Academic Details</h2>

 <p>Please fill in your academic details below to complete your application.</p>

 <form action="academicsServlet" method="POST" class="form-container">

  <!-- 10th Grade Details -->

  <div class="form-group">

  <label for="schoolName10">School Name (10th)</label>

  <input type="text" id="schoolName10" name="schoolName10" required oninput="validateAlphabets(this)">

</div>



<div class="form-group">

  <label for="schoolBoard10">School Board (10th)</label>

  <input type="text" id="schoolBoard10" name="schoolBoard10" required oninput="validateAlphabets(this)">

</div>



<div class="form-group">

  <label for="percentage10">Percentage (10th)</label>

  <input type="number" id="percentage10" name="percentage10" required max="100" oninput="validatePercentage(this)">

</div>



<!-- 12th Grade Details -->

<div class="form-group">

  <label for="schoolName12">School Name (12th)</label>

  <input type="text" id="schoolName12" name="schoolName12" required oninput="validateAlphabets(this)">

</div>



<div class="form-group">

  <label for="schoolBoard12">School Board (12th)</label>

  <input type="text" id="schoolBoard12" name="schoolBoard12" required oninput="validateAlphabets(this)">

</div>



<div class="form-group">

  <label for="percentage12">Percentage (12th)</label>

  <input type="number" id="percentage12" name="percentage12" required max="100" oninput="validatePercentage(this)">

</div>



<!-- College Details -->

<div class="form-group">

  <label for="collegeName">College Name</label>

  <input type="text" id="collegeName" name="collegeName" required>

</div>



<div class="form-group">

  <label for="collegeCourse">College Course</label>

  <input type="text" id="collegeCourse" name="collegeCourse" required>

</div>



<div class="form-group">

  <label for="collegeSpecialization">Course Specialization</label>

  <input type="text" id="collegeSpecialization" name="collegeSpecialization">

</div>



<div class="form-group">

  <label for="collegeCGPA">College CGPA</label>

  <input type="number" step="0.01" id="collegeCGPA" name="collegeCGPA" max="10" oninput="validateCGPA(this)">

</div>
  <!-- Buttons -->

  <div class="form-buttons">
  
  <% String errorMessage = (String)request.getAttribute("errorMessage");
    		if(errorMessage != null){
    		%>
    		
    <p style="color: red"><%= errorMessage %></p>
    <% } %>

  

  <button type="submit" class="btn next-btn">Save and Next</button>

  </div>

 </form>

 </section>

 <!-- Footer Section -->

 <footer class="footer">

 <p>&copy; 2024 CAT Application Portal. All rights reserved.</p>

 </footer>

 <!-- <script src="script.js"></script> -->
 
 

</body>

</html>
