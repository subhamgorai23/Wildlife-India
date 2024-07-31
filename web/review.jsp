<%-- 
    Document   : review
    Created on : 22-May-2024
    Author     : PRANTIK
--%>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Review Page</title>
    <link rel="stylesheet" href="review.css">
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
            <td><h1 align="center">Submit Your Review</h1></td>
        </tr>
        <tr>
            <td>
                <div class="star-rating">
                    <input type="radio" name="rating" value="5" id="5" required><label for="5">★</label>
                    <input type="radio" name="rating" value="4" id="4"><label for="4">★</label>
                    <input type="radio" name="rating" value="3" id="3"><label for="3">★</label>
                    <input type="radio" name="rating" value="2" id="2"><label for="2">★</label>
                    <input type="radio" name="rating" value="1" id="1"><label for="1">★</label>
                </div>
            </td>
        </tr>
        <tr>
            <td><input type="text" class="oval-input" name="review" placeholder="Write your review here" required></td>
        </tr>
        <tr>
            <td><input type="submit" class="button" value="Submit Review"></td>
        </tr>
    </table>
</form>

<%
    if ("POST".equalsIgnoreCase(request.getMethod())) {
        String rating = request.getParameter("rating");
        String review = request.getParameter("review");

        if (rating != null && review != null && !review.isEmpty()) {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wildlife", "root", "prantik123");

                String query = "INSERT INTO reviews (rating, review) VALUES (?, ?)";
                PreparedStatement pstmt = con.prepareStatement(query);
                pstmt.setInt(1, Integer.parseInt(rating));
                pstmt.setString(2, review);

                int rowsAffected = pstmt.executeUpdate();

                if (rowsAffected > 0) {
                    out.println("<p>Review submitted successfully!</p>");
                } else {
                    out.println("<p>Failed to submit review. Please try again.</p>");
                }

                pstmt.close();
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
                out.println("<p>Error: " + e.getMessage() + "</p>");
            }
        } else {
            out.println("<p>Please provide a rating and a review.</p>");
        }
    }
%>
</body>
</html>
