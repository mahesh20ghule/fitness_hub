<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%
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
String password = request.getParameter("password");
String confirmPassword = request.getParameter("confirmPassword");
String email = request.getParameter("email");

    session.setAttribute("firstName", request.getParameter("firstName"));
    session.setAttribute("lastName", request.getParameter("lastName"));
    session.setAttribute("gender", request.getParameter("gender"));
    session.setAttribute("age", request.getParameter("age"));
    session.setAttribute("phoneNumber", request.getParameter("phoneNumber"));
    session.setAttribute("height", request.getParameter("height"));
    session.setAttribute("weight", request.getParameter("weight"));
    session.setAttribute("goal", request.getParameter("goal"));
    session.setAttribute("trainingType", request.getParameter("trainingType"));
    session.setAttribute("username", request.getParameter("username"));
    session.setAttribute("email", request.getParameter("email"));
    session.setAttribute("password", request.getParameter("password"));
    session.setAttribute("confirmPassword", request.getParameter("confirmPassword"));
Connection con = null;
PreparedStatement ps = null;
ResultSet rs = null;

try {
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fitness", "root", "");
    String checkQuery = "SELECT * FROM userdata WHERE username=? OR email=?";
    ps = con.prepareStatement(checkQuery);
    ps.setString(1, username);
    ps.setString(2, email);
    rs = ps.executeQuery();
    if (rs.next()) {
        out.println("<script>alert('Username or email already exists. Please try again.');</script>");
        out.println("<script>window.location='sign.jsp';</script>");
    } else if (!password.equals(confirmPassword)) {
        out.println("<script>alert('Password confirmation does not match. Please re-enter your password.');</script>");
        out.println("<script>window.location='sign.jsp';</script>");
    } 
    else {
        
        String insertQuery = "INSERT INTO userdata (first_name, last_name, gender, age, phone_number, height, weight, goal, training_type, username, password, email) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        ps = con.prepareStatement(insertQuery);

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
        ps.setString(11, password);
        ps.setString(12, email);
        int result = ps.executeUpdate();

        if (result > 0) {
            out.println("<script>alert('Registration successful. You can now log in.');</script>");
            out.println("<script>window.location='login.jsp';</script>");
        } else {
            out.println("Registration failed. Please try again.");
        }
    }
} catch (Exception e) {
    out.println("Error: " + e.getMessage());
} finally {
    try {
        if (rs != null) {
            rs.close();
        }
        if (ps != null) {
            ps.close();
        }
        if (con != null) {
            con.close();
        }
    } catch (SQLException e) {
        out.println("Error closing resources: " + e.getMessage());
    }
}
%>
