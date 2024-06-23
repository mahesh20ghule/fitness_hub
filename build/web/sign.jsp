<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Fitness Website</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <style>
    body {
      font-family: 'Arial', sans-serif;
      line-height: 1.6;
      background-color: #f5f5f5;
      color: #333;
      background: rgb(255,255,255);
      background: linear-gradient(90deg, rgba(255,255,255,1) 0%, rgba(255,255,255,1) 0%, rgba(119,111,245,1) 0%, rgba(11,32,55,1) 0%, rgba(54,56,128,1) 0%, rgba(130,130,189,1) 100%);
      background-repeat: no-repeat;
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
    .form-container {
      max-width: 500px;
      margin-top: 20px;
      padding: 20px;
      margin-bottom: 20px;
      border-radius: 5px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      background: linear-gradient(90deg, rgba(94,68,111,1) 0%, rgba(78,63,63,1) 100%, rgba(252,176,69,1) 100%);
      color: white;
    }
    .form-group {
      margin-bottom: 20px;
    }
    .form-group label {
      font-weight: bold;
    }
    .form-control {
      width: 100%;
      padding: .375rem .75rem;
      font-size: 1rem;
      line-height: 1.5;
      color: #495057;
      background-color: #fff;
      border: 1px solid #ced4da;
      border-radius: .25rem;
      transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;
    }
    .btn {
      padding: .375rem .75rem;
      font-size: 1rem;
      line-height: 1.5;
      border-radius: .25rem;
    }
    .btn-primary {
      color: #fff;
      background-color: #007bff;
      border-color: #007bff;
    }
    .btn-primary:hover {
      color: #fff;
      background-color: #0056b3;
      border-color: #0056b3;
    }
    .btn-secondary {
      color: #fff;
      background-color: #6c757d;
      border-color: #6c757d;
    }
    .btn-secondary:hover {
      color: #fff;
      background-color: #545b62;
      border-color: #4e555b;
    }
    
  </style>
</head>
<body>
  <header class="bg-dark text-white">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <div class="container">
        <a class="navbar-brand" href="index.jsp"><img src="Images/Logo.jpeg" alt="Fitness-Hub Logo"  height="40" width="50"  class="d-inline-block align-text-top"> Fitness-Hub</a>
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
          </ul>
        </div>
      </div>
    </nav>
  </header>

  <div class="container">
    <div class="row">
      <div class="col-md-6 offset-md-3">
        <div class="form-container">
          <h1>Sign up</h1>
          <form action="signup.jsp" method="post" onsubmit="return validateForm()" enctype="multipart/form-data">
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label for="firstName">First Name:</label>
                  <input type="text" id="firstName" name="firstName" class="form-control" required>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <label for="lastName">Last Name:</label>
                  <input type="text" id="lastName" name="lastName" class="form-control" required>
                </div>
              </div>
            </div>
             <div class="row">
  <div class="col-md-6">
    <div class="form-group">
      <label for="gender">Gender:</label>
      <select id="gender" name="gender" class="form-control">
        <option value="Male">Male</option>
        <option value="Female">Female</option>
      </select>
    </div>
  </div>
  <div class="col-md-6">
    <div class="form-group">
      <label for="age">Age:</label>
      <input type="number" id="age" name="age" class="form-control" required>
    </div>
  </div>
</div>

             <div class="form-group">
                <label for="phoneNumber">Phone Number:</label>
                <input type="tel" id="phoneNumber" name="phoneNumber" maxlength="10" pattern="\d{10}" class="form-control" required>
            </div>
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label for="height">Height (cm):</label>
                  <input type="number" id="height" name="height" class="form-control" required>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <label for="weight">Weight (kg):</label>
                  <input type="number" id="weight" name="weight" class="form-control" required>
                </div>
              </div>
            </div>
            <div class="form-group">
              <label for="goal">Goal:</label>
              <select id="goal" name="goal" class="form-control">
                <option value="gain">Gain Weight</option>
                <option value="loss">Lose Weight</option>
                <option value="maintain">Maintain Weight</option>
              </select>
            </div>
              <div class="form-group" style=" accent-color: #007bff;">
              <label for="trainingType">Training Type:</label><br>
              <input type="radio" id="online" name="trainingType" value="online" checked>
              <label for="online">Online</label>
              <input type="radio" id="offline" name="trainingType" value="offline">
              <label for="offline">Offline</label>
            </div>
              <div class="form-group">
              <label for="email">Email:</label>
               <input type="email" id="email" name="email" class="form-control" required>
               </div>

            <div class="form-group">
              <label for="username">Username:</label>
              <input type="text" id="username" name="username" class="form-control" required>
            </div>
            <div class="form-group">
              <label for="password">Create Password:</label>
              <input type="password" id="password" name="password" class="form-control" required>
            </div>
            <div class="form-group">
              <label for="confirmPassword">Confirm Password:</label>
              <input type="password" id="confirmPassword" name="confirmPassword" class="form-control" required>
            </div>
            <div class="form-group">
              <button type="submit" class="btn btn-primary">Sign up</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
<div id="popup" style="display:none; position: fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); background-color: white; padding: 20px; border-radius: 5px; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);">
    Registration successful. You can now log in.
    <button onclick="closePopup()">OK</button>
</div>
<script>
function showPopup() {
    document.getElementById('popup').style.display = 'block';
}

function closePopup() {
    window.location = 'login.jsp'; 
}

function validatePhoneNumber() {
    var phoneNumber = document.getElementById('phoneNumber').value;
    if (phoneNumber.length !== 10 || !/^\d{10}$/.test(phoneNumber)) {
        alert('Please enter a valid 10-digit phone number.');
        return false;
    }
    return true;
}

function validatePassword() {
    var password = document.getElementById('password').value;
    var confirmPassword = document.getElementById('confirmPassword').value;
    var passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;

    if (!passwordRegex.test(password)) {
        alert('Password must be at least 8 characters long and include at least one uppercase letter, one lowercase letter, one number, and one special character.');
        return false;
    }

    if (password !== confirmPassword) {
        alert('Passwords do not match.');
        return false;
    }

    return true;
}

function validateForm() {
    return validatePhoneNumber() && validatePassword();
}
</script>

  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz4fnFO9gybBogGz8ELQdGT9iJT0ImBQv7Gda9w1E6cBv42e7Wr7Pp6d6j" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-pprn3073KE6tl6ULtzLrP4j5dB7x8e2+hP7Uknx1HbI0fH0K0tItMGMN5t9UJ0Z" crossorigin="anonymous"></script>
</body>
</html>
