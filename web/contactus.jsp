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
    <title>Contact Us</title>
    <link rel="stylesheet" href="home.css">
</head>
<body>
    <nav class="navbar">
        <div class="navbar-brand">
            <div class="website-name">Wild India</div>
            <div class="tagline">Discover the Wildlife of India</div>
        </div>
        <div class="logo"><img src="logo.jpeg" alt="Logo"></div>
        <div class="buttons">
            
            <button class="oval-button"><a href="index.html">Back</a></button>
            
            <button class="oval-button">Review</button>
            <button class="oval-button">Donate</button>
        </div>
    </nav>
    <div class="container">
        <div class="contact-form">
            <h2>Contact Us</h2>
            <form method="post">
                <table align="center">
                    <tr>
                        <td>
                            <input type="text" name="em" class="oval-input" placeholder="Enter your Email" required />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <textarea name="cm"  rows="5" class="oval-input" placeholder="Enter your Comments" required></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="submit" class="button" value="SUBMIT">
                        </td>
                    </tr>
                </table>
            </form>
            <%
                String mail=request.getParameter("em");
                String msg=request.getParameter("cm");
                try
                {
                Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wildlife", "root", "prantik123");
        String ins="insert into contactus (email,message) values(?,?)";
        PreparedStatement p=con.prepareStatement(ins);
        p.setString(1,mail);
        p.setString(2,msg);
        int r;
        r=p.executeUpdate();
        if(r>0)
        {
        out.println("<h2 align='center'>Thank You For Your Suggestion</h2>");
            }
            p.close();
            con.close();
            }
            catch(Exception e)
            {}
                %>
        </div>
    </div>
</body>
</html>