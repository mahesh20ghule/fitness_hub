<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Fitness-Hub</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
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
            height: 710px;
        }
        .container {
            max-width: 400px;
            margin: 50px auto;
        }
        form {
            background: rgb(94,68,111);
            background: linear-gradient(90deg, rgba(94,68,111,1) 0%, rgba(78,63,63,1) 100%, rgba(252,176,69,1) 100%);
            color: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px black;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group a {
            text-decoration: none;
        }
        .btn-login {
            background-color: blueviolet;
            color: #fff;
        }
        .btn-login:hover {
            background-color: salmon;
            color: #fff;
        }
        .navbar {
            height: 80px;
            margin-right: 70px;
            margin-left: 70px;
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
    </style>
</head>
<body>
<header class="bg-dark text-white">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <div class="d-flex align-items-center">
                <a class="navbar-brand" href="index.jsp">
                    <img src="Images/Logo.jpeg" alt="Fitness-Hub Logo"  height="40" width="50"  class="d-inline-block align-text-top">
                    Fitness-Hub
                </a>
            </div>
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
                        <a class="nav-link" href="#about">About us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#about">Contact us</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>

<div class="container">
    <form action="check.jsp" method="post" >
        <h2 class="mb-4">Login to Fitness-Hub</h2>
        <div class="form-group">
            <label for="exampleFormControlInput1">Username or Email:</label>
            <input type="text" class="form-control" id="exampleFormControlInput1" name="username" required>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" class="form-control" id="password" name="pass" required>
        </div>
        <button type="submit" class="btn btn-login">Log In</button>
        <div class="form-group mt-3">
            <p>Don't have an account? <a href="sign.jsp">Create an Account</a></p>
        </div>
        <% if (request.getParameter("error") != null) { %>
            <div class="alert alert-danger" role="alert">
                <%= request.getParameter("error") %>
            </div>
        <% } %>
    </form>
</div>
</body>
</html>
