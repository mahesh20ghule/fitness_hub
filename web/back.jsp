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
     <h2>Strengthen Your Back: Targeted Workouts for a Stronger, More Defined Upper Body</h2>
<p>Get ready to sculpt and strengthen your back with these effective workouts.</p>
    </div>
  
  <div class="exercise-boxes">
      <div class="exercise-box">
        <img src="Images/barbell bent row back.gif" alt="barbell bent row back" style="width: 200px; height: auto;">
        <div class="exercise-box-content">
          <h3>Barbell Bent Over Row</h3>
          <p>Description:<br>1) Walk to the bar. Stand with your mid-foot under the bar. Don't touch it with your shins. Medium stance, toes pointing out.
              <br>2) Grab the bar, use a medium grip width. Narrower
than on Bench Press, wider than on Deadlifts. Hold the
bar low in your hands.<br> 3) Unlock your knees, Keep your hips higher than on the Deadlift. Bend your knees but keep them back so
the bar can't hit them.
<br>4) Lift your chest, straighten your back, don't move the bar. Don't drop your hips. Don't squeeze your shoulder-blades together.
<br>5) Row: Take a big breath, hold it and pull the bar against your lower chest. Lead with your elbows and pull them towards the ceiling.

</p>
          <p>Body Part: Back</p>
          <p>Sets and Reps: 3 sets x 12 reps</p>
          <p>Weight: 5 KG</p>
        </div>
      </div>
   <div class="exercise-box">
        <img src="Images/chin-ups.gif" alt="chin-ups" style="width: 200px; height: auto;">
        <div class="exercise-box-content">
          <h3>Chinups</h3>
          <p>Description:<br>1) Grab The Bar. Grip it about shoulder-width apart. Full grip with your palms down.<br>
              2) Hang. Raise your feet off the floor by bending your knees. Hang with straight arms.<br>
3) Pull. Pull yourself up by pulling your elbows down to the floor. Keep your elbows close.<br>
4) Pass The bar. Pull yourself all the way up until your chin passes the bar. Don't do half reps.<br>
5) Repeat. Lower yourself all the way down until your arms are straight. Breathe. Pullup again. </p>
          <p>Body Part:  Back</p>
          <p>Sets and Reps: 3 sets x 12 reps</p>
          <p>Weight: Body Weight</p>
        </div>
      </div>

          <div class="exercise-box">
        <img src="Images/chinups for back.gif" alt="chinups for back" style="width: 200px; height: auto;">
        <div class="exercise-box-content">
          <h3>Two Bar Pullups</h3>
          <p>Description:<br>1) Grip a pullup bar with your palms facing towards each other. When you pull yourself up with your hands facing this way, you give your biceps and lats a great workout. Pulling yourself up with your palms out is considered the most difficult way to pull up your bodyweight. Start with your arms almost fully extended.
              <br>2) Pull your bodyweight up until your chin is slightly above the bar.
              <br> 3) Lower yourself until your arms are almost fully extended.<br>
4) Do another pullup.
</p>
          <p>Body Part: Back</p>
          <p>Sets and Reps: 3 sets x 12 reps</p>
          <p>Weight: Body Weight</p>
        </div>
        

      </div>
      <div class="exercise-box">
        <img src="Images/hanging dumbbell rows.gif" alt="hanging dumbbell rows" style="width: 200px; height: auto;">
        <div class="exercise-box-content">
          <h3>  Hanging Dumbbell Rows</h3>
          <p>Description:<br>
1) Take a dumbbell in your hand and let the weight hang down below you, feeling the serratus muscles stretch to their maximum when performing the hanging dumbbell rows exercise.
<br>2) Concentrating on using the serratus muscles in
isolation as much as possible, lift the dumbbell up
in front of you. <br>3) As you lift, your elbows come toward the front, not out to the side.<br>
4) Hold at the point of maximum serratus contraction, then lower the dumbbells slowly back to the starting position, feeling the serratus muscles stretch once more. During the hanging dumbbell rows movement, be sure to keep your elbows and the dumbbells as close to your body as possible.
</p>
          <p>Body part: Back</p>
          <p>Sets and Reps: 3 sets x 12 reps</p>
          <p>Weight: 5KG</p>
        </div>
      </div>

  </div>
</body>
</html>
