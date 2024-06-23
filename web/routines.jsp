<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Fitness Website</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
 <style>
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
 

    h1 {
      text-align: center;
      margin-bottom: 20px;
    }

    h2 {
      margin-top: 20px;
      margin-bottom: 10px;
    }

    p {
      margin-bottom: 20px;
    }

    .day {
  background: rgb(94,68,111);
  background: linear-gradient(90deg, rgba(94,68,111,1) 0%, rgba(143,7,211,1) 0%, rgba(78,63,63,1) 100%, rgba(252,176,69,1) 100%);
  border-radius: 5px;
  padding: 20px;
  margin-bottom: 30px;
  color: white;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1), 0 2px 4px rgba(0, 0, 0, 0.08);
}

  .summary {
  background: linear-gradient(135deg, #8a2387, #e94057, #f27121);
  border-radius: 5px;
  padding: 20px;
  margin-top: 30px;
  color: white;
  box-shadow: 0 2px 10px black;
}


.summary h2 {
  margin-bottom: 20px;
}

.summary p {
  font-size: 18px;
}

.btn-membership {
  background-color: #e94057;
  border: none;
  color: white;
  padding: 10px 20px;
  font-size: 18px;
  border-radius: 5px;
  text-decoration: none;
}

.btn-membership:hover {
  background-color: #d02947;
  color: white;
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
    <div class="container">
    <h1 style="margin-top: 20px; color:  #fff; margin-bottom: 30px;">7-Day Beginner Workout Program</h1>

    <div class="day">
        <h2>Day 1: Upper Body</h2>
        <p>Chest: barbell bench press - 3 sets of 5 reps</p>
    <p>Back: bent over rows - 3 sets of 5 reps</p>
    <p>Shoulders: overhead press - 3 sets of 5 reps</p>
    <p>Triceps: triceps dips - 3 sets of 5 reps</p>
    <p>Biceps: barbell curls - 3 sets of 5 reps</p>
    </div>

    <div class="day">
        <h2>Day 2: Lower Body</h2>
        <p>Legs: squats - 3 sets of 5 reps</p>
    <p>Hamstrings: deadlifts - 3 sets of 5 reps</p>
    <p>Calves: calf raises - 3 sets of 5 reps</p>
    </div>

    <div class="day">
        <h2>Day 3: Full body</h2>
         <p>Legs: lunges - 3 sets of 5 reps</p>
    <p>Chest: push-ups - 3 sets of 5 reps</p>
    <p>Back: pull-ups - 3 sets of 5 reps</p>
    <p>Shoulders: lateral raises - 3 sets of 5 reps</p>
    <p>Triceps: triceps extensions - 3 sets of 5 reps</p>
    <p>Biceps: hammer curls - 3 sets of 5 reps</p>
    </div>

   <div class="day">
    <h2>Day 4: Upper Body</h2>
    <p>Chest: barbell bench press - 3 sets of 5 reps</p>
    <p>Back: bent over rows - 3 sets of 5 reps</p>
    <p>Shoulders: overhead press - 3 sets of 5 reps</p>
    <p>Triceps: triceps dips - 3 sets of 5 reps</p>
    <p>Biceps: barbell curls - 3 sets of 5 reps</p>
</div>

<div class="day">
    <h2>Day 5: Lower Body</h2>
    <p>Legs: squats - 3 sets of 5 reps</p>
    <p>Hamstrings: deadlifts - 3 sets of 5 reps</p>
    <p>Calves: calf raises - 3 sets of 5 reps</p>
</div>

<div class="day">
    <h2>Day 6: Full Body</h2>
    <p>Legs: lunges - 3 sets of 5 reps</p>
    <p>Chest: push-ups - 3 sets of 5 reps</p>
    <p>Back: pull-ups - 3 sets of 5 reps</p>
    <p>Shoulders: lateral raises - 3 sets of 5 reps</p>
    <p>Triceps: triceps extensions - 3 sets of 5 reps</p>
    <p>Biceps: hammer curls - 3 sets of 5 reps</p>
</div>

<div class="day rest-day">
    <h2>Day 7: Rest Day</h2>
    <p>Take a break and allow your body to recover.</p>
</div>

</div>

<div class="container mt-5 text-center">
    <div class="summary">
        <h2>Learn More with Our Membership Plans</h2>
        <p>To get detailed tutorials and personalized workout plans, purchase our membership plans.</p>
        <a href="training.jsp" class="btn btn-primary">View Membership Plans</a>
    </div>
</div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
