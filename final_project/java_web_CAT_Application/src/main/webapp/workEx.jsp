<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>

<html lang="en">

<head>

 <meta charset="UTF-8">

 <meta name="viewport" content="width=device-width, initial-scale=1.0">

 <title>Work Experience</title>

 <link rel="icon" type="image/x-icon" href="images/favicon.ico">

 <link rel="stylesheet" href="">

 <style>

  /* General Styles */

* {

  box-sizing: border-box;

  margin: 0;

  padding: 0;

  font-family: Arial, sans-serif;

}

body {

  display: flex;
 
  justify-content: center;
 
  align-items: center;
 
  min-height: 90vh;
  min-width:90vh;
 
  background: linear-gradient(135deg, #e1f5fe, #b3e5fc, #81d4fa);
 
  color: #333;

}

/* Form Container */

.work-experience-form {

  background-color: #ffffff;

  padding: 20px;

  border-radius: 8px;

  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);

  width: 100%;

  max-width: 500px;

}

.work-experience-form h2 {

  margin-bottom: 10px;

  font-size: 1.5em;

  color: #333;

}

.work-experience-form p {

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
  position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   /* background-color: red; */
   color: #777;
   text-align: center;
}
 </style>

</head>

<body>

 <!-- Work Experience Form Section -->

 <section class="work-experience-form" id="work-experience-form">

 <h2>Work Experience</h2>

 <p>Please fill in your work experience details below to complete your application.</p>

 <form action="workExServlet" method="POST" class="form-container">

  <!-- Experience (in years) -->

  <div class="form-group">

  <label for="experience">Experience (in years)</label>

  <input type="number" id="experience" name="experience" min="0" step="0.5" required>

  </div>

  <!-- Company Name -->

  <div class="form-group">

  <label for="company">Company Name</label>

  <input type="text" id="company" name="company" required>

  </div>

  <!-- Buttons -->

  <div class="form-buttons">
  
  <% String errorMessage = (String)request.getAttribute("errorMessage");
    		if(errorMessage != null){
    		%>
    		
    <p style="color: red"><%= errorMessage %></p>
    <% } %>



  <button type="submit" class="btn next-btn" onclick="">Save and Next</button>

  </div>
  

 </form>

 </section>

 <!-- Footer Section -->

 <footer class="footer">

 <p>&copy; 2024 CAT Application Portal. All rights reserved.</p>

 </footer>

 <script src="script.js">

  // Function to navigate to the previous page

function goToPreviousPage() {

  // Redirect to the previous page or perform any other action

  alert("Redirecting to the previous page...");

  // window.location.href = 'previous_page.html'; // Uncomment to redirect

}

// Function to save form data and navigate to the next page

function saveAndNext() {

  // Collect form data

  const experience = document.getElementById("experience").value;

  const company = document.getElementById("company").value;

  // Example: Saving data to localStorage (for demo purposes)

  localStorage.setItem("experience", experience); 

  localStorage.setItem("company", company);

  alert("Form data saved. Moving to the next section...");

  // window.location.href = 'next_page.html'; // Uncomment to redirect

}

 </script>

</body>

</html>