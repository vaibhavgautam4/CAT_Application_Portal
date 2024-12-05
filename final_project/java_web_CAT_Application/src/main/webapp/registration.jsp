<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>Student Registration</title>
  <link rel="icon" type="image/x-icon" href="images/favicon.ico">

  <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<div class="container">

  <h2>Student Registration</h2>

  <form action="register" method="post" onsubmit="return validateForm()">



  <label for="name">Candidate Name<span style="color:red;">*</span></label>

  <input type="text" id="name" name="name" placeholder="Your full name..." required>



  <label for="email">Email<span style="color:red;">*</span></label>

  <input type="email" id="email" name="email" placeholder="Your email.." required>



  <label for="number">Phone Number<span style="color:red;">*</span></label>

  <input type="number" id="number" name="number" placeholder="9876543210" required>



  <label for="password">Password<span style="color:red;">*</span></label>

  <input type="password" id="password" name="password" placeholder="Choose a password...">



  <label for="conf_password">Confirm Password<span style="color:red;">*</span></label>

  <input type="password" id="conf_password" name="conf_password" placeholder="Re-enter password..." required>

 <div style="font-size:12px; margin-top:-15px;">

 <ul>Password Must Contain At Least:
 <li> One Numeric value</li>
 <li>one special character</li>
 <li>Min. 6 length</li>
 
 </ul>
  

  
   </div>

   <input type="submit" value="Register">
    
    <button style="color:white;
  padding: 8px 16px;
  background-color: orange;
  
  border: none;

  border-radius: 5px;

  font-weight: 600;

  cursor: pointer;

"  onclick="location.href='home.jsp'">Go To Home</button>

</form>



<script>


  function validateForm() {

    const email = document.getElementById("email").value;

    const phoneNumber = document.getElementById("number").value;

    const password = document.getElementById("password").value;

    const confPassword = document.getElementById("conf_password").value;



    // Validate email to contain "@gmail.com"

    if (!email.includes("@gmail.com")) {

      alert("Email must contain '@gmail.com'");

      return false;

    }



    // Validate phone number to be exactly 10 digits

    if (phoneNumber.length !== 10) {

      alert("Phone number must be exactly 10 digits.");

      return false;

    }



    // Validate that password and confirm password match

    if (password.length < 6) {
    	 alert("Password must be at least 6 characters long.");

         return false;


    }



    // Check for at least one uppercase letter

    const hasUppercase = /[A-Z]/.test(password);

    if (!hasUppercase) {

        alert("Password must contain at least one uppercase letter.");
             return false;
    }



    // Check for at least one numeric digit

    const hasNumber = /[0-9]/.test(password);

    if (!hasNumber) {
    	alert( "Password must contain at least one numeric value.");

        return false;

    }



    // Check for at least one special character

    const hasSpecialChar = /[!@#$%^&*(),.?":{}|<>]/.test(password);

    if (!hasSpecialChar) {

        alert("Password must contain at least one special symbol.");

    }



    // If all checks pass

   


    return true; // If all validations pass

  }
 

</script>

  

    

	<% String errorMessage = (String)request.getAttribute("errorMessage");
    		if(errorMessage != null){
    		%>
    		
    <p style="color: red"><%= errorMessage %></p>
    
    <% } %>
    
    <% String candidateId = (String)request.getAttribute("candidateId");
    		if(candidateId != null){
    		%>
    		<script >
    		alert("<%= candidateId %>")
    		window.location.href="home.jsp";</script>

    <% } %>

   

  </form>

  <div class="back-link">

    <a href="login.jsp">Already registered? Login here</a>

  </div>

</div>
</body>
</html>