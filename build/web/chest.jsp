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
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  
  <style>
    body {
      font-family: 'Arial', sans-serif;
      line-height: 1.6;
      color: #333;
   
      background: rgb(255,255,255);
      background: linear-gradient(90deg, rgba(255,255,255,1) 0%, rgba(255,255,255,1) 0%, rgba(119,111,245,1) 0%, rgba(11,32,55,1) 0%, rgba(54,56,128,1) 0%, rgba(130,130,189,1) 100%);
      background-size: cover;
      background-repeat: no-repeat;
    }

    .navbar{
      height: 80px;
    }

    .navbar-nav .nav-item .nav-link:not(.navbar-brand):hover {
      color: red;
    }

    .navbar-nav .nav-item .nav-link:not(.navbar-brand):hover {
      color: red;
    }

    .dropdown-menu{
      background-color: lightsalmon;
    }

    .dropdown-menu a:hover{
      background-color: lightsalmon;
      color: white;
      font-size: 20px;
    }

    .navbar-brand {
      font-family: 'Roboto', sans-serif;
      font-size: 30px;
    }

    .exercise-boxes {
      display: flex;
      flex-direction: column;
      align-items: center;
      padding: 50px 0;
      
    }

.exercise-box {
  display: flex;
  justify-content: space-between;
  align-items: center;
  width: 80%;
  margin: 20px auto;
  border-radius: 5px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  overflow: hidden;
  background-size: cover;
  background-position: center;
  color: black;
  box-shadow: 0px 0px 10px black;
  position: relative;
  cursor: pointer;
background-color: #ccccff;
}
.exercise-box h3{
    color: 
 #000066;
}

    .exercise-box img {
      width: auto;
      height: auto;
    }

    .exercise-box-content {
      flex-grow: 1;
      padding: 20px;
    }

    .exercise-box:hover a {
      color: yellow;
      text-decoration: none;
    }

    .exercise-box a {
      color: white;
      text-decoration: none;
     
    }

    .button-container {
      margin-top: 20px;
    }
  .workout-title {
      text-align: center;
      margin-bottom: 0px;
       margin-top: 30px;
       color: white;
    }

    .workout-title h2 {
      font-size: 24px;
      margin-bottom: 10px;
     
    }

    .workout-title p {
      font-size: 18px;
      margin-bottom: 0;
    }

    hr {
      width: 100%;
      border: none;
      margin: 20px 0;
    }

    .container{
      color: white;
    }

    .upgrade-box {
      background: rgb(94,68,111);
      background: linear-gradient(135deg, #8a2387, #e94057, #f27121);
      color: white;
      padding: 20px;
      text-align: center;
      border-radius: 5px;
      margin-top: 0px;
      box-shadow: 0 2px 10px black;
    }

    .upgrade-box h2 {
      margin-bottom: 20px;
    }

    .upgrade-box p {
      margin-bottom: 30px;
    }

    .upgrade-box .btn-primary {
      background-color: blue;
      border-color: #f27121;
    }

    .upgrade-box .btn-primary:hover {
      background-color: blueviolet;
      border-color: black;
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
  <div class="workout-title">
      <h2>Build Your Chest: Targeted Workouts for a Defined Physique</h2>
      <p>Get ready to sculpt and strengthen your chest with these effective workouts.</p>
    </div>
  
  <div class="exercise-boxes">
      <div class="exercise-box">
        <img src="Images/bench1.gif" alt="Bench Press" style="width: 200px; height: auto;">
        <div class="exercise-box-content">
          <h3>Bench Press</h3>
          <p>Description: To properly perform a bench press exercise you need to lay flat on a bench and have your feet flat on the floor. The bar, when racked, will be slightly behind your head. It is important to use spotter for this exercise, especially if you are using a free bar or dumbbells, to eliminate the chance of dropping the weight on yourself. Once you have lifted the weight off the rack, the bar will be directly over the center of the chest. Keep your head on the bench at all times throughout the movement. Once you have the bar steady, slowly it to about chest level, if you are able to. Keep your arms pointed outward as the bar drops. Upon reaching the bottom of the movement, press the bar back up to an extended position, focusing position, focusing on driving the bar upwards with your chest and arms.</p>
          <p>Body Part:  Middle Chest</p>
          <p>Sets and Reps: 3 sets x 12 reps</p>
          <p>Weight: 35 kg</p>
        </div>
      </div>
      
   <div class="exercise-box">
        <img src="Images/Decline.gif" alt="Decline.gif" style="width: 200px; height: auto;">
        <div class="exercise-box-content">
          <h3>Decline press</h3>
          <p>Description: Lie on a decline bench set at an angle between 20 and 40 degrees with your feet anchord to prevent them from slipping. Take an
              overhand grip on the bar with your hands at least shoulder-width apart:-<br>
              1) Inhale and slowly lower the bar until it reaches the lower edge of your pectorals.<br>
              2) Press the bar back up, exhaling as you complete the movement.</p>
          <p>Body Part:  lower chest</p>
          <p>Sets and Reps: 3 sets x 12 reps</p>
          <p>Weight: 20 kg</p>
        </div>
      </div>
          <div class="exercise-box">
        <img src="Images/push.gif" alt="Push Up" style="width: 200px; height: auto;">
        <div class="exercise-box-content">
          <h3>Wide Push-ups</h3>
          <p>Description: WIDE GRIP PUSH UPS GUIDE 
Get in the push-ups position and align your shoulders, hips, and knees in a straight line.
Keep your arms wider than shoulder-width and then bend your elbows sideways then drop until your chest almost touches the floor.
Rise until your arms are almost straight and then repeat the movement.
Perform as many reps are you can and do each rep properly.</p>
          <p>Body Part:  full chest</p>
          <p>Sets and Reps: 3 sets x 12 reps</p>
          <p>Weight: body weight</p>
        </div>
        
      </div>
      <div class="exercise-box">
        <img src="Images/inciline.gif" alt="Incline Press" style="width: 200px; height: auto;">
        <div class="exercise-box-content">
          <h3>Incline chest</h3>
          <p>Description: This exercise is very similar to the regular barbell bench
press except that you will be the muscle group worked
instead of your middle chest. Lift the barbell off of the
rack and slowly lower it to about 3 inches above your
clavicle (just below your Adam&apos;s apple) and then
press the bar back to the starting position. DO NOT
TOUCH THE BAR TO YOUR UPPER CHEST(this causes
unneeded stress on your shoulder joints and takes the
tension away from your upper pec muscles, which are
what we want to be doing the work!) Be sure that when
you are lowering the bar that you do so in a slow and
controlled fashion. Conversely, when you press the bar
upward, you want to do so in an explosive fashion.</p>
          <p>Body Part:  upper Chest</p>
          <p>Sets and Reps: 3 sets x 12 reps</p>
          <p>Weight:  25 kg</p>
        </div>
        
      </div>
      
  </div>
</body>
</html>
