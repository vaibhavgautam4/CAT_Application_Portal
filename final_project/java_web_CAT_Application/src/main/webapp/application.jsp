<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>

<html lang="en">

<head>

 <meta charset="ISO-8859-1">

 <meta name="viewport" content="width=device-width, initial-scale=1.0">

 <title>Candidate Application Form</title>

 <link rel="stylesheet" href="app_style.css">

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



 <!-- Candidate Application Form Section -->

 <section class="application-form" id="application-form">

   <h2>Candidate Application Form</h2>

   <p>Please fill in your details below to complete your application.</p>

   

   <form action="#" method="POST" class="form-container">

     <div class="form-group">

       <label for="name">Full Name</label>

       <input type="text" id="name" name="name" required>

     </div>

     <div class="form-group">

       <label for="email">Email</label>

       <input type="email" id="email" name="email" required>

     </div>

     <div class="form-group">

       <label for="phone">Phone Number</label>

       <input type="tel" id="phone" name="phone" required>

     </div>

     <div class="form-group">

       <label for="dob">Date of Birth</label>

       <input type="date" id="dob" name="dob" required>

     </div>

     <div class="form-group">

       <label for="qualification">Qualification</label>

       <input type="text" id="qualification" name="qualification" required>

     </div>

     <div class="form-group">

       <label for="experience">Experience</label>

       <textarea id="experience" name="experience" rows="4" placeholder="Describe your professional experience..."></textarea>

     </div>

     <button type="submit" class="btn confirm-btn" onsubmit="redirectToDocUpload()">Submit Application</button>

   </form>

 </section>



 <!-- Footer Section -->

 <footer class="footer">

   <p>&copy; 2024 CAT Application Portal. All rights reserved.</p>

 </footer>



 <script src="script.js"></script>

</body>

</html>
 