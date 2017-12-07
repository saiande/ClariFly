<%-- 
    Document   : sales
    Created on : Dec 5, 2017, 3:46:52 PM
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
            <li><a href="cusMaxRevenue.jsp">Customer that Generated the Most Revenue</a></li>
            <li><a href="repMaxRevenue.jsp">Customer Representative that Generated the Most Revenue</a></li>
            <h1>Revenue Generated by Flight </h1>
            <form action="CustomerFlightServe" method ="POST" >
                <h1>Flight No:</h1>
                    <input type="text" id="flightNo" name="flightNo" >
                <h1>Airline ID:</h1>
                    <input type="text" id="airlineID" name="airlineID" >
            <input type="submit" value="Submit" ></form>
            
            <h1>Revenue Generated by Customer </h1>
            <form action="CustomerRevenueServe" method ="POST" >
                <h1>Account No:</h1>
                    <input type="text" id="accountNo" name="accountNo" >
            <input type="submit" value="Submit" ></form>
            
            <h1>Revenue Generated by Destination City </h1>
            <form action="RevenueCityServe" method ="POST" >
                <h1>City:</h1>
                    <input type="text" id="city" name="city" >
            <input type="submit" value="Submit" ></form>
            
            <h1>Sales Report </h1>
            <form action="SalesReportServe" method ="POST" >
                <h1>Date:</h1>
                    <input type="text" id="date" name="date" >
            <input type="submit" value="Submit" ></form>

    </body>
</html>
