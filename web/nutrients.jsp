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
      background-color: #f5f5f5;
      color: #333;
      background: rgb(255,255,255);
      background: linear-gradient(90deg, rgba(255,255,255,1) 0%, rgba(255,255,255,1) 0%, rgba(119,111,245,1) 0%, rgba(11,32,55,1) 0%, rgba(54,56,128,1) 0%, rgba(130,130,189,1) 100%);
      background-size: 100% 150%;
      background-repeat: no-repeat;
    }
    h1 {
      color: white;
    }
    p {
      color: white;
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
    .content {
      text-align: center;
      padding: 50px 0;
    }
    .plan-card {
      background: linear-gradient(90deg, rgba(255,255,255,1) 0%, rgba(255,255,255,1) 0%, rgba(119,111,245,1) 0%, rgba(11,32,55,1) 0%, rgba(94,97,233,1) 0%, rgba(130,130,189,1) 100%);
      text-transform: capitalize;
      border: 1px solid #ddd;
      border-radius: 10px;
      box-shadow: 0 2px 10px black;
      margin: 20px;
      padding: 20px;
      transition: transform 0.3s ease;
      height: 250px;
      display: flex;
      flex-direction: column;
      justify-content: space-between;
    }
    .plan-card:hover {
      background: blueviolet;
      transform: scale(1.05);
    }
    .plan-title {
      font-size: 24px;
      font-weight: bold;
      margin-bottom: 10px;
    }
    .plan-description {
      font-size: 16px;
    }
   .plan-button {
  margin-top: 10px;
  align-self: center;
  background-color: #007bff;
  border: 2px solid white;
  color: white;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  border-radius: 5px;
  transition: background-color 0.3s ease;
}

.plan-button:hover {
  background-color: #0056b3;
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
        <a class="navbar-brand" href="#">
          <img src="Images/Logo.jpeg" alt="Fitness-Hub Logo" height="40" width="50" class="d-inline-block align-text-top">
          Fitness-Hub
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
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

  <div class="content">
    <h1>Get the Best Plan for Your Fitness Journey</h1>
    <p>Select a plan that suits your goals and start your transformation today!</p>
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-md-3">
          <div class="plan-card">
            <div>
              <div class="plan-title">Beginner's Diet Plan</div>
              <div class="plan-description">Start your journey with a balanced diet plan.</div>
            </div>
            <a href="beginnersDiet.jsp" class="plan-button">Learn More</a>
          </div>
        </div>
        <div class="col-md-3">
          <div class="plan-card">
            <div>
              <div class="plan-title">Weight Loss</div>
              <div class="plan-description">Achieve your weight loss goals with our plan.</div>
            </div>
            <a href="weight-loss.jsp" class="plan-button">Learn More</a>
          </div>
        </div>
        <div class="col-md-3">
          <div class="plan-card">
            <div>
              <div class="plan-title">Weight Gain</div>
              <div class="plan-description">Gain healthy weight with our structured plan.</div>
            </div>
            <a href="weight-gain.jsp" class="plan-button">Learn More</a>
          </div>
        </div>
        <div class="col-md-3">
          <div class="plan-card">
            <div>
              <div class="plan-title">Body Building</div>
              <div class="plan-description">Build muscle with our expert-guided plan.</div>
            </div>
            <a href="body-building.jsp" class="plan-button">Learn More</a>
          </div>
        </div>
      </div>
    </div>
  </div>
<div class="container mt-5">
    <div class="row">
        <div class="col text-center">
            <div class="upgrade-box">
                <h2>Calculate Your Nutrition</h2>
                <p>Use our macro calculator to determine your daily nutritional needs based on your fitness goals and body composition.</p>
                <a href="Macro.jsp" class="btn btn-primary">Calculate Now</a>
            </div>
        </div>
    </div>
</div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qJ/6H4ynqV28UZbuC6QRYsM5kHZgrzGpMEvFrFuMNYABG7hfOCDq8/EfQ5YpYOZO" crossorigin="anonymous"></script>

</body>
</html>
