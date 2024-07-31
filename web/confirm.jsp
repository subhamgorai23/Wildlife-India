<%-- 
    Document   : confirm
    Created on : 24-May-2024, 8:48:41 am
    Author     : PRANTIK
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thank You for Your Donation</title>
    <link rel="stylesheet" href="confirm.css">
    <script type="text/javascript">
        window.onload = function() {
            setTimeout(function() {
                window.location.href = 'explore.jsp';
            }, 10000); // 10000 milliseconds = 10 seconds
        };
    </script>
</head>
<body>
    <div class="message-container">
        <h1 class="thank-you-message">Thank You for Your Donation!</h1>
    </div>
</body>
</html>

