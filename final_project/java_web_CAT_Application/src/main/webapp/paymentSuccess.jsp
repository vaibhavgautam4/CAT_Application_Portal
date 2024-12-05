<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>

<html lang="en">

<head>
<meta charset="ISO-8859-1">


<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Payment Successful</title>
<link rel="icon" type="image/x-icon" href="images/favicon.ico">



<!-- CSS Styling -->

<style>

  * {

    box-sizing: border-box;

    margin: 0;

    padding: 0;

    font-family: Arial, sans-serif;

  }



  body {

    display: flex;

    justify-content: center;

    align-items: center;

    height: 100vh;

    background-color: #f0f0f0;

  }



  .container {

    text-align: center;

    padding: 20px;

    background-color: #fff;

    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);

    border-radius: 10px;

    width: 1000px;

    height: 50%;

   

    display: grid;

    align-items: center;

    justify-content: center;

  }
  #timer { 
            font-size: 48px; 
            color: #ff0000;
            visibility: hidden 
        } 


  .message {
    /* margin-top: 50px; */

    padding: 80px;

    width: 800px;

    height: 50%;

    font-size: 20px;

    font-weight: bold;

    color: #155724;

    background-color: #d4edda;

    border: 1px solid #c3e6cb;

    border-radius: 5px;

    display: flex;

    align-items: center;

    justify-content: center;

    flex-direction: column;

    gap: 10px;

  }



  .tick-icon {

    font-size: 24px;

    color: #28a745;

  }

</style>

</head>

<body>



<div class="container">

  <div id="message" class="message">

    <span class="tick-icon">&#10003;</span>

    Payment Successful

  </div>

</div>
<div id="timer" >00:05</div>
<script> 
  let timeLeft = 5; // Time in seconds (10 minutes) 
  const timerElement = document.getElementById('timer');

  const countdown = setInterval(() => { 
      let minutes = Math.floor(timeLeft / 60); 
      let seconds = timeLeft % 60;

      // Format time to be MM:SS 
      timerElement.textContent = `${minutes < 10 ? '0' : ''}${minutes}:${seconds < 10 ? '0' : ''}${seconds}`; 

      // Decrease time left by 1 second 
      timeLeft--; 

      // Stop the timer when it reaches zero 
      if (timeLeft < 0) { 
       
          clearInterval(countdown); 
          timerElement.textContent = "Time's up!"; 
          if(timerElement.textContent == "Time's up!"){
          window.location.href = "paymentSuccessServlet";
          }
      } 
  }, 1000); 
</script> 
</body>

</html>