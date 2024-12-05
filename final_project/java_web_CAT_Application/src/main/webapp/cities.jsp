<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>



<html lang="en">

<head>

 <meta charset="ISO-8859-1">

 <meta name="viewport" content="width=device-width, initial-scale=1.0">

 <title>Exam City Selection</title>
 <link rel="icon" type="image/x-icon" href="images/favicon.ico">

 <link rel="stylesheet" href="c_style.css">

</head>

<body>

 <!-- Navbar Section (Reused from previous code) -->

 <header>

 <nav class="navbar">

  <div class="nav-logo">

  <h1>CAT Application Portal</h1>

  </div>

 

 </nav>

 </header>

 <!-- Exam City Selection Section -->
 
 <form action="cityServlet" method="get">

 <section class="exam-city-selection" id="exam-cities" style="padding:80px">

 <h2>Select Your Preferred Exam Cities</h2>

 <p>Please choose four different cities for center allotment. Select in order of preference.</p>
 
 <div class="city-selection-container">

  <div class="city-box">

  <label for="city1">First Preference</label>

  <select id="city1" name="city1">

   <option value="">Select City</option>

   <option value="Mumbai">Mumbai</option>

   <option value="Delhi">Delhi</option>

   <option value="Bangalore">Bangalore</option>

   <option value="Kolkata">Kolkata</option>
   
   <option value="Chennai">Chennai</option>

   <option value="Hyderabad">Hyderabad</option>

   <option value="Indore">Indore</option>

   <option value="Ahemdabad">Ahemdabad</option>
   

   <!-- Add more options as needed -->

  </select>

  </div>

  <div class="city-box">

  <label for="city2">Second Preference</label>

  <select id="city2" name="city2">

   <option value="">Select City</option>

   <option value="Mumbai">Mumbai</option>

   <option value="Delhi">Delhi</option>

   <option value="Bangalore">Bangalore</option>

   <option value="Kolkata">Kolkata</option>
   
   <option value="Chennai">Chennai</option>

   <option value="Hyderabad">Hyderabad</option>

   <option value="Indore">Indore</option>

   <option value="Ahemdabad">Ahemdabad</option>
   

  </select>

  </div>

  <div class="city-box">

  <label for="city3">Third Preference</label>

  <select id="city3" name="city3">

  <option value="">Select City</option>

   <option value="Mumbai">Mumbai</option>

   <option value="Delhi">Delhi</option>

   <option value="Bangalore">Bangalore</option>

   <option value="Kolkata">Kolkata</option>
   
   <option value="Chennai">Chennai</option>

   <option value="Hyderabad">Hyderabad</option>

   <option value="Indore">Indore</option>

   <option value="Ahemdabad">Ahemdabad</option>
   

  </select>

  </div>

  <!--  <div class="city-box">

  <label for="city4">Fourth Preference</label>

  <select id="city4" name="city4">

   <option value="">Select City</option>

   <option value="Mumbai">Mumbai</option>

   <option value="Delhi">Delhi</option>

   <option value="Bangalore">Bangalore</option>

   <option value="Kolkata">Kolkata</option>

   <!-- Add more options as needed

  </select>

  </div> -->

 </div>
 
 <% String errorMessage = (String)request.getAttribute("errorMessage");
    		if(errorMessage != null){
    		%>
    		
    <p style="color: red"><%= errorMessage %></p>
    <% } %>

 <!-- Confirm Button -->

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

  color: #ffffff;

 margin-top:250px; font-size: 16px;" type="submit" class="btn confirm-btn">Confirm Selection</button>

 </section>
 
 
 
 </form>

<!-- <div style="display:grid; padding:60px;"></div> --> 


 <!-- Footer Section -->

<footer style=" text-align: center;

  padding: 10px;
  
  margin-top:20px;

  background-color: #333;

  color: #ffffff;

  font-size: 0.9em;
  
  ">

  <p>&copy; 2024 CAT Application Portal. All rights reserved.</p>

 </footer>

 <script>

  function toggleAnswer(id) {

   const answer = document.getElementById(id);

   answer.style.display = answer.style.display === 'none' ? 'block' : 'none';

  }

 <script src="c_script.js">
 
 <script>

 const cityDropdowns = document.querySelectorAll('.city-dropdown');

 const submitBtn = document.getElementById('submitBtn');

 const errorMessage = document.getElementById('errorMessage');



 function validateCities() {

   const selectedCities = [];

   let isValid = true;

   errorMessage.textContent = '';



   cityDropdowns.forEach((dropdown) => {

     const selectedValue = dropdown.value;

     if (selectedValue && selectedCities.includes(selectedValue)) {

       isValid = false;

       errorMessage.textContent = 'You cannot select the same city more than once!';

     }

     if (selectedValue) selectedCities.push(selectedValue);

   });



   // Enable or disable the submit button

   submitBtn.disabled = !isValid || selectedCities.length !== cityDropdowns.length;

 }



 // Add change event listener to all dropdowns

 cityDropdowns.forEach((dropdown) => {

   dropdown.addEventListener('change', validateCities);

 });



 // Submit button click handler

 submitBtn.addEventListener('click', () => {

   alert('Form submitted successfully!');

   //

You can perform further actions like sending data to the server here.

 });

</script>
 
 </script>

</body>

</html>





