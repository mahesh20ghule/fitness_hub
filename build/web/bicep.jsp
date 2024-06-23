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
/*background: rgb(148, 0, 211);
background: linear-gradient(90deg, rgba(148, 0, 211, 1) 0%, rgba(255, 192, 203, 1) 100%);*/
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
      <h2>Build Your Biceps: Targeted Workouts for Stronger, More Defined Arms</h2>
 <p>Get ready to sculpt and strengthen your biceps with these effective workouts.</p>
    </div>
  
  <div class="exercise-boxes">
      <div class="exercise-box">
        <img src="Images/BarbellPreachercurl.gif" alt="Barbell Precher Curl" style="width: 200px; height: auto;">
        <div class="exercise-box-content">
          <h3>Barbell Preacher curl</h3>
          <p>Description:<br>1) Place an EZ-Bar on the rack of a preacher bench and load with appropriate weight.<br>

2) Adjust height of seating and bench until the bench reaches a comfortable position under across the chest and under the armpits, 
while allowing full flexion and extension of the upper arms and forearms.<br>

3) Grasp bar with both hands and contract biceps to bring the bar towards the face.<br>

4) Once at full contraction, with a controlled motion reverse the bar's direction and back until the biceps are extended to complete the repetition.</p>
            <p>Body Part:  Bicep</p>
          <p>Sets and Reps: 3 sets x 12 reps</p>
          <p>Weight: 10 KG</p>
        </div>
      </div>

   <div class="exercise-box">
        <img src="Images/InclinedDumbellcurl.gif" alt="Inclined Dumbell Curl" style="width: 200px; height: auto;">
        <div class="exercise-box-content">
          <h3>Inclined Dumbell curl</h3>
          <p>Description:<br>1) Take two dumbbells and sit on a incline (30-45 degree) bench with your feet on the floor. 
Let your arms to hang down with your palms facing forward.<br>

2) Moving only your forearms, slowly curl the dumbbells up to shoulder level. 
Keep your elbows pressed against your sides throughout the exercise.<br>

3) Hold this position for a moment and slowly lower the dumbbells.
Make sure that only your forearms are moving.</p>
          <p>Body Part:   Bicep</p>
          <p>Sets and Reps: 3 sets x 12 reps</p>
          <p>Weight: 5 kg</p>
        </div>
      </div>

          <div class="exercise-box">
        <img src="Images/ReverseDumbellcurl.gif" alt="Reverse Dumbell Curl" style="width: 200px; height: auto;">
        <div class="exercise-box-content">
          <h3>Reverse Dumbell curl</h3>
          <p>Description: Stand with your feet slightly apart and your arms straight, 
using an overhand grip (thumbs towards each other):<br>

1) Inhale and curl the bar.<br>

2) Exhale as you complete the movement.</p>
          <p>Body Part: Bicep</p>
          <p>Sets and Reps: 3 sets x 12 reps</p>
          <p>Weight: 5 KG</p>
        </div>
        
      </div>

      <div class="exercise-box">
        <img src="Images/DumbellHammercurl.gif" alt="Dumbell Hammer Curl" style="width: 200px; height: auto;">
        <div class="exercise-box-content">
          <h3>Dumbell Hammer curl</h3>
          <p>Description: Stand or sit. Grasp a dumbbell in each hand with your palms facing inward:<br>

1) Inhale and curl the dumbbells to your shoulders, either simultaneously or alternately.<br>

2) Exhale as you complete the movement.</p>
          <p>Body Part:  Bicep</p>
          <p>Sets and Reps: 3 sets x 12 reps</p>
          <p>Weight:  5 kg</p>
        </div>
        
      </div>

      
  </div>
</body>
</html>
