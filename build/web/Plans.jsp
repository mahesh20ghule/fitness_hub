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
            color: white;
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
                    <img src="Images/Logo.jpeg" alt="Fitness-Hub Logo" height="40" width="50" class="d-inline-block align-text-top"> Fitness-Hub
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
                            <a class="nav-link" href="profile.jsp">Profile</a>
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
    
    <div class="container profile-container">
        <h2 class="profile-heading">Your Purchased Plans</h2>
        <div class="row justify-content-center">
            <% 
                String email = (String) session.getAttribute("email");
                if (email != null) {
                    Connection conn = null;
                    PreparedStatement pstmt = null;
                    ResultSet rs = null;
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/fitness", "root", "");

                        String sql = "SELECT planname, planduration, description, fees, payment_id FROM plans WHERE email = ?";
                        pstmt = conn.prepareStatement(sql);
                        pstmt.setString(1, email);
                        rs = pstmt.executeQuery();

                        boolean hasResults = false;
                        while (rs.next()) {
                            hasResults = true;
                            String planName = rs.getString("planname");
                            String planDuration = rs.getString("planduration");
                            String planDescription = rs.getString("description");
                            double planFees = rs.getDouble("fees");
                            String paymentId = rs.getString("payment_id");
            %>
                            <div class="col-md-6">
                                <h3><%= planName %></h3>
                                <p><strong>Duration:</strong> <%= planDuration %></p>
                                <p><strong>Description:</strong> <%= planDescription %></p>
                                <p><strong>Fees:</strong> ₹<%= planFees %></p>
                                <p><strong>Payment ID:</strong> <%= paymentId %></p>
                            </div>
            <%
                        }
                        if (!hasResults) {
                            out.println("<p>No purchased plans found.</p>");
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    } finally {
                        if (rs != null) try { rs.close(); } catch (SQLException ignore) {}
                        if (pstmt != null) try { pstmt.close(); } catch (SQLException ignore) {}
                        if (conn != null) try { conn.close(); } catch (SQLException ignore) {}
                    }
                } else {
                    out.println("<p>Please log in to view your purchased plans.</p>");
                }
            %>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
