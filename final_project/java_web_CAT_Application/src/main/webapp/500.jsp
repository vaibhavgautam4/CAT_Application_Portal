<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en">

<head>

  <meta charset="UTF-8">

  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>500 Error</title>

  <link href="https://fonts.googleapis.com/css?family=Encode+Sans+Semi+Condensed:100,200,300,400" rel="stylesheet">

  <style>

    :root {

      --main-color: #eaeaea;

      --stroke-color: black;

      --button-color: #007bff;

      --button-hover-color: #0056b3;

    }



    body {

      background: var(--main-color);

      margin: 0;

      overflow: hidden;

      display: flex;

      flex-direction: column;

      align-items: center;

      justify-content: center;

      height: 100vh;

    }



    h1 {

      margin: 0;

      color: var(--stroke-color);

      font-family: 'Encode Sans Semi Condensed', Verdana, sans-serif;

      font-size: 10rem;

      line-height: 10rem;

      font-weight: 200;

      text-align: center;

    }



    h2 {

      margin: 20px 0 30px;

      font-family: 'Encode Sans Semi Condensed', Verdana, sans-serif;

      font-size: 1.5rem;

      font-weight: 200;

      text-align: center;

    }



    .gears {

      position: relative;

      margin: 20px 0;

      display: flex;

      justify-content: center;

    }



    .gear {

      position: relative;

      z-index: 0;

      width: 120px;

      height: 120px;

      margin: 0 15px;

      border-radius: 50%;

      background: var(--stroke-color);

    }



    .gear:before {

      position: absolute;

      left: 5px;

      top: 5px;

      right: 5px;

      bottom: 5px;

      z-index: 2;

      content: "";

      border-radius: 50%;

      background: var(--main-color);

    }



    .gear:after {

      position: absolute;

      left: 25px;

      top: 25px;

      z-index: 3;

      content: "";

      width: 70px;

      height: 70px;

      border-radius: 50%;

      border: 5px solid var(--stroke-color);

      box-sizing: border-box;

      background: var(--main-color);

    }



    .gear .bar {

      position: absolute;

      left: -15px;

      top: 50%;

      z-index: 0;

      width: 150px;

      height: 30px;

      margin-top: -15px;

      border-radius: 5px;

      background: var(--stroke-color);

    }



    .gear .bar:before {

      position: absolute;

      left: 5px;

      top: 5px;

      right: 5px;

      bottom: 5px;

      z-index: 1;

      content: "";

      border-radius: 2px;

      background: var(--main-color);

    }



    .gear .bar:nth-child(2) {

      transform: rotate(60deg);

    }



    .gear .bar:nth-child(3) {

      transform: rotate(120deg);

    }



    .gear.one {

      animation: anticlockwiseErrorStop 2s linear infinite;

    }



    .gear.two {

      animation: anticlockwiseError 2s linear infinite;

    }



    .gear.three {

      animation: clockwiseError 2s linear infinite;

    }



    /* Keyframes */

    @keyframes clockwise {

      0% {

        transform: rotate(0deg);

      }



      100% {

        transform: rotate(360deg);

      }

    }



    @keyframes anticlockwise {

      0% {

        transform: rotate(360deg);

      }



      100% {

        transform: rotate(0deg);

      }

    }



    @keyframes clockwiseError {

      0% {

        transform: rotate(0deg);

      }



      20% {

        transform: rotate(30deg);

      }



      40% {

        transform: rotate(25deg);

      }



      60% {

        transform: rotate(30deg);

      }



      100% {

        transform: rotate(0deg);

      }

    }



    @keyframes anticlockwiseErrorStop {

      0% {

        transform: rotate(0deg);

      }



      20% {

        transform: rotate(-30deg);

      }



      60% {

        transform: rotate(-30deg);

      }



      100% {

        transform: rotate(0deg);

      }

    }



    button {

      margin-top: 30px;

      padding: 10px 20px;

      font-size: 1rem;

      font-family: 'Encode Sans Semi Condensed', Verdana, sans-serif;

      font-weight: 300;

      color: #fff;

      background-color: #003f5c;

      border: none;

      border-radius: 5px;

      cursor: pointer;

      transition: background-color 0.3s ease;

    }



    button:hover {

      background-color: var(--button-hover-color);

    }

  </style>

</head>

<body class="loading">

  <h1>500</h1>

  <h2>Unexpected Error <b>:(</b></h2>



  <div class="gears">

    <div class="gear one">

      <div class="bar"></div>

      <div class="bar"></div>

      <div class="bar"></div>

    </div>

    <div class="gear two">

      <div class="bar"></div>

      <div class="bar"></div>

      <div class="bar"></div>

    </div>

    <div class="gear three">

      <div class="bar"></div>

      <div class="bar"></div>

      <div class="bar"></div>

    </div>

  </div>



  <button onclick="location.href='home.jsp'">Back to Home</button>



  <script>

    document.addEventListener("DOMContentLoaded", function () {

      setTimeout(function () {

        document.body.classList.remove("loading");

      }, 1000);

    });

  </script>

</body>

</html>