<%-- 
    Document   : listOfReservationsFlight
    Created on : Dec 3, 2017, 2:56:56 PM
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
            <p><h2  >List of All Reservations for Flight: </h2></p>
            <nav>
                <ul>
                    <li><a href="managerHome.jsp">Home</a></li>
                    
                </ul>
            </nav>
        </header>
        
        <%
            try {
              Class.forName("org.gjt.mm.mysql.Driver");
              con = DriverManager.getConnection("jdbc:mysql://localhost/clarifly","root" , "Brooklyn29!");
              String flightNo = (String) request.getAttribute("num");
              int no = Integer.parseInt(flightNo);
              out.println(no);
              
              cs = con.prepareCall("{call ReservationsByFlight(?)}");
              cs.setInt(1, no);
              rs = cs.executeQuery();
            }
            catch(SQLException e) {
              out.println("SQLException caught: " +e.getMessage());
            }
        %>
        
        <TABLE BORDER="1">
            <TR>
                <TH>RESERVATION NO</TH>
                <TH>RESERVATION DATE</TH>
                <TH>BOOKING FEE</TH>
                <TH>TOTAL FARE</TH>
                <TH>RESERVATION SSN</TH>
                
            </TR>
            <% while(rs.next()){ %>
            <TR>
                <TD> <%= rs.getString(1) %></td>
                <TD> <%= rs.getString(2) %></TD>
                <TD> <%= rs.getString(3) %></TD>
                <TD> <%= rs.getString(4) %></TD>
                <TD> <%= rs.getString(5) %></TD>
            </TR>
            <% } %>
        </TABLE>
    </body>
</html>
