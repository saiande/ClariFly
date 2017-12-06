<%-- 
    Document   : revenueByFlight
    Created on : Dec 3, 2017, 3:20:31 PM
    Author     : sai
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.io.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>clariFLY</title>
         <link rel="stylesheet" type="text/css" media="all" href="index.css">
    </head>
    <%!
        java.sql.Connection con;
        CallableStatement cs;
        ResultSet rs;
    %>
    <body>
        <header>
            <h1 id="logo-large" >clariFLY</h1>
            <p><h2  >Revenue for Flight: </h2></p>
            <nav>
                <ul>
                    <li><a href="managerHome.jsp">Home</a></li>
                    
                </ul>
            </nav>
        </header>
        
        <%
            try {
              Class.forName("org.gjt.mm.mysql.Driver");
              con = DriverManager.getConnection("jdbc:mysql://localhost/clarifly","root" , "sql");
              String flightNo = (String) request.getAttribute("num");
              int no = Integer.parseInt(flightNo);
              out.println(no);
              String id = (String) request.getAttribute("id");
              out.println(id);
              
              cs = con.prepareCall("{call RevenueByFlight(?, ?)}");
              cs.setInt(1, no);
              cs.setString(2, id);
              rs = cs.executeQuery();
            }
            catch(SQLException e) {
              out.println("SQLException caught: " +e.getMessage());
            }
        %>
        
        <TABLE BORDER="1">
            <TR>
                <TH>RESERVATION NO</TH>
                <TH>TOTAL FARE</TH>
              
                
            </TR>
            <% while(rs.next()){ %>
            <TR>
                <TD> <%= rs.getString(1) %></td>
                <TD> <%= rs.getString(2) %></TD>
            </TR>
            <% } %>
        </TABLE>
    </body>
</html>