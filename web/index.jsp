<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); %>
<% response.setHeader("Pragma", "no-cache"); %>
<% response.setDateHeader("Expires", 0); %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Fitness Website</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
   <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
  <script src="https://kit.fontawesome.com/b03cf821e3.js" crossorigin="anonymous"></script>
   <style>
    .navbar {
      height: 80px;
    }
    .imgBG {
      position: relative;
      background-image: url('Images/index6.jpg');
      background-position: center;
      background-size: cover;
      height: 630px;
      color: #fff;
    }
    .imgBG::before {
      content: '';
      position: absolute;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
      background: rgba(0, 0, 0, 0.5); /* Adjust the opacity as needed */
    }
    .hero-content {
      position: relative;
      z-index: 1;
      color: #fff;
      text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7); /* Add a text shadow for better readability */
    }
    .hero-content a {
      color: #fff;
    }
    .hero-content a:hover {
      background-color: orange;
      color: black;
    }
    .services {
      padding-top: 40px;
       background: rgb(255,255,255);
background: linear-gradient(90deg, rgba(255,255,255,1) 0%, rgba(255,255,255,1) 0%, rgba(119,111,245,1) 0%, rgba(11,32,55,1) 0%, rgba(54,56,128,1) 0%, rgba(130,130,189,1) 100%);

    }
    .ser-box {
      box-shadow: 2px 10px 5px black;
      padding-top: 30px;
    background: rgb(255,255,255);
background: linear-gradient(90deg, rgba(255,255,255,1) 0%, rgba(255,255,255,1) 0%, rgba(119,111,245,1) 0%, rgba(11,32,55,1) 0%, rgba(94,97,233,1) 0%, rgba(130,130,189,1) 100%);
text-transform: capitalize;
    }
    .ser-box a:hover {
      background-color: orange;
      color: black;
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
    .social-icons {
      display: flex;
      justify-content: center;
      align-items: center;
      margin: 20px 140px;
    }
    .social-icons a {
      margin: 0 10px;
      color: #fff;
      font-size: 24px;
      text-decoration: none;
    }
    .social-icons a:hover {
      color: orange;
    }
  </style>

</head>
<body>
  <header class="bg-dark text-white">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <div class="container">
          <a class="navbar-brand" href="index.jsp"> <img src="Images/Logo.jpeg" alt="Fitness-Hub Logo" height="40" width="50" class="d-inline-block align-text-top">
  Fitness-Hub</a>
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
              <a class="nav-link" href="#about">About us</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#about">Contact us</a>
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
  <section id="hero" class="hero imgc d-flex justify-content-center align-items-center text-center imgBG">
    <div class="hero-content ">
      <h2>Welcome to Fitness-Hub</h2>
      <p>Your journey to a healthier lifestyle starts here!</p>
      <a href="start.jsp" class="btn btn-primary">Get Started</a>
    </div>
  </section>

  <section id="about" class="services">
    <div class="container text-center">
        <h2 style="color: white; margin-bottom: 30px; letter-spacing: 2px; font-family: Arial;">Our Services</h2>
        
      <div class="row ">
         
        <div class="col-md-6 ">
          <div class="card mb-4">
            <div class="card-body ser-box">
              <h3 class="card-title">Personal Training</h3>
              <p class="card-text">Get the best workout plans here.</p>
              <a href="training.jsp" class="btn btn-primary">Click Here</a>
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="card mb-4">
            <div class="card-body  ser-box">
              <h3 class="card-title">Nutrition Plans</h3>
              <p class="card-text">Get the best nutrition plans here.</p>
              <a href="nutrients.jsp" class="btn btn-primary">Click Here</a>
            </div>
          </div>
        </div>
        
  </section>

 <footer class="bg-dark text-white text-center p-4">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <h3>About Us</h3>
                <p>Fitness-Hub is dedicated to helping you achieve your fitness goals. Our team of experts is passionate about promoting a healthy lifestyle through personalized training and nutrition plans.</p>
            </div>
            <div class="col-md-4">
                <h3>Contact Us</h3>
                <p>
                    <strong>Email:</strong> maheshghule2004@gmail.com<br>
                    <strong>Phone:</strong>(+91) 9575643790<br>
                    <strong>Address:</strong> 123 Fitness Street, Khandwa, Madhaya Pradesh,India
                </p>
            </div>
           <div class="col-md-4" style="text-align: center;text-decoration: none;">
    <h3>Social Media</h3>
    <div class="col-md-4 social-icons">
    <a href="#"><i class="fab fa-facebook"></i></a>
    <a href="#"><i class="fab fa-twitter"></i></a>
    <a href="https://www.instagram.com/shayad_mahesh_hun?igshid=MXh2NGM3a3piYzQ4ZQ=="><i class="fab fa-instagram"></i></a>
    <a href="https://www.linkedin.com/in/mahesh-ghule-064992286?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app"><i class="fab fa-linkedin"></i></a>
</div>

</div>


        </div>
    </div>
     
</footer>


  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  <script>
  document.addEventListener("DOMContentLoaded", function () {
    const scroll = new SmoothScroll('a[href*="#"]', {
      speed: 800,
      speedAsDuration: true,
      easing: 'easeInOutCubic'
    });

    const navbarOffset = document.querySelector('.navbar').offsetHeight;
    scroll.offset = navbarOffset;

    document.querySelectorAll('.nav-link').forEach(function (elem) {
      elem.addEventListener('click', function () {
        const navbarToggler = document.querySelector('.navbar-toggler');
        if (navbarToggler && !navbarToggler.classList.contains('collapsed')) {
          navbarToggler.click();
        }
      });
    });
  });
</script>

</body>
</html>
