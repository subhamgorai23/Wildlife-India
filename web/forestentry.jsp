<%-- 
    Document   : forestentry
    Created on : 22-May-2024, 8:27:38 pm
    Author     : PRANTIK
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Login
</title>
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
<td>
<h1 align="center">ADD FOREST</h1>
</td>
</tr>
<tr>
<td>
<input type="text"class="oval-input" name="fn" placeholder="Enter Forest Name" required />
</td>
</tr>
<tr>
<td>
<input type="text" class="oval-input"name="fl" placeholder="Enter Forest Location" required />
</td>
</tr>
<tr>
<td>
<input type="text"class="oval-input" name="fs" placeholder="Enter Forest State" required />
</td>
</tr>
<tr>
<td>
<input type="text"class="oval-input" name="af" placeholder="Animals" required />
</td>
</tr>
<tr>
<td>
<input type="text"class="oval-input" name="fa" placeholder="Area Covered" required />
</td>
</tr>
<tr>
<td>
<input type="text"class="oval-input" name="ft" placeholder="Type of Forest" required />
</td>
</tr>
<tr>
<td>
    <input type="submit" class="button" value="ADD" />
</td>
</tr>
</table>
    </form>
<%
    String name=request.getParameter("fn");
    String loc=request.getParameter("fl");
    String state=request.getParameter("fs");
    String animal=request.getParameter("af");
    String area=request.getParameter("fa");
    String type=request.getParameter("ft");
    try
    {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/wildlife","root","prantik123");
    String ins="insert into forest(fname,flocation,fstate,afound,farea,ftype) values(?,?,?,?,?,?)";
    PreparedStatement p=con.prepareStatement(ins);
    p.setString(1,name);
    p.setString(2,loc);
    p.setString(3,state);
    p.setString(4,animal);
    p.setString(5,area);
    p.setString(6,type);
    int r;
    r=p.executeUpdate();
    if(r>0)
    {
    out.println("one record added");
}
}
catch(Exception e)
{}
    %>
</body>
</html>
