<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<html lang="en">

<head>

 <meta charset="ISO-8859-1">

  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>Document Upload</title>
  <link rel="icon" type="image/x-icon" href="images/favicon.ico">

  <link rel="stylesheet" href="doc_styles.css">

</head>

<body>

  <div class="container">

    <h2>Upload Documents</h2>

    <form action="UploadDocuments" method="POST" enctype="multipart/form-data">

    <label for="profile_photo">Profile Photo (JPEG):</label>

    <input type="file" name="profile_photo" accept="image/*" required><br><br>



    <label for="aadhar_card">Aadhar Card (JPEG):</label>

    <input type="file" name="aadhar_card" accept="image/jpeg" required><br><br>



    <label for="signature_photo">Signature Photo (JPEG):</label>

    <input type="file" name="signature_photo" accept="image/*" required><br><br>
    
    
    <% String errorMessage = (String)request.getAttribute("errorMessage");
    		if(errorMessage != null){
    		%>
    		
    <p style="color: red"><%= errorMessage %></p>
    <% } %>



    <button type="submit">Upload Documents</button>

  </form>

    <div id="message"></div>

  </div>
  
  <footer style="position: fixed;
margin-top: 20px;

  text-align: center;

  font-size: 0.8em;

  color: #777;
  
  background-color: linear-gradient(135deg, #e1f5fe, #b3e5fc, #81d4fa);
   
   text-align: center;" class="footer">

 <p>&copy; 2024 CAT Application Portal. All rights reserved.</p>

 </footer>

  <script src="script.js"></script>

</body>

</html>



