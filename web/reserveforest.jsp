<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Wild India</title>
    <link rel="stylesheet" href="reserveforest.css">
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
            <button class="oval-button"><a href="contactus.jsp">Contact Us</a></button>
            <button class="oval-button"><a href="review.jsp">Review</a></button>
            <button class="oval-button"><a href="donate.jsp">Donate</a></button>
        </div>
    </nav>
    <div class="search-bar">
        <form method="post">
            <input type="text" name="fn" placeholder="Search for reserve forest..." class="oval-input">
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

                String query = "SELECT fname, flocation, fstate, afound, farea, ftype FROM forest WHERE ftype = 'Reserve Forest' AND fname=?";
                pstmt = con.prepareStatement(query);
                pstmt.setString(1, name);
                rs = pstmt.executeQuery();

                if(rs.isBeforeFirst()) {
    %>
    <div class="results">
        <%
                    while(rs.next()) {
                        String fname = rs.getString("fname").replaceAll("\\s+", "").toLowerCase();
        %>
        <div class="row">
            <div class="column"><strong>Name:</strong> <%= rs.getString("fname") %></div>
            <div class="column"><strong>Location:</strong> <%= rs.getString("flocation") %></div>
            <div class="column"><strong>State:</strong> <%= rs.getString("fstate") %></div>
            <div class="column"><strong>Animal Found:</strong> <%= rs.getString("afound") %></div>
            <div class="column"><strong>Area Covered:</strong> <%= rs.getString("farea") %></div>
            <div class="column"><strong>Type:</strong> <%= rs.getString("ftype") %></div>
            <div class="column"><img src="<%= fname %>.jpg" alt="<%= rs.getString("fname") %> Image" width="200"></div>
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
