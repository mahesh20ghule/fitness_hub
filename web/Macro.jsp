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
 <style>
     body{
 background: rgb(255,255,255);
background: linear-gradient(90deg, rgba(255,255,255,1) 0%, rgba(255,255,255,1) 0%, rgba(119,111,245,1) 0%, rgba(11,32,55,1) 0%, rgba(54,56,128,1) 0%, rgba(130,130,189,1) 100%);
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
form{
    max-width: 600px;
    margin: 0 auto;
    background: rgb(94,68,111);
    background: linear-gradient(90deg, rgba(94,68,111,1) 0%, rgba(78,63,63,1) 100%, rgba(252,176,69,1) 100%);
    padding: 20px;
    box-shadow: 0 5px 10px rgba(0,0,0,0.1); 
    color: white;
}
label{
    display: block;
    margin-bottom: 8px;
    font-weight: bold;
}
input,select{
    width: 100%;
    padding:8px;
    margin-bottom: 16px;
    box-sizing: border-box;
    border:1px solid #ccc;
    border-radius: 4px;
}
button{
    background-color: #4caf50;
    color: #fff;
    padding: 10px 15px;
    border: none;
    cursor: pointer;
}
table {
    width: 600px;
    margin: 0 auto;
    border-collapse: collapse;
    margin-top:20px;
}
table th, td {
    border: 1px solid #ddd;
}
th, td {
    padding: 12px;
    text-align: left;
}
tr {
    background: rgb(94,68,111);
    background: linear-gradient(90deg, rgba(94,68,111,1) 0%, rgba(78,63,63,1) 100%, rgba(252,176,69,1) 100%);
    color: white;
}
th{
    background-color: #4caf50;
    color: white;
}
h1 {
    text-align: center;
    padding-bottom: 20px;
}
</style>
</head>
<body>
    <header class="bg-dark text-white">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <div class="container">
          <a class="navbar-brand" href="index.jsp"> <img src="Images/Logo.jpeg" alt="Fitness-Hub Logo"  height="40" width="50"  class="d-inline-block align-text-top"> Fitness-Hub</a>
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
    <form onsubmit="calculateNutrients(event)" style="margin-top:4%;">
            <h1>Macro Calculator</h1>
            <label for="age">Age:</label>
            <input type="number" name="age" id="age">

            <label for="gender">Gender: </label>
            <select name="gender" id="gender">
                <option value="0">Male</option>
                <option value="1">Female</option>
            </select>

            <label for="height">Height (cm):</label>
            <input type="number" name="height" id="height">

            <label for="weight">Weight (kg):</label>
            <input type="number" name="weight" id="weight">

            <label for="activity">Activity Level:</label>
            <select name="activity" id="activity">
                <option value="0">Little or no exercise</option>
                <option value="1">Light Exercise (3-5d/week)</option>
                <option value="2">Moderate Exercise (4-6d/week)</option>
                <option value="3">Hard Exercise (6-7d/week)</option>
            </select>

            <label for="goal"> Goal: </label>
            <select name="goal" id="goal">
                <option value="0">Maintain Weight</option>
                <option value="1">Lose Weight</option>
                <option value="2">Gain Weight</option>
            </select>

            <button type="submit">Calculate</button>
    </form> 
    <table id="resultTable" style="display: none; margin-bottom: 20px;">
        <thead>
            <th>Nutrients</th>
            <th>Result</th>
        </thead>
        <tbody>
            <tr>
                <td>Protein</td>
                <td id="proteinResult"></td>
            </tr>
            <tr>
                <td>Carbs</td>
                <td id="carbsResult"></td>
            </tr>
            <tr>
                <td>Fat</td>
                <td id="fatResult"></td>
            </tr>
            <tr>
                <td>Calories</td>
                <td id="calorieResult"></td>
            </tr>
        </tbody>
    </table>
    <script>
        function calculateNutrients(event) {
            event.preventDefault();

            const age = document.getElementById('age').value;
            const gender = document.getElementById('gender').value;
            const height = document.getElementById('height').value;
            const weight = document.getElementById('weight').value;
            const activity = document.getElementById('activity').value;
            const goal = document.getElementById('goal').value;

            var genderKcal = gender == 0 ? 5 : -161;
            var bmr = 10 * weight + 6.25 * height - 5 * age + genderKcal;
            var calories = bmr * (activity * 0.175 + 1.2) + 
                (goal == 0 ? 0 : goal == 1 ? -500 : 500);

            var protein = calories * 0.3 / 4;
            var carb = calories * 0.4 / 4;
            var fat = calories * 0.3 / 9;

            document.getElementById('proteinResult').innerHTML = Math.round(protein) + "g";
            document.getElementById('carbsResult').innerHTML = Math.round(carb) + "g";
            document.getElementById('fatResult').innerHTML = Math.round(fat) + "g";
            document.getElementById('calorieResult').innerHTML = Math.round(calories) + "Kcal";
            
            document.getElementById('resultTable').style.display = 'table';
            document.getElementById('resultTable').scrollIntoView({ behavior: 'smooth' });
        }
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>