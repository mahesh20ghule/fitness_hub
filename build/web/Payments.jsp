<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String paymentId = request.getParameter("payment_id");
    String planName = request.getParameter("planname");
    String planDuration = request.getParameter("planduration");
    String description = request.getParameter("description");
    String fees = request.getParameter("fees");
    String email = (String) session.getAttribute("email");

    Connection conn = null;
    PreparedStatement stmt = null;
    String url = "jdbc:mysql://localhost:3306/fitness";
    String user = "root";
    String password = "";

    try {
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(url, user, password);

        String sql = "INSERT INTO plans (payment_id, planname, planduration, description, fees, email) VALUES (?, ?, ?, ?, ?, ?)";
        stmt = conn.prepareStatement(sql);
        stmt.setString(1, paymentId);
        stmt.setString(2, planName);
        stmt.setString(3, planDuration);
        stmt.setString(4, description);
        stmt.setString(5, fees);
        stmt.setString(6, email);

        int rows = stmt.executeUpdate();
        if (rows > 0) {
            out.println("Payment details stored successfully.");
        } else {
            out.println("Failed to store payment details.");
        }
    } catch (Exception e) {
        e.printStackTrace();
        out.println("Error: " + e.getMessage());
    } finally {
        try {
            if (stmt != null) stmt.close();
            if (conn != null) conn.close();
        } catch (SQLException se) {
            se.printStackTrace();
        }
    }
%>
