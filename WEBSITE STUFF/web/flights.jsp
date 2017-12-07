<%-- 
    Document   : flights
    Created on : Dec 5, 2017, 5:36:33 PM
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
            <nav>
                <ul>
                    <li><a href="managerHome.jsp">Home</a></li>
                    <li><a href="customers.jsp">Customers</a></li>
                    <li><a href="employees.jsp">Employees</a></li>
                    <li><a href="flights.jsp">Flights</a></li>
                    <li><a href="reservations.jsp">Reservations</a></li>
                    <li><a href="sales.jsp">Sales</a></li>
                </ul>
            </nav>
        </header>
        <%
            try {
              Class.forName("org.gjt.mm.mysql.Driver");
              con = DriverManager.getConnection("jdbc:mysql://localhost/clarifly","root" , "Brooklyn29!");

            }
            catch(SQLException e) {
              out.println("SQLException caught: " +e.getMessage());
            }
        %>
        <h1>Go To:</h1>
            <li><a href="listOfFlights.jsp">List of all Flights</a></li>
            <li><a href="mostActiveFlights.jsp">Most Active Flights</a></li>
            <form action="AirportFlightServe" method ="POST" >
                 <h1>Airport ID:
                     <input type="text" id="airportID" name="airportID" >
            <input type="submit" value="Submit" ></form>

    </body>
</html>
