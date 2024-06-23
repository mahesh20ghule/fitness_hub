<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); %>
<% response.setHeader("Pragma", "no-cache"); %>
<% response.setDateHeader("Expires", 0); %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
        try {
            String username = request.getParameter("username");
            String pass = request.getParameter("pass");

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fitness", "root", "");

         PreparedStatement ps;
if (username.contains("@")) {
   
    ps = con.prepareStatement("SELECT email FROM userdata WHERE email=? AND password=?");
    ps.setString(1, username);
} else {
   
    ps = con.prepareStatement("SELECT email FROM userdata WHERE username=? AND password=?");
    ps.setString(1, username);
}
ps.setString(2, pass);


            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                String email = rs.getString("email");
                session.setAttribute("email", email);
                response.sendRedirect("index.jsp");
            } else {
                %>
                <script>
                    alert('Invalid login, please try again!');
                    window.location='login.jsp';
                </script>
                <%
            }

            rs.close();
            ps.close();
            con.close();
        } catch (Exception e) {
            out.print(e.toString());
        }
        %>
    </body>
</html>
