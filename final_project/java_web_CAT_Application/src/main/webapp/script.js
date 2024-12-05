function showTime() {
	document.getElementById('currentTime').innerHTML = new Date().toUTCString();
}
showTime();
setInterval(function () {
	showTime();
}, 1000);



    function redirectToRegistration() {

      window.location.href = "registration.jsp";

    }



    function redirectToLogin() {

      window.location.href = "login.jsp";

    }

function redirectToCentre() {

      window.location.href = "centre.jsp";

    }

function redirectToDocUpload() {

      window.location.href = "doc.jsp";

    }

function redirectToCities() {

      window.location.href = "cities.jsp";

    }

    function redirectTodummyPay() {

      window.location.href = "dummyPay.jsp";

    }

    function saveAndNext(){
      window.location.href ="dashboard.jsp";
    }
    
    // Function to prevent space in first and last name fields

function preventSpace(event) {

  if (event.key === " " || event.keyCode === 32) {

    event.preventDefault();

  }

}



// Function to ensure only one word is entered in the name fields

function validateSingleWord(input) {

  const words = input.value.trim().split(' ');

  if (words.length > 1) {

    input.setCustomValidity("Only one word is allowed.");

  } else {

    input.setCustomValidity("");

  }

}

function validateAadhar(input) {

  const aadharError = document.getElementById('aadhar-error');

  const aadharValue = input.value.trim();

  

  // Check if the value is exactly 12 digits and numeric

  if (/^\d{12}$/.test(aadharValue)) {

    input.setCustomValidity("");

    aadharError.textContent = "";

  } else {

    input.setCustomValidity("Aadhar card number must be exactly 12 digits.");

    aadharError.textContent = "Aadhar card number must be exactly 12 digits.";

  }

}



// Function to validate the date of birth and ensure the user is over 18

function validateDOB() {

  const dobInput = document.getElementById('dob');

  const dob = new Date(dobInput.value);

  const today = new Date();

  const age = today.getFullYear() - dob.getFullYear();

  const m = today.getMonth() - dob.getMonth();



  if (m < 0 || (m === 0 && today.getDate() < dob.getDate())) {

    age--;

  }



  const errorMessage = document.getElementById('dob-error');



  if (age < 18) {

    dobInput.setCustomValidity("Age must be 18 or older.");

    errorMessage.textContent = "Age must be greater than 18.";

  } else {

    dobInput.setCustomValidity("");

    

errorMessage.textContent = "";

  }

}

// Function to validate alphabets only (no digits)

function validateAlphabets(input) {

  const regex = /^[A-Za-z\s]+$/;  // Regex to allow only alphabets and spaces

  if (!regex.test(input.value)) {

    input.setCustomValidity("Only alphabets and spaces are allowed.");

  } else {

    input.setCustomValidity("");

  }

}



// Function to validate percentage (should not be greater than 100)

function validatePercentage(input) {

  const value = parseDouble(input.value);

  if (value > 100) {

    input.setCustomValidity("Percentage cannot be greater than 100.");

  } else {

    input.setCustomValidity("");

  }

}



// Function to validate CGPA (should not be greater than 10)

function validateCGPA(input) {

  const value = parseDouble(input.value);

  if (value > 10.0) {

    input.setCustomValidity("CGPA cannot be greater than 10.");

  } else {

    input.setCustomValidity("");

tCustomValidity("");

  }

}


 document.getElementById("uploadForm").addEventListener("click", function() {

       window.location.href = "cities.html"; // Redirect to application form
    
    });

