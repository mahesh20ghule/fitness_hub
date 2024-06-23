<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); %>
<% response.setHeader("Pragma", "no-cache"); %>
<% response.setDateHeader("Expires", 0); %>

<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Fitness Website</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <script src="https://checkout.razorpay.com/v1/checkout.js"></script>

  <style>
    body {
      font-family: 'Arial', sans-serif;
      line-height: 1.6;
      background-color: #f5f5f5;
      color: #333;
      background: rgb(255,255,255);
      background: linear-gradient(90deg, rgba(255,255,255,1) 0%, rgba(255,255,255,1) 0%, rgba(119,111,245,1) 0%, rgba(11,32,55,1) 0%, rgba(54,56,128,1) 0%, rgba(130,130,189,1) 100%);
      background-size: cover;
     
    }
    .navbar {
      height: 80px;
    }
    .navbar-nav .nav-item .nav-link:not(.navbar-brand):hover {
      color: red;
    }
    .dropdown-menu {
      background-color: lightsalmon;
    }
    .dropdown-menu a:hover {
      background-color: lightsalmon;
      color: white;
      font-size: 20px;
    }
    .navbar-brand {
      font-family: 'Roboto', sans-serif;
      font-size: 30px;
    }
    .heading {
      text-align: center;
      margin: 20px 0;
      color: #fff;
      
      padding: 10px;
      border-radius: 5px;
    }
    .heading h1 {
      margin: 0;
      font-size: 2.5rem;
    }
    .heading p {
      margin: 5px 0 0;
      font-size: 1.2rem;
    }
    .card {
      height: 450px;
      border: none;
      border-radius: 8px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      transition: box-shadow 0.3s;
      margin: 30px 20px;
      background: linear-gradient(180deg, #fbc2eb, #6a0572);
      box-shadow: 0 4px 10px black;
      color: white;
    }
    .card h5{
        font-weight: bolder;
    }
    .card-body {
     background: rgb(255, 255, 255);
background: linear-gradient(90deg, rgba(255, 255, 255, 1) 0%, rgba(230, 230, 250, 1) 0%, rgba(218, 112, 214, 1) 0%, rgba(186, 85, 211, 1) 0%, rgba(148, 0, 211, 1) 0%, rgba(138, 43, 226, 1) 100%);
border-radius: 8px;
      padding: 15px;
    }
    .card-title {
      font-size: 1.2rem;
      margin-bottom: 0.5rem;
    }
    .card-text {
      font-size: 1rem;
      color: white;
    }
    
    .plan-info p {
      margin: 0.5rem 0;
    }
    .plan-price {
      font-weight: bold;
      font-size: 1.2rem;
      color: #333;
      margin-top: 1rem;
    }
    .plan-button {
      margin: 1rem;
      text-align: center;
      
    }
    .btn {
      text-transform: uppercase;
      font-weight: bold;
      background-color: #007bff;
      color: #fff;
      border: none;
      padding: 0.5rem 1rem;
      border-radius: 4px;
      cursor: pointer;
      transition: background-color 0.3s;
    }
    .btn:hover {
      background-color: #0056b3;
    }
    .plan-info strong {
      display: inline-block;
      width: 120px;
      font-weight: bold;
      
    }
    
  </style>
</head>
<body>
  <header class="bg-dark text-white">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <div class="container">
        <a class="navbar-brand" href="index.jsp">
          <img src="Images/Logo.jpeg" alt="Fitness-Hub Logo"  height="40" width="50"  class="d-inline-block align-text-top">
          Fitness-Hub
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end h" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link" href="index.jsp">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="Macro.jsp">Macro Calculator</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="routines.jsp">Routines</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="index.jsp#about">About us</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="index.jsp#about">Contact us</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                <% if (session.getAttribute("email") == null) { %>
                  Registration
                <% } else { %>
                  Account
                <% } %>
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <% if (session.getAttribute("email") == null) { %>
                  <li><a class="dropdown-item" href="login.jsp">Log In</a></li>
                  <li><a class="dropdown-item" href="sign.jsp">Sign up</a></li>
                <% } else { %>
                  <li><a class="dropdown-item" href="logout.jsp">Log Out</a></li>
                  <li><a class="dropdown-item" href="profile.jsp">Profile</a></li>
                <% } %>
              </ul>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>
  <div class="heading">
    <h1>Membership Plans</h1>
    <p>Choose the plan that suits your fitness journey.</p>
  </div>
  <section id="premium-memberships" class="container">
    <div class="row">

  <div class="col-md-3">
  <div class="card mb-4">
    <div class="card-body">
      <div class="plan-info">
        <h5 class="card-title">Beginners-Special Plan</h5>
        <p class="card-text">
          Ideal for newcomers, this plan introduces basic fitness concepts, exercises, and nutrition guidelines to kickstart your fitness journey.  
          <br><strong>Duration:</strong> 3 months
          <br><strong>Goal:</strong> Improve fitness
          
          <br><strong>Target Group:</strong> Men and Women
          <br><strong>Training Type:</strong> Online and offline both
        </p>
      </div>
      <div class="plan-price">
        <p class="card-text">Price: &#8377;299</p>
      </div>
      <div class="plan-button" style="margin-top:20px;">
        <button class="btn btn-primary" onclick="payNow('Beginners-Special Plan', 299)">Purchase</button>
      </div>
    </div>
  </div>
</div>

              <div class="col-md-3">
        <div class="card mb-4">
          <div class="card-body">
            <div class="plan-info">
              <h5 class="card-title">Belly Fat-Loss Plan</h5>
              <p class="card-text">
Focused on reducing stubborn belly fat, this plan offers a holistic approach to achieve a toned and flat stomach.
<br><strong>Duration:</strong> 1 Year
                <br><strong>Goal:</strong> Belly-Fat Loss
               
                <br><strong>Target Group:</strong> Men and Women
                <br><strong>Training Type:</strong> Online and offline both
              </p>
            </div>
            <div class="plan-price" >
              <p class="card-text">Price: &#8377;299</p>
            </div>
            <div class="plan-button" style="margin-top:40px;">
              <button class="btn btn-primary" onclick="payNow('Belly Fat-Loss Plan', 299)">Purchase</button>
            </div>
          </div>
        </div>
      </div>
              <div class="col-md-3">
        <div class="card mb-4">
          <div class="card-body">
            <div class="plan-info">
              <h5 class="card-title">Weight gain plan</h5>
              <p class="card-text">
                Our weight gain plan is expertly designed to help you build muscle mass, increase strength, and achieve a balanced, healthier physique.
                <br><strong>Duration:</strong> 3 Months
                <br><strong>Goal:</strong> Weight Gain
               
                <br><strong>Target Group:</strong> Men and Women
                <br><strong>Training Type:</strong> Online and offline both
              </p>
            </div>
            <div class="plan-price">
              <p class="card-text">Price: &#8377;399</p>
            </div>
            <div class="plan-button">
              <button class="btn btn-primary" onclick="payNow('Weight Gain Plan', 399)">Purchase</button>
            </div>
          </div>
        </div>
      </div>
      <div class="col-md-3">
        <div class="card mb-4">
          <div class="card-body">
            <div class="plan-info">
              <h5 class="card-title">Weight Loss Plan</h5>
              <p class="card-text">
Focuses on sustainable weight loss strategies through personalized workout routines and nutrition guidance.                <br><strong>Duration:</strong> 6 Months
                <br><strong>Goal:</strong> Weight Loss
                
                <br><strong>Target Group:</strong> Men and Women
                <br><strong>Training Type:</strong> Online and offline both
              </p>
            </div>
            <div class="plan-price">
              <p class="card-text">Price: &#8377;399</p>
            </div>
             <div class="plan-button" style="margin-top:40px;">
            <button class="btn btn-primary" onclick="payNow('Weight Gain Plan', 399)">Purchase</button>
        </div>
          </div>
        </div>
      </div>

    </div>
  </section>

  <script>
    function payNow(plan, amount) {
  <% if (session.getAttribute("email") == null) { %>
    var confirmLogin = confirm("You need to log in or sign up to purchase the plan. Do you want to proceed?");
    if (confirmLogin) {
      window.location.href = "login.jsp";
    }
    return;
  <% } %>

  var planDuration, description;
  switch(plan) {
    case 'Beginners-Special Plan':
      planDuration = '3 Months';
      description = 'Ideal for newcomers, this plan introduces basic fitness concepts, exercises, and nutrition guidelines to kickstart your fitness journey.';
      break;
    case 'Weight gain':
      planDuration = '3 Months';
      description = 'Our weight gain plan is expertly designed to help you build muscle mass, increase strength, and achieve a balanced, healthier physique.';
      break;
    case 'Weight Loss Plan':
      planDuration = '6 Months';
      description = 'Focuses on sustainable weight loss strategies through personalized workout routines and nutrition guidance.';
      break;
    case 'Belly Fat-Loss Plan':
      planDuration = '1 Year';
      description = 'Focused on reducing stubborn belly fat, this plan offers a holistic approach to achieve a toned and flat stomach.';
      break;
    default:
      planDuration = '';
      description = '';
  }

  var options = {
    "key": "rzp_test_pTNLZVS4j5i3kc",
    "amount": amount * 100,
    "currency": "INR",
    "name": "Fitness-Hub",
    "description": plan + " Plan",
    "image": "Images/Logo.jpeg",
    "handler": function (response){
      alert("Payment successful. Payment ID: " + response.razorpay_payment_id);
      
      var xhr = new XMLHttpRequest();
      xhr.open("POST", "Payments.jsp", true);
      xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
      xhr.onreadystatechange = function () {
        if (xhr.readyState === 4 && xhr.status === 200) {
          alert(xhr.responseText);
        }
      };
      var params = "payment_id=" + response.razorpay_payment_id +
                   "&planname=" + encodeURIComponent(plan) +
                   "&planduration=" + encodeURIComponent(planDuration) +
                   "&description=" + encodeURIComponent(description) +
                   "&fees=" + amount;
      xhr.send(params);
    },
    "prefill": {
      "name": "Mahesh Ghule",
      "email": "mahesh2004ghule@gmail.com",
      "contact": "9575643781"
    },
    "theme": {
      "color": "#007bff"
    }
  };
  var rzp1 = new Razorpay(options);
  rzp1.open();
}


  </script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
