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
     <h2>Sculpt Your Triceps: Targeted Workouts for Stronger, More Defined Arms</h2>
<p>Get ready to sculpt and strengthen your triceps with these effective workouts.</p>



    </div>
  
  <div class="exercise-boxes">
      <div class="exercise-box">
        <img src="Images/close grip tricep.gif" alt="close grip tricep" style="width: 200px; height: auto;">
        <div class="exercise-box-content">
          <h3>Close Grip Bench Press</h3>
          <p>Description:<br>1) Lie back on a flat bench. Using a close grip (around shoulder width), lift the bar from the rack and hold it straight over you with your arms locked. This will be your starting position.
          <br>2) As you breathe in, come down slowly until you feel the bar on your middle chest. <br>Tip: Make sure that as opposed to a regular bench press - you keep the elbows close to the torso at all times in order to maximize triceps involvement.
              <br>3) After a second pause, bring the bar back to the starting position as you breathe out and push the bar using your triceps muscles. Lock your arms in the contracted position, hold for a second and then start coming down slowly again.
              <br>Tip: It should take at least twice as long to go down than to come up.
</p>
          <p>Body Part: Triceps</p>
          <p>Sets and Reps: 3 sets x 12 reps</p>
          <p>Weight: 5 KG</p>
        </div>
      </div>

   <div class="exercise-box">
        <img src="Images/diamond push up.gif" alt="diamond push up" style="width: 200px; height: auto;">
        <div class="exercise-box-content">
          <h3>Diamond Push-up</h3>
          <p>Description:<br>1) Get into the standard push-up position with your hands together directly beneath your chest so that index fingers and thumbs are touching to form a triangle or diamond shape.
              <br>2) Keeping your core tight, slowly lower your body to the ground. Make sure to keep your elbows tucked in close by your sides so they make a 45-degree angle with your torso. Without altering your hand placement, pause and push yourself back to the starting position.
 </p>
          <p>Body Part: Triceps</p>
          <p>Sets and Reps: 3 sets x 12 reps</p>
          <p>Weight: 5 Kg</p>
        </div>
      </div>

          <div class="exercise-box">
        <img src="Images/one arm dumbbell tricep.gif" alt="one arm dumbbell tricep" style="width: 200px; height: auto;">
        <div class="exercise-box-content">
          <h3>One Arm Dumbbell Tricep Extentions</h3>
          <p>Description:<br>1) stand with one dumbbell with your one hand holding the dumbbell and other behinf your back.
              <br>2) Lower dumbbell behind neck or shoulder while maintaining upper arm's vertical position throughout exercise. Extend arm until straight. Return and repeat. Continue with opposite arm.

</p>
          <p>Body Part: Triceps</p>
          <p>Sets and Reps: 3 sets x 12 reps</p>
          <p>Weight: 5Kg</p>
        </div>
        

      </div>
      <div class="exercise-box">
        <img src="Images/tricep-rope pushdown tricep.gif" alt="tricep-rope pushdown tricep " style="width: 200px; height: auto;">
        <div class="exercise-box-content">
          <h3>  Hyperbench Rope Pushdown</h3>
          <p>Description:<br>
Take a few steps back from the machine and using an overhand grip, space your hands on the bar slightly less than shoulder-with apart. You can also perform this movement with one foot in front of the other if it feels more comfortable. Lean forward and start with the bar touching your forehead. With force, drive the weight down to your waist by extending your elbows. Make sure to keep your elbows close to your sides at all times. Once you have locked your elbows out at the bottom, squeeze your triceps and then return the bar back to the starting position by touching your forehead.
</p>
          <p>Body part: Triceps</p>
          <p>Sets and Reps: 3 sets x 12 reps</p>
          <p>Weight: 5KG</p>
        </div>
      </div>

  </div>
</body>
</html>
