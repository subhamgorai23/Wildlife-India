<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Wild India</title>
    <link rel="stylesheet" href="contactus.css">
</head>
<body>
    <nav class="navbar">
        <div class="navbar-brand">
            <div class="website-name">Wild India</div>
            <div class="tagline">Discover the Wildlife of India</div>
        </div>
        <div class="logo"><img src="logo.jpeg" alt="Logo"></div>
        <div class="buttons">
            <button class="oval-button"><a href="explore.jsp">Explore</a></button>
            <button class="oval-button"><a href="login.jsp">Login</a></button>
            <button class="oval-button"><a href="contactus.jsp">Contact Us</a></button>
            <button class="oval-button">Review</button>
            <button class="oval-button">Donate</button>
        </div>
    </nav>
    <div class="search-bar">
        <form method="post">
            <input type="text" name="fn" placeholder="Search for endangered animal..." class="oval-input">
            <button type="submit" class="oval-button">Search</button>
        </form>
    </div>
    
    <%
        // Get the search query from the request
        String name = request.getParameter("fn");

        if(name != null && !name.trim().isEmpty()) {
            Connection con = null;
            PreparedStatement pstmt = null;
            ResultSet rs = null;

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wildlife", "root", "prantik123");

                String query = "SELECT * FROM endanger WHERE aname=?";
                pstmt = con.prepareStatement(query);
                pstmt.setString(1, name);
                rs = pstmt.executeQuery();

                if(rs.isBeforeFirst()) {
    %>
    <div class="results">
        <%
                    while(rs.next()) {
                        String aname = rs.getString("aname").replaceAll("\\s+", "").toLowerCase();
        %>
        <div class="row">
            <div class="column"><strong>Name:</strong> <%= rs.getString("aname") %></div>
            <div class="column"><strong>Current Strength:</strong> <%= rs.getString("curcount") %></div>
            <div class="column"><strong>Steps Required:</strong> <%= rs.getString("stepsreq") %></div>
            
            <div class="column"><img src="<%= aname %>.jpg" alt="<%= rs.getString("aname") %> Image" width="200"></div>
        </div>
        <%
                    }
        %>
    </div>
    <%
                } else {
    %>
    <div class="results">
        <p>No results found for '<%= name %>'</p>
    </div>
    <%
                }
            } catch(Exception e) {
                e.printStackTrace();
            } finally {
                if(rs != null) try { rs.close(); } catch(SQLException ignore) {}
                if(pstmt != null) try { pstmt.close(); } catch(SQLException ignore) {}
                if(con != null) try { con.close(); } catch(SQLException ignore) {}
            }
        }
    %>
</body>
</html>
