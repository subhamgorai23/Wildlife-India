<%-- 
    Document   : explore
    Created on : 22-May-2024, 1:15:02 pm
    Author     : PRANTIK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>explore
</title>
<link rel="stylesheet" href="explore.css">
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
    <div class="container">
        <div class="column">
            <h2>Nation Parks of India</h2>
            <ul>
                <li>
                    <a href="nationalpark.jsp">
                        <img src="nationalpark.jpg" alt="National Park">
                        <span>National Parks of India</span>
                    </a>
                </li>
            </ul>
        </div>
        <div class="column">
            <h2>Reserve Forests of India</h2>
            <ul>
                <li>
                    <a href="reserveforest.jsp">
                        <img src="reserveforest.jpg" alt="Reserve Forest">
                        <span>Reserve Forest of India</span>
                    </a>
                </li>
            </ul>
        </div>
        <div class="column">
            <h2>Endangered Animals Of India</h2>
            <ul>
                <li>
                    <a href="endangered.jsp">
                        <img src="endangered.jpg" alt="Endangered Animals">
                        <span> Endangered Animals Of India</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    </body>
</html>
