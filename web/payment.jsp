<%-- 
    Document   : payment
    Created on : 24-May-2024, 8:26:48 am
    Author     : PRANTIK
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thank You for Your Donation</title>
    <link rel="stylesheet" href="style.css">
    <script type="text/javascript">
        window.onload = function() {
            setTimeout(function() {
                window.location.href = 'confirm.jsp';
            }, 15000); // 15000 milliseconds = 15 seconds
        };
    </script>
</head>
<body>
    <div class="image-container">
        <img src="upi.png" alt="Thank You for Your Donation" class="centered-image">
    </div>
</body>
</html>

