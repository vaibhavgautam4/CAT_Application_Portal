<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<html lang="en">

<head>

  <meta charset="ISO-8859-1">

  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>Fee Payment</title>

  <link rel="icon" type="image/x-icon" href="images/favicon.ico">

  <link rel="stylesheet" href="styles.css">

</head>

<body>

<%

	
	if(session == null || session.getAttribute("username") == null || session.getAttribute("candidate") == null){
		response.sendRedirect("login.jsp");
		return;
	}
	
	
	%>

  <div class="container">

    <h2>Fee Payment</h2>

    <form id="paymentForm" action="feePaymentServlet" onsubmit="return validateForm()">

      <label for="cardNumber" >Credit/Debit Card Number:</label>

      <input type="number" id="cardNumber" placeholder="Enter card number" pattern="\d{16}" maxlength="16" required ><br><br>

      <label for="expiry">Expiry Date:</label>

      <input type="text" id="expiry" placeholder="MM/YY"  maxlength="5" required><br><br>

      <label for="cvv">CVV:</label>

      <input type="text" id="cvv" placeholder="123" maxlength="3" required><br><br>

      <label for="amount">Amount:</label>

      <input type="text" id="amount" value="2000" readonly><br><br>

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

  color: #ffffff;"type="submit" onsubmit="dummyPay.jsp">Pay Now</button>

    </form>

    <div id="paymentMessage"></div>

  </div>

 <script>

  function validateForm() {

    const cardNumber = document.getElementById("cardNumber").value;

    const expiry = document.getElementById("expiry").value;

    const cvv = document.getElementById("cvv").value;



    // Validate card number (12 digits only)

    if (!/^\d{16}$/.test(cardNumber)) {

      alert("Card number must be exactly 16 digits.");

      return false;

    }



    // Validate expiry date (MM/YY format)

    const expiryRegex = /^(0[1-9]|1[0-2])\/\d{2}$/;

    if (!expiryRegex.test(expiry)) {

      alert("Expiry date must be in MM/YY format.");

      return false;

    }



    // Check if expiry date is in the future

    const [month, year] = expiry.split("/").map(Number);

    const currentDate = new Date();

    const currentMonth = currentDate.getMonth() + 1; // Months are 0-indexed

    const currentYear = currentDate.getFullYear() % 100; // Get last 2 digits of year



    if (year < currentYear || (year === currentYear && month < currentMonth)) {

      alert("Expiry date must be in the future.");

      return false;

    }



    // Validate CVV (3 digits only)

    if (!/^\d{3}$/.test(cvv)) {

      alert("CVV must be exactly 3 digits.");

      return false;

    }





    return true; // If all validations pass

  }

</script>

</body>

</html>





