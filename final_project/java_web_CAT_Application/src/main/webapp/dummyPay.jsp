<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Processing..</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
<style>

#timer { 
            font-size: 48px; 
            color: #ff0000; 
            display: none;
        } 

body{
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    font-family: Arial, sans-serif; 
            text-align: center; 
            margin-top: 50px; 
}
.loader {
    /* align: center; */
    /* display: flex; */
    /* flex-direction: column; */
    border: 16px solid #f3f3f3;
    border-radius: 50%;
    border-top: 16px solid #C6E7FF;
    border-bottom: 16px solid #C6E7FF;
    width: 120px;
    height: 120px;
    -webkit-animation: spin 2s linear infinite;
    animation: spin 2s linear infinite;
}

@-webkit-keyframes spin {
  0% { -webkit-transform: rotate(0deg); }
  100% { -webkit-transform: rotate(360deg); }
}

@keyframes spin {
  0% { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
}
</style>
</head>
<body>
    <h2>Payment in progress..</h2>

    <div class="loader"></div>

    <div id="timer">00:05</div> <!-- Starting time --> 

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
                    window.location.href = "paymentSuccess.jsp";
                }
                
            } 
        }, 1000); 
    </script> 
</body>
</html>