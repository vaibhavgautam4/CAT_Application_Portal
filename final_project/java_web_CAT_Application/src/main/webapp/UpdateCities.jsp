<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import = "com.Bean.TestCity, com.dao.RegistrationDAO" %>
    
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

  <ul class="nav-links">

  <li><a href="#home">Home</a></li>

  <li><a href="#about">About Us</a></li>

  <li><a href="#exam-cities">Exam Cities</a></li>

  <li><a href="#contact">Contact Us</a></li>

  </ul>

  <div class="nav-actions">

  <button class="btn login-btn">Login</button>

  <button class="btn register-btn">Register</button>

  </div>

 </nav>

 </header>

 <!-- Exam City Selection Section -->
 
 <form action="UpdateCityServlet" method="get">

 <section class="exam-city-selection" id="exam-cities">

 <h2>Select Your Preferred Exam Cities</h2>

 <p>Please choose four different cities for center allotment. Select in order of preference.</p>
 
 <div class="city-selection-container">

  <div class="city-box">
  
  <% 	 int id = (Integer)request.getSession().getAttribute("username");
		 RegistrationDAO dao = new RegistrationDAO();
		 TestCity tc = dao.getTestCity(id);
  		 String city1 = tc.getCity1();
		 String city2 = tc.getCity2();
		 String city3 = tc.getCity3();%>

  <label for="city1">First Preference</label>

  <select id="city1" name="city1">

   <option value="<%= city1 %>"><%= city1 %></option>

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

   <option value="<%= city2 %>"><%= city2 %></option>

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

  <label for="city3">Third Preference</label>

  <select id="city3" name="city3">

   <option value="<%= city3 %>"><%= city3 %></option>

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
  
  
  
  align-items:center;

  background: #ffffff;

  border: none;

  border-radius: 8px;

  margin: 90px 0;

  transition: all 0.3s ease;

  cursor: pointer;

  box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
    background: #f9b233;

  color: #ffffff;

 margin-top:250px; font-size: 16px;"
  type="submit" class="btn confirm-btn">Confirm Selection</button>

 </section>
 

 
 </form>

<!-- </section> --> 

 <!-- Footer Section -->

 <footer class="footer">

 <p>&copy; 2024 CAT Application Portal. All rights reserved.</p>

 </footer>

 

</body>

</html>





