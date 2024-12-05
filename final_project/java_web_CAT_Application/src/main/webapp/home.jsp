<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>CAT Application Portal</title>

  <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/images/favicon.ico">

  <link rel="stylesheet" href="home.css">

  <link rel="preconnect" href="https://fonts.googleapis.com">

  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">

  <script defer src="script.js"></script>

</head>
<body>
	<!-- Navbar Section -->

  <header>

    <nav class="navbar">

      <div class="nav-logo">

        <h1>CAT Application Portal</h1>

      </div>

      <ul class="nav-links">

        <li><a href="#home" onclick="location.href='home.jsp'">Home</a></li>

        <li><a href="#about" onclick="scrollToSection('about')">About Us</a></li>

        <li><a href="#contact_us.html" onclick="location.href='contact_us.jsp'">Contact Us</a></li>

      </ul>

      <div class="nav-actions">

        <button class="btn login-btn" onclick="location.href='login.jsp'">Login</button>

        <button class="btn register-btn" onclick="location.href='registration.jsp'">Register</button>

      </div>
  
    </nav>

  </header>

  <!-- Search Section -->

  <section class="search-section">

    <h2>Welcome to the CAT Application Portal</h2>

    <input type="text" placeholder="Explore more..." id="search-bar">

  </section>

  <!-- Main Section -->

  <section class="main-section">

    <div class="welcome-message">

      <h2>Start Your CAT Journey Here</h2>

      <p>Register now to secure your spot for the upcoming CAT exam. Embark on a journey towards a successful career in management and business.</p>

      <p class="highlighted">Get ready to showcase your skills and take the first step towards your dream college.</p>

      <br>

      <button class="explore-btn" onclick="location.href='contact_us.jsp'">Contact Us</button>

    </div>

    <div class="main-image">

      <img  src="https://i.pinimg.com/originals/03/de/a8/03dea8959e882ef1c082f44f82c42c68.jpg" alt="CAT Exam Illustration">

    </div>

  </section>

<!-- Upcoming Exam Section -->

  <!-- Upcoming Exam Section -->

  <section class="upcoming-exams-section">

    <!-- Upcoming Exam Dates -->

    <div class="upcoming-dates">

      <h3>Upcoming Exam Dates</h3>

      <div class="exam-schedule">

        <div class="exam-month">

          <h4>November 2023</h4>

          <ul class="exam-dates">

            <li>November 28, 2023</li>

          </ul>

        </div>

        <div class="exam-month">

          <h4>December 2023</h4>

          <ul class="exam-dates">

            <li>December 12, 2023</li>

          </ul>

        </div>

      </div>

    </div>

    <!-- Registration and Login Buttons -->

    <div class="exam-actions">

      <h3>Get Started with CAT Application</h3>

      <p>New candidates can register to apply, while registered candidates can log in to manage their application.</p>

      
      <button id="register-btn" class="btn register-btn" onclick="location.href='registration.jsp'">Register Now</button>

    

      <button id="login-btn" class = "btn login-btn" onclick="location.href='login.jsp'">Login</button>

    </div>

  </section>

  <!-- About Us Section -->

  <section class="about-section" id="about">

    <h3>About CAT Examination</h3>

    <p>The Common Admission Test (CAT) is India's premier management entrance exam conducted annually by the Indian Institutes of Management (IIMs). It serves as a gateway to management programs across IIMs and other top B-schools. Key highlights of CAT:</p>

    <ul class="bullet-points">

      <li>Aptitude test assessing Quantitative Ability, Verbal Ability, and Logical Reasoning.</li>

      <li>Rigorous selection process involving Personal Interviews, Writing Ability Tests, and Group Discussions.</li>

      <li>Computer-based exam conducted once a year.</li>

    </ul>

    <h3>About Indian Institutes of Management (IIMs)</h3>

    <p>IIMs are India’s leading institutions for quality management education and research. They offer a range of programs:</p>

    <ul class="bullet-points">

      <li><b>Post Graduate Programmes:</b> Two-year residential programs in management.</li>

      <li><b>Doctoral Programmes:</b> Fellow or Ph.D. programs for advanced management research.</li>

      <li><b>Executive Education:</b> Specialized programs for working professionals.</li>

    </ul>

    <p>Admissions to IIMs are based on merit and include:</p>

    <ul class="bullet-points">

      <li>Scores in the CAT examination.</li>

      <li>Reserved seats for SC, ST, NC-OBC, EWS, and Persons with Benchmark Disabilities.</li>

      <li>Financial scholarships for deserving students in need of support.</li>

    </ul>

  </section>

  <!-- Footer Section -->

  <footer class="footer">

    <p>&copy; 2024 CAT Application Portal. All rights reserved.</p>

  </footer>
	
</body>
</html>