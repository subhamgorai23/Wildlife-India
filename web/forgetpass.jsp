<%-- 
    Document   : login
    Created on : 22-May-2024, 12:27:13 pm
    Author     : PRANTIK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="login.css">
</head>
<body>
<nav class="navbar">
    <div class="navbar-brand">
        <div class="website-name">Wild India</div>
        <div class="tagline">Discover the WildLife of India</div>
    </div>
    <div class="logo"><img src="logo.jpeg" alt="Logo"></div>
    <div class="buttons">
        <button class="oval-button">Contact Us</button>
        <button class="oval-button">Review</button>
    </div>
</nav>
<form method="post">
    <table align="center">
        <tr>
            <td><h1 align="center">Login</h1></td>
        </tr>
        <tr>
            <td><input type="text" class="oval-input" name="em" placeholder="Enter Email" required></td>
        </tr>
        <tr>
            <td><input type="password" class="oval-input" name="ps" placeholder="Enter New Password" required></td>
        </tr>
        <tr>
            <td><input type="password" class="oval-input" name="nps" placeholder="Confirm New Password" required></td>
        </tr>
        <tr>
            <td><input type="submit" class="button" value="CHANGE"></td>
        </tr>
        
    </table>
</form>

<%
    String mail = request.getParameter("em");
    String pass = request.getParameter("ps");
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wildlife", "root", "prantik123");
        String ins = "update signup set pass=? where email=?";
        PreparedStatement p = con.prepareStatement(ins);
        p.setString(1, pass);
        p.setString(2, mail);
        int r;
        r = p.executeUpdate();
        if (r>0) {
            response.sendRedirect("login.jsp");
        }
        p.close();
        con.close();
    } catch (Exception e) {
        // Handle exception
    }
%>
</body>
</html>
