<%-- 
    Document   : adminlogin
    Created on : 22-May-2024, 8:21:59 pm
    Author     : PRANTIK
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Login
</title>
<link rel="stylesheet" href="adminlogin.css">
</head>
<body>
<nav class="navbar">
<div class="navbar-brand">
<div class="website-name">Wild India</div>
<div class="tagline">Discover the WildLife of India</div>
</div>
<div class="logo"><img src="logo.jpeg" alt="Logo"></div>

</nav>
    <form method="post">
<table align="center">
<tr>
<td>
<h1 align="center">Admin Login</h1>
</td>
</tr>
<tr>
<td>
<input type="text"class="oval-input" name="an" placeholder="Admin Id" required />
</td>
</tr>
<tr>
<td>
<input type="password"class="oval-input"name="ps" placeholder="Admin Password" required />
</td>
</tr>
<tr>
<td>
    <input type="submit" class="button" value="LOGIN" />
</td>
</tr>
</table>
    </form>
</body>
</html>