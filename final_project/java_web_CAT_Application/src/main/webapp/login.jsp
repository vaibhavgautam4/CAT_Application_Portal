<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<%@ page import="java.io.PrintWriter" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Student Login</title>

    <link rel="icon" type="image/x-icon" href="images/favicon.ico">

    <link rel="stylesheet" type="text/css" href="styles.css">

</head>
<body>
<div class="container">

    <h2>Login</h2>

    <form action="LoginServlet" method="post">

        <label for="number">Candidate ID</label>

        <input type="number" id="number" name="number" placeholder="Your candidate ID.." required>



        <label for="password">Password</label>

        <input type="password" id="password" name="password" placeholder="Your password.." required>
        
        <% String errorMessage = (String)request.getAttribute("errorMessage");
    		if(errorMessage != null){
    		%>
    		
	    <p style="color: red"><%= errorMessage %></p>
	    <% } %>
	    
	    <% String candidateId = (String)request.getAttribute("candidateId");
	    		if(candidateId != null){
	    		%>
	    		
	    <p style="color: green"><%= candidateId %></p>
	    <% } %>

        <input type="submit" value="Login">

    </form>

    <div class="register-link">

        <a href="registration.jsp">Don't have an account? Register here</a>

    </div>

</div>

</body>
</html>