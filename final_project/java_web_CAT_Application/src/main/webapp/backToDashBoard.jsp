<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>

<html lang="en">

<head>

 <meta charset="ISO-8859-1">

 <meta name="viewport" content="width=device-width, initial-scale=1.0">

 <title>CAT Support</title>
 <link rel="icon" type="image/x-icon" href="images/favicon.ico">

 <link rel="stylesheet" href="styles.css">

 <link rel="preconnect" href="https://fonts.googleapis.com">

 <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

 <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">

 <script defer src="centre_jss.js"></script>

</head>

<body>

<%

	
	if(session == null || session.getAttribute("username") == null || session.getAttribute("candidate") == null){
		response.sendRedirect("login.jsp");
		return;
	}
	
	
	%>

 <!-- Navbar Section -->

 <header>

  <nav class="navbar">

  

    <h1  style="color:white;"> CAT Application Portal</h1>

   
   <button id="bh" onclick="location.href='dashboard.jsp'" style="background-color:orange; 
 
  border-radius: 5px;

  font-weight: 600;

  cursor: pointer;

  transition: 0.3s;
border: none;
color: white;
padding: 12px 28px;
text-align: center;
text-decoration: none;
display: inline-block;
font-size: 12px;" type="button">Back to DashBoard</button>
    

  </nav>

 </header>

 <!-- Support Section -->

 <section style="margin-left:50px;" id="support-top" class="support-section">

  <h2>How Can We Help You?</h2>

  <p>If you have questions about the CAT application process, exam cities, registration, or anything else, check our FAQ below or reach out to our support team directly.</p>

  <div class="faq-container">

   <div class="faq-item">

    <h3 onclick="toggleAnswer('faq1')">1. How do I register for the CAT Exam?</h3>

    <p id="faq1" class="faq-answer">To register, click the "Register" button on the homepage, complete your details, and follow the instructions to finalize your registration.</p>

   </div>

   <div class="faq-item">

    <h3 onclick="toggleAnswer('faq2')">2. What documents are required for registration?</h3>

    <p id="faq2" class="faq-answer">You will need a valid ID, recent photograph, and academic records for verification purposes during registration.</p>

   </div>

   <div class="faq-item">

    <h3 onclick="toggleAnswer('faq3')">3. Can I change my exam city after registration?</h3>

    <p id="faq3" class="faq-answer">Exam city preferences can be updated before the application deadline. Contact support for assistance.</p>

   </div>

   <div class="faq-item">

    <h3 onclick="toggleAnswer('faq4')">4. How can I reset my password?</h3>

    <p id="faq4" class="faq-answer">Click "Forgot Password" on the login page and follow the steps to reset your password.</p>

   </div>

  </div>

 </section>

 <!-- Contact Support Section -->

 <section style="margin-left:50px;" class="contact-support">

  <h3>Contact Support</h3>

  <p>If you didn't find an answer, contact our support team via email or phone. Our support team is here to help you during office hours.</p>

  <ul class="contact-details">

   <li><b>Email:</b> support@catportal.com</li>

   <li><b>Phone:</b> +91 9876543210</li>

   <li><b>Office Hours:</b> Monday to Friday, 9:00 AM - 6:00 PM</li>

  </ul>

 </section>

 <footer class="footer">

  <p>&copy; 2024 CAT Application Portal. All rights reserved.</p>

 </footer>

 <script>

  function toggleAnswer(id) {

   const answer = document.getElementById(id);

   answer.style.display = answer.style.display === 'none' ? 'block' : 'none';

  }

 </script>

</body>

</html>



