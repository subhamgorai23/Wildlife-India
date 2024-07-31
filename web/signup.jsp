<%-- 
    Document   : signup
    Created on : 22-May-2024, 12:33:14 pm
    Author     : PRANTIK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<title>signup
</title>
<link rel="stylesheet" href="signup.css">
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
    <form  method="post">
<table align="center">
<tr>
<td>
<h1 align="center">New User</h1>
</td>
</tr>
<tr>
<td>
<input type="text" class="oval-input" name="nm" id="nm" placeholder="Enter your Name" required />
</td>
</tr>
<tr>
<td>
<input type="text" class="oval-input" name="em" id="em" placeholder="Enter your Email" required />
</td>
</tr>
<tr>
<td>
<input type="text" class="oval-input" name="cn" id="cn" placeholder="Contact No." required />
</td>
</tr>
<tr>
<td>
<input type="text" class="oval-input" name="ad" id="ad" placeholder="Address" />
</td>
</tr>
<tr>
<td>
<input type="text" class="oval-input" name="ct" id="ct" placeholder="City" />
</td>
</tr>
<tr>
<td>
<input type="text" class="oval-input" name="st" id="st" placeholder="State Name" />
</td>
</tr>
<tr>
<td>
<input type="text" class="oval-input" name="pn" id="pn" placeholder="Pin code" />
</td>
</tr>
<tr>
<td>
<input type="Password" class="oval-input" name="pw" id="pw" placeholder="Password" required />
</td>
</tr>
<tr>
<td>
<input type="Password" class="oval-input" name="cpw" id="cpw" placeholder="Confirm Password:" required />
</td>
</tr>
<tr>
<td>
    <input type="submit" class="button" value="SIGNUP" />

</td>
</tr>
</table>
    </form>
<%
    String name=request.getParameter("nm");
    String mail=request.getParameter("em");
    String cont=request.getParameter("cn");
    String addr=request.getParameter("ad");
    String city=request.getParameter("ct");
    String state=request.getParameter("st");
    String pin=request.getParameter("pn");
    String pass=request.getParameter("pw");
    try
            {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/wildlife","root","prantik123");
            String ins="insert into signup(name,email,contact,address,city,state,pin,pass) values(?,?,?,?,?,?,?,?)";
            PreparedStatement p=con.prepareStatement(ins);
            p.setString(1,name);
            p.setString(2,mail);
            long pcont=Long.parseLong(cont);
            p.setLong(3,pcont);
            p.setString(4,addr);
            p.setString(5,city);
            p.setString(6,state);
            long pinc=Long.parseLong(pin);
            p.setLong(7,pinc);
            p.setString(8,pass);
            int r;
            r=p.executeUpdate();
            if(r>0)
            {
            response.sendRedirect("login.jsp");
}
p.close();
con.close();
}
catch(Exception e)
{}
    %>
</body>
</html>
