<%-- 
    Document   : donate
    Created on : 24-May-2024, 12:16:01 am
    Author     : PRANTIK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Donate to Wildlife Reservation</title>
    <link rel="stylesheet" href="donate.css">
</head>
<body>
    <nav class="navbar">
        <div class="navbar-brand">
            <div class="website-name">Wild India</div>
            <div class="tagline">Discover the Wildlife of India</div>
        </div>
        <div class="logo"><img src="logo.jpeg" alt="Logo"></div>
        <div class="buttons">
            <button class="oval-button"><a href="explore.jsp">Back</a></button>
            <button class="oval-button"><a href=contactus.jsp">Contact Us</a></button>
            <button class="oval-button"><a href="review.jsp">Review</a></button>
        </div>
    </nav>

    <div class="container">
        <div class="column">
            <h2>Why Donate?</h2>
            <p>Your generous donation helps us to:</p>
            <ul>
                <li>Protect endangered species</li>
                <li>Preserve natural habitats</li>
                <li>Support conservation research</li>
                <li>Educate the community about wildlife</li>
                <li>Maintain and expand our wildlife reservations</li>
            </ul>
        </div>
        <div class="column">
            <h2>Make a Difference</h2>
            <p>Your support ensures that future generations can experience the wonders of India's wildlife. Join us in our mission to protect and conserve our natural heritage.</p>
            <button class="button" onclick="location.href='payment.jsp'">Donate Now</button>
        </div>
    </div>
</body>
</html>

