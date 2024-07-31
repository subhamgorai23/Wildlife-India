<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
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
        <div class="tagline">Discover the Wildlife of India</div>
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
            <td><h1 align="center">ADD ENDANGERED ANIMALS</h1></td>
        </tr>
        <tr>
            <td><input type="text" class="oval-input" name="fn" placeholder="Enter Animal Name" required /></td>
        </tr>
        <tr>
            <td><input type="text" class="oval-input" name="ac" placeholder="Enter Current Numbers In India" required /></td>
        </tr>
        <tr>
            <td><input type="text" class="oval-input" name="sr" placeholder="Steps Required To Save Them" required /></td>
        </tr>
        <tr>
            <td><input type="submit" class="button" value="ADD" /></td>
        </tr>
    </table>
</form>

<%
    // Retrieve form data
    String name = request.getParameter("fn");
    String acnt = request.getParameter("ac");
    String steps = request.getParameter("sr");

    // Only attempt to process the data if the form has been submitted
    if (name != null && acnt != null && steps != null) {
        Connection con = null;
        PreparedStatement p = null;
        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // Establish the connection to the database
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wildlife", "root", "prantik123");

            // SQL query to insert the data
            String ins = "INSERT INTO endanger (aname, curcount, stepsreq) VALUES (?, ?, ?)";
            p = con.prepareStatement(ins);
            p.setString(1, name);
            long count = Long.parseLong(acnt);
            p.setLong(2, count);
            p.setString(3, steps);

            // Execute the update
            int r = p.executeUpdate();

            // Check if the record was added successfully
            if (r > 0) {
                out.println("<p style='text-align:center;color:green;'>One record added successfully</p>");
            }
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<p style='text-align:center;color:red;'>An error occurred: " + e.getMessage() + "</p>");
        } finally {
            // Close the resources
            if (p != null) try { p.close(); } catch (SQLException ignore) {}
            if (con != null) try { con.close(); } catch (SQLException ignore) {}
        }
    }
%>
</body>
</html>
