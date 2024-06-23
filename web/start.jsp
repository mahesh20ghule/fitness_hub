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
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
    body {
      font-family: 'Arial', sans-serif;
      line-height: 1.6;
      background-color: #f5f5f5;
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
      justify-content: center;
      align-items: center;
      flex-wrap: wrap;
      padding: 50px 0;
    }

    .exercise-box {
      width: 400px;
      height:400px;
      margin: 30px;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      text-align: center;
      line-height: 200px;
      font-size: 18px;
      cursor: pointer;
      background-size: cover;
      background-position: center;
      color: #fff;
      position: relative;
      overflow: hidden;
       margin-bottom: 80px;
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
        display: flex;
        justify-content: center;
        align-items: flex-end;
        position: absolute;
        bottom: 10px;
        left: 0;
        right: 0;
    }
    .exercise-link {
        position: relative;
        display: inline-block;
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
          <a class="navbar-brand" href="index.jsp"> <img src="Images/Logo.jpeg" alt="Fitness-Hub Logo"  height="40" width="50"  class="d-inline-block align-text-top">
  Fitness-Hub</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end h" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item" >
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
 <div class="container text-center mt-5">
    <h1>Explore Your Potential with Fitness-Hub</h1>
    <p>Transform your body, transform your life. Start your fitness journey today with Fitness-Hub and discover the best version of yourself!</p>
  </div>
    <div class="exercise-boxes">
       <a href="chest.jsp" class="exercise-link">
        <div class="exercise-box" onclick="showExercise('Chest')" data-exercise="chest" style="background-image: url('Images/maxresdefault.jpg');"></div>
        <div class="button-container">
            <button class="btn btn-primary mt-3">Chest</button>
        </div>
    </a>
    <a href="bicep.jsp" class="exercise-link">
        <div class="exercise-box" onclick="showExercise('Bicep')" data-exercise="bicep" style="background-image: url('Images/bice.png');"></div>
        <div class="button-container">
            <button class="btn btn-primary mt-3">Bicep</button>
        </div>
    </a>
       <a href="abs.jsp" class="exercise-link">
    <div class="exercise-box" onclick="showExercise('Abs')" data-exercise="Abs" style="background-image: url('Images/ab.jpg');"></div>
    <div class="button-container">
        <button class="btn btn-primary mt-3">Abs</button>
    </div>
</a>
<a href="leg.jsp" class="exercise-link">
    <div class="exercise-box" onclick="showExercise('Leg')" data-exercise="Leg" style="background-image: url('Images/leg.jpg');"></div>
    <div class="button-container">
        <button class="btn btn-primary mt-3">Leg</button>
    </div>
</a>
<a href="back.jsp" class="exercise-link">
    <div class="exercise-box" onclick="showExercise('Back')" data-exercise="Back" style="background-image: url('Images/ba.png');"></div>
    <div class="button-container">
        <button class="btn btn-primary mt-3">Back</button>
    </div>
</a>
<a href="tricep.jsp" class="exercise-link">
    <div class="exercise-box" onclick="showExercise('Tricep')" data-exercise="tricep" style="background-image: url('Images/tree.png');"></div>
    <div class="button-container">
        <button class="btn btn-primary mt-3">Tricep</button>
    </div>
</a>

    </div>
    <div class="container mt-5">
    <div class="row">
        <div class="col text-center">
            <div class="upgrade-box">
                <h2>Upgrade Your Fitness Journey</h2>
                <p>For more personalized workouts and expert guidance, check out our membership plans. Take your fitness to the next level!</p>
                <a href="training.jsp" class="btn btn-primary">View Membership Plans</a>
            </div>
        </div>
    </div>
</div>


</body>
</html>
