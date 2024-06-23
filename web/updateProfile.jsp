<%@ page import="java.io.*,java.util.*,java.sql.*" %>

<%
    String email = request.getParameter("email");
    String firstName = request.getParameter("firstName");
    String lastName = request.getParameter("lastName");
    String gender = request.getParameter("gender");
    String age = request.getParameter("age");
    String phoneNumber = request.getParameter("phoneNumber");
    String height = request.getParameter("height");
    String weight = request.getParameter("weight");
    String goal = request.getParameter("goal");
    String trainingType = request.getParameter("trainingType");
    String username = request.getParameter("username");
    
    
    
    session.setAttribute("firstName", firstName);
    session.setAttribute("lastName", lastName);
    session.setAttribute("gender", gender);
    session.setAttribute("age", age);
    session.setAttribute("phoneNumber", phoneNumber);
    session.setAttribute("height", height);
    session.setAttribute("weight", weight);
    session.setAttribute("goal", goal);
    session.setAttribute("trainingType", trainingType);
    session.setAttribute("username", username);
    Connection con = null;
    PreparedStatement ps = null;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fitness", "root", "");

        String query = "UPDATE userdata SET first_name=?, last_name=?, gender=?, age=?, phone_number=?, height=?, weight=?, goal=?, training_type=?, username=? WHERE email=?";
        ps = con.prepareStatement(query);
        ps.setString(1, firstName);
        ps.setString(2, lastName);
        ps.setString(3, gender);
        ps.setString(4, age);
        ps.setString(5, phoneNumber);
        ps.setString(6, height);
        ps.setString(7, weight);
        ps.setString(8, goal);
        ps.setString(9, trainingType);
        ps.setString(10, username);
        ps.setString(11, email);

        int result = ps.executeUpdate();
        if (result > 0) {
            session.setAttribute("message", "Profile updated successfully.");
            response.sendRedirect("profile.jsp");
        } else {
            session.setAttribute("message", "Error updating profile.");
            response.sendRedirect("profile.jsp");
        }
    } catch (ClassNotFoundException e) {
        session.setAttribute("message", "Error: JDBC Driver not found.");
        response.sendRedirect("profile.jsp");
    } catch (SQLException e) {
        session.setAttribute("message", "Error: " + e.getMessage());
        response.sendRedirect("profile.jsp");
    } finally {
        try {
            if (ps != null) ps.close();
            if (con != null) con.close();
        } catch (SQLException e) {
            session.setAttribute("message", "Error closing resources: " + e.getMessage());
            response.sendRedirect("profile.jsp");
        }
    }
%>
