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
          <img src="Images/Logo.jpeg" alt="Fitness-Hub Logo" height="40" width="50"  class="d-inline-block align-text-top">
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
     <h2>Strengthen Your Legs: Targeted Workouts for Powerful, Defined Lower Body</h2>
<p>Get ready to sculpt and strengthen your legs with these effective workouts.</p>


    </div>
  
  <div class="exercise-boxes">
      <div class="exercise-box">
        <img src="Images/barbell squat leg.gif" alt="Crunches" style="width: 200px; height: auto;">
        <div class="exercise-box-content">
          <h3>Barbell Squat</h3>
          <p>Description:<br>Step into the rack and position the bar at back of shoulders, neck height, grasping the bar on the sides. Pushing elbows up maintains bar stability and comfort. Making sure to keep the chest pulled up, dismount from the rack and position heels shoulder width apart, facing 45 degrees out. As you descend, push your knees out in line with your toes and allow your bum/ hips to bend out while keeping your chest and elbows up. Descend to parallel or past for full range of motion and then push up through your heels, driving through your hips and keeping your chest up. Repeat.
</p>
          <p>Body Part: Leg</p>
          <p>Sets and Reps: 3 sets x 12 reps</p>
          <p>Weight: 15 KG</p>
        </div>
      </div>

   <div class="exercise-box">
        <img src="Images/dumbell-squat-leg.gif" alt="Seated Jack Knife" style="width: 200px; height: auto;">
        <div class="exercise-box-content">
          <h3>Dumbell Squat</h3>
          <p>Description:<br>1) Hold a pair of dumbbells with arms fully extended next to your sides, with palms facing each other. Place your feet shoulder-width apart, with your toes pointed outward.
              <br>2) Brace your abs, push your hips back and bend your knees, lowering the body into a squat with your hands remaining next to your sides. Pause at the bottom, and then push back up to the starting position.
          </p>
          <p>Body Part: Leg</p>
          <p>Sets and Reps: 3 sets x 12 reps</p>
          <p>Weight: 5Kg</p>
        </div>
      </div>
          <div class="exercise-box">
        <img src="Images/leg-press.gif" alt="Twist Crunch" style="width: 200px; height: auto;">
        <div class="exercise-box-content">
          <h3>Leg Press</h3>
          <p>Description:<br>Starting position: Sitting on a leg-press machine, position your feet together against the crosspiece about shoulder-width apart and toes pointed slightly outward. Grasp the handle grips or sides of the seat. Bend your knees and lower the weight as far as possible without changing the position of your hips. Do not lower the weight so far that your hips star to curve up off the seat. Pause briefly, then slowly push the weight back up using your heels, not your toes. Do not lock your knees at the top, but rather take the weight to just before lock. Then begin to lower the weight again in a slow and deliberate fashion.

</p>
          <p>Body Part: Leg</p>
          <p>Sets and Reps: 3 sets x 12 reps</p>
          <p>Weight: 5Kg</p>
        </div>
        
      </div>
      <div class="exercise-box">
        <img src="Images/barbell side lunge leg.gif" alt="Plank " style="width: 200px; height: auto;">
        <div class="exercise-box-content">
          <h3> Dumbbell Side Lunges</h3>
          <p>Description:<br>
1) Stand tall with your feet shoulder-width apart. Your arms should be fully extended with dumbbells resting in front of your thighs.
<br>2) Take a wide step to one side. When your outside
foot contacts the ground, lower your body by pushing your hip back and bending the knee. 3) Bring back your leg to to the normal position and do the squat with other leg
</p>
          <p>Body part: Leg</p>
          <p>Sets and Reps: 3 sets x 12 reps</p>
          <p>Weight: 5KG</p>
        </div>
        
      </div>

  </div>
</body>
</html>
