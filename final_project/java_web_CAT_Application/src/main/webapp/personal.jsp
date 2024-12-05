<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">

 <meta name="viewport" content="width=device-width, initial-scale=1.0">

 <title>Personal Details</title>

 <link rel="icon" type="image/x-icon" href="images/favicon.ico">

 <style>

  /* General Styles */

* {


  box-sizing: border-box;

  margin: 0;

  padding: 0;

  font-family: Arial, sans-serif;

}

body {
background: linear-gradient(135deg, #e1f5fe, #b3e5fc, #81d4fa);

  

  display: flex;
  
 margin-top:20px;
  flex-direction: column;

  align-items: center;

  justify-content: center;

  min-height: 100vh;
  

}

/* Form Container */

.personal-details-form {

  background-color: #ffffff;

  padding: 20px;

  border-radius: 8px;

  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);

  width: 100%;

  max-width: 650px;
  padding:50px;
  
}

.personal-details-form h2 {

  margin-bottom: 10px;

  font-size: 1.5em;

  color: #333;

}

.personal-details-form p {

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

.form-group input, .form-group select {

  width: 100%;

  padding: 8px;

  border-radius: 5px;

  border: 1px solid #ccc;

  font-size: 0.9em;

  outline: none;

}

.form-group input:focus, .form-group select:focus {

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
</head>
<body>

<%
if(session == null || session.getAttribute("username") == null){
	
	response.sendRedirect("login.jsp");
}
%>

<!-- Personal Details Form Section -->

 <section class="personal-details-form" id="personal-details-form">

 <h2>Personal Details</h2>

 <p>Please fill in your personal details below to complete your application.</p>

 <form action="personalServlet" method="POST"  onsubmit="return validatForm()">

  <!-- Title -->

  <div class="form-group">

  <label for="title">Title</label>

  <select id="title" name="title" required>

   <option value="">Select</option>

   <option value="Mr">Mr.</option>

   <option value="Ms">Ms.</option>

   <option value="Mrs">Mrs.</option>

  </select>

  </div>

  <!-- Name Fields -->

  <div class="form-group">

  <label for="fnome">First Name</label>

  <input type="text" id="fnome" name="fname" required onkeydown="preventSpace(event)" oninput="validateSingleWord(this)">

</div>



<div class="form-group">

  <label for="mname">Middle Name</label>

  <input type="text" id="mname" name="mname">

</div>



<div class="form-group">

  <label for="lname">Last Name</label>

  <input type="text" id="lname" name="lname" required onkeydown="preventSpace(event)" oninput="validateSingleWord(this)">

</div>



<!-- Date of Birth -->

<div class="form-group">

  <label for="dob">Date of Birth</label>

  <input type="date" id="dob" name="dob" required onchange="validateDOB()">

  <div id="dob-error" style="color: red; font-size: 12px;"></div>

</div>



<!-- Gender -->

<div class="form-group">

  <label for="gender">Gender</label>

  <select id="gender" name="gender" required>

    <option value="">Select</option>

    <option value="Male">Male</option>

    <option value="Female">Female

</option>

  </select>

</div>

  <!-- State Dropdown -->

  <div class="form-group">

  <label for="state">State</label>

  <select id="state" name="state" required>

   <option value="">Select State</option>

    <option value="Maharashtra">Maharashtra</option>

   <option value="Delhi">Delhi</option>

   <option value="Karnataka">Karnataka</option>

   <option value="WestBengal">West Bengal</option>
   
   <option value="TamilNadu">Tamil Nadu</option>

   <option value="Telangana">Telangana</option>

   <option value="UttarPradesh">Uttar Pradesh</option>

   <option value="Gujrat">Gujrat</option>

  </select>

  </div>

  <!-- Nationality -->

  <div class="form-group">

  <label for="nationality">Nationality</label>

  <input type="text" id="nationality" name="nationality" value="Indian" required>

  </div>

  <!-- Father/Guardian Name -->

  <div class="form-group">

  <label for="father">Father/Guardian Name</label>

  <input type="text" id="father" name="father" required>

  </div>

  <!-- Aadhaar Number -->

  <div class="form-group">

 <label for="aadhar">Aadhar Card Number</label>

  <input type="text" id="aadhar" name="aadhar" required maxlength="12" oninput="validateAadhar(this)">

  <div id="aadhar-error" style="color: red; font-size: 12px;"></div>

  </div>
  
  <% String errorMessage = (String)request.getAttribute("errorMessage");
    		if(errorMessage != null){
    		%>
    		
    <p style="color: red"><%= errorMessage %></p>
    <% } %>

  <!-- Buttons -->

  <div class="form-buttons">

  <button type="submit" class="btn next-btn" onsubmit="saveAndNext()">Save and Next</button>

  </div>

 </form>

 </section>

 <!-- Footer Section -->

 <footer class="footer">

 <p>&copy; 2024 CAT Application Portal. All rights reserved.</p>

 </footer>

 <script src="script.js">

 </script>

</body>
</html>