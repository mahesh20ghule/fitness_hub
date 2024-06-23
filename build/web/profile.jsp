<%@ page import="java.sql.*, java.io.*, javax.servlet.*, javax.servlet.http.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile - Fitness Website</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            line-height: 1.6;
            background: linear-gradient(90deg, rgba(255, 255, 255, 1) 0%, rgba(255, 255, 255, 1) 0%, rgba(119, 111, 245, 1) 0%, rgba(11, 32, 55, 1) 0%, rgba(54, 56, 128, 1) 0%, rgba(130, 130, 189, 1) 100%);
            background-size: cover;
            background-repeat: no-repeat;
            color: #333;
            margin: 0;
            padding: 0;
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

        .profile-container {
            margin-top: 20px;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .profile-heading {
            font-size: 24px;
            margin-bottom: 10px;
            text-align: center;
        }

        .col-md-6 {
            margin: 20px 30px;
            background: rgb(94, 68, 111);
            background: linear-gradient(90deg, rgba(94, 68, 111, 1) 0%, rgba(78, 63, 63, 1) 100%, rgba(252, 176, 69, 1) 100%);
            color: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <header class="bg-dark text-white">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="index.jsp">
                    <img src="Images/Logo.jpeg" alt="Fitness-Hub Logo"  height="40" width="50"  class="d-inline-block align-text-top"> Fitness-Hub
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
                            <a class="nav-link" href="Plans.jsp">Plans</a>
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
                                <% } %>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    
    <%
        String email = (String) session.getAttribute("email");
        if (email == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        String firstName = "", lastName = "", gender = "", age = "", phoneNumber = "", height = "", weight = "", goal = "", trainingType = "", username = "";
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fitness", "root", "");
            String query = "SELECT * FROM userdata WHERE email = ?";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, email);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                firstName = rs.getString("first_name");
                lastName = rs.getString("last_name");
                gender = rs.getString("gender");
                age = rs.getString("age");
                phoneNumber = rs.getString("phone_number");
                height = rs.getString("height");
                weight = rs.getString("weight");
                goal = rs.getString("goal");
                trainingType = rs.getString("training_type");
                username = rs.getString("username");
                
            } else {
                out.println("No data found for the provided email.");
            }

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            out.println("Exception: " + e.getMessage());
        }
    %>

    <div class="col-md-6 mx-auto">
        <h2 class="profile-heading">User Profile</h2>
        <form action="updateProfile.jsp" method="post">
            <div class="row">
                <div class="col">
                    <label for="firstName" class="form-label"><strong>First Name:</strong></label>
                    <input type="text" class="form-control mb-3" id="firstName" name="firstName" value="<%= firstName %>">
                </div>
                <div class="col">
                    <label for="lastName" class="form-label"><strong>Last Name:</strong></label>
                    <input type="text" class="form-control mb-3" id="lastName" name="lastName" value="<%= lastName %>">
                </div>
            </div>
            <label for="gender" class="form-label"><strong>Gender:</strong></label>
            <input type="text" class="form-control mb-3" id="gender" name="gender" value="<%= gender %>">
            <div class="row">
                <div class="col">
                    <label for="age" class="form-label"><strong>Age:</strong></label>
                    <input type="text" class="form-control mb-3" id="age" name="age" value="<%= age %>">
                </div>
                <div class="col">
                    <label for="height" class="form-label"><strong>Height:</strong></label>
                    <input type="text" class="form-control mb-3" id="height" name="height" value="<%= height %>">
                </div>
                <div class="col">
                    <label for="weight" class="form-label"><strong>Weight:</strong></label>
                    <input type="text" class="form-control mb-3" id="weight" name="weight" value="<%= weight %>">
                </div>
            </div>
                <label for="phoneNumber" class="form-label"><strong>Phone Number:</strong></label>
<div class="input-group mb-3">
  <span class="input-group-text">91+</span>
  <input type="text" class="form-control" id="phoneNumber" name="phoneNumber" value="<%= phoneNumber %>">
</div>

            <div class="row">
                <div class="col">
                    <label for="goal" class="form-label"><strong>Goal:</strong></label>
                    <input type="text" class="form-control mb-3" id="goal" name="goal" value="<%= goal %>">
                </div>
                <div class="col">
                    <label for="trainingType" class="form-label"><strong>Training Type:</strong></label>
                    <input type="text" class="form-control mb-3" id="trainingType" name="trainingType" value="<%= trainingType %>">
                </div>
            </div>
            <label for="email" class="form-label"><strong>Email:</strong></label>
            <input type="email" class="form-control mb-3" id="email" name="email" value="<%= email %>" readonly>
            <label for="username" class="form-label"><strong>Username:</strong></label>
            <input type="text" class="form-control mb-3" id="username" name="username" value="<%= username %>">
            <button type="submit" class="btn btn-primary">Update Profile</button>
        </form>
    </div>
    
    <script>
        function validatePhoneNumber() {
            var phoneNumber = document.getElementById('phoneNumber').value;
            if (phoneNumber.length !== 10 || !/^\d{10}$/.test(phoneNumber)) {
                alert('Please enter a valid 10-digit phone number.');
                return false;
            }
            return true;
        }
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
