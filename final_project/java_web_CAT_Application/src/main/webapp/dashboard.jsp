<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="javax.servlet.http.HttpSession" %> 

<%@ page import ="com.Bean.dataFilled, com.dao.RegistrationDAO" %>   

<!DOCTYPE html>

<html lang="en">

<head>

     <meta charset="ISO-8859-1">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Student Dashboard</title>
    
    <link rel="icon" type="image/x-icon" href="images/favicon.ico">

    <link rel="stylesheet" href="styles_dash.css">

</head>

<body>

	<%

	
	if(session == null || session.getAttribute("username") == null || session.getAttribute("candidate") == null){
		response.sendRedirect("login.jsp");
		return;
	}
	
	
	%>

    <nav class="navbar">

        <div class="navbar-brand">CAT Application Portal</div>

        
        <button id="logoutButton" class="logout-btn" onclick="location.href = 'logoutServlet'">Logout</button>

    </nav>



    <main>
    
    <%
            RegistrationDAO dao = new RegistrationDAO();
            int cid = (Integer)request.getSession().getAttribute("username");
            dataFilled df = dao.getFlags(cid);
            boolean rf = df.getRegiserDone();
            boolean pf = df.getCandidateDone();
            boolean af = df.getAcademicsDone();
            boolean wf = df.getWorkDone();
            boolean phf = df.getPhotoDone();
            boolean cf = df.getCityDone();
            boolean payf = df.getPaymentDone();
            boolean admitf = df.getAdmitDone();
            boolean adminf = df.getAdmin();
            
            %>
            
            
            
            
            <% String status = ""; 
            String status2 = ""; 
            String status3 = ""; 
            String status4 = ""; 
            String status5 = ""; 
            String status6 = ""; 
            if(rf && pf && af && wf && phf && cf){
                status = "filled";
            }
            if(pf){
                status2 = "filled";
            }
            if(af){
                status3 = "filled";
            }
            if(wf){
                status4 = "filled";
            }
            if(phf){
                status5 = "filled";
            }
            if(cf){
                status6 = "filled";
            }
            
            %>

        <section id="status">
        
         <% String feeButton = "payment-btn";
            String admitcardButton = "admit-card-btn";
            String updateCity = "update-city";
            String admint = "";
            String admint2 = "";
            
            if(cf && admitf){
                updateCity = "update-city-change";
                payf = false;
            }
            
            
            if(admitf && adminf){
                admitcardButton = "admit-card-btn-change";
                
            }
            if(payf){
                feeButton = "payment-btn-change";
            }
            
            if(adminf){
                admint2 = "status-step-approved";
            }
            else
            {
            	admint = "status-step-rejected";
            }
            
            
            
            
            %>

            <h2>Application Status</h2>

            <div class="status-bar">

                <div class="status-step <%= admint %>">Not Approved</div>

                <div id="approved" class="status-step <%= admint2 %>">Approved</div>

            </div>

        </section>



        <section id="tabs">

            <h2>Complete Your Application</h2>

            <div class="tab-container">

                <button id="personalDetailsTab" class="tab <%= status2 %>" onclick="location.href='personal.jsp'">Personal Details</button>

                <button id="academicDetailsTab" class="tab <%= status3 %>" onclick="location.href='academics.jsp'">Academic Details</button>

                <button id="workExperienceTab" class="tab <%= status4 %>" onclick="location.href='workEx.jsp'">Work Experience</button>

                <button id="documentUploadTab" class="tab <%= status5 %>" onclick="location.href='doc.jsp'">Document Upload</button>

                <button id="testCityTab" class="tab <%= status6 %>" onclick="location.href='cities.jsp'">Test City</button>

                <button id="applicationReviewTab" class="tab <%= status %>" onclick="location.href='ReviewApplicationServlet'">Application Review</button>

            </div>
            
            

            <button id="feePaymentButton" class="payment-btn <%=feeButton %>" onclick="location.href = 'fees.jsp'">Pay Fee</button>
            
            <button id="UpdateTestCity" class="update-city <%=updateCity %>" onclick="location.href = 'UpdateCities.jsp'">Update Test Cities</button>

            <button id="viewAdmitCardButton" class="admit-card-btn <%= admitcardButton %>" onclick="location.href = 'AdmitCardServlet?cid'">View Admit Card</button>

        </section>



        <section id="support">

            <h2>Contact Support</h2>

            <p>If you need help, feel free to reach out to us.</p>

            <button id="contactUsButton" class="contact-us-btn" onclick="location.href = 'backToDashBoard.jsp'">Contact Us</button>

        </section>

    </main>

<footer style=" text-align: center;

  padding: 10px;
  
  margin-top:20px;

  background-color: #333;

  color: #ffffff;

  font-size: 0.9em;
  
  ">

  <p>&copy; 2024 CAT Application Portal. All rights reserved.</p>

 </footer>


    

</body>

</html>

