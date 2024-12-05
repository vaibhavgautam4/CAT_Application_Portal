// Simulated application status

let applicationStatus = "Approved"; // Change this to "Not Initiated", "In Process", "Rejected", or "Approved" to test



// Function to update the status bar based on the application status

function updateStatusBar() {

  const notInitiatedStep = document.getElementById("notInitiated");

  const inProcessStep = document.getElementById("inProcess");

  const rejectedStep = document.getElementById("rejected");

  const approvedStep = document.getElementById("approved");

  const admitCardButton = document.getElementById("admitCardButton");



  // Reset status steps

  notInitiatedStep.classList.remove("active");

  inProcessStep.classList.remove("active");

  rejectedStep.classList.remove("active", "rejected");

  approvedStep.classList.remove("active", "approved");



  // Update status steps based on application status

  if (applicationStatus === "Not Initiated") {

    notInitiatedStep.classList.add("active");

  } else if (applicationStatus === "In Process") {

    inProcessStep.classList.add("active");

  } else if (applicationStatus === "Rejected") {

    rejectedStep.classList.add("active", "rejected");

  } else if (applicationStatus === "Approved") {

    approvedStep.classList.add("active", "approved");

    admitCardButton.classList.add("active");

    admitCardButton.disabled = false;

  }

}

function redirectToPersonal() {

  window.location.href = "personal.html";

}


function redirectToAcademics() {

  window.location.href = "academics.html";

}


function redirectToWorkEx() {

  window.location.href = "workEx.html";

}


function redirectToDocUpload() {

  window.location.href = "doc.html";

}


function redirectToReview() {

  window.location.href = "admit.html";

}


function redirectToFillForm() {

  window.location.href = "application.html";

}


function redirectToContactUs() {

  window.location.href = "contact_us.html";

}




// Fill Application Form button functionality

document.getElementById("fillFormButton").addEventListener("click", function() {

  window.location.href = "application.jsp"; // Redirect to application form

});

// Contact Us button functionality

document.getElementById("contactUsButton").addEventListener("click", function() {

  window.location.href = "contact_us.jsp"; // Redirect to contact support page

});

// Download admit card button functionality

document.getElementById("admitCardButton").addEventListener("click", function() {

  if (applicationStatus === "Approved") {

    alert("Downloading Admit Card...");
    window.location.href = "admit.jsp";

  }

});



// Initialize the status bar

updateStatusBar();