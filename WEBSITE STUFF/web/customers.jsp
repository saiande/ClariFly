<%-- 
    Document   : customers
    Created on : Dec 3, 2017, 4:50:03 PM
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
         <link rel="stylesheet" type="text/css" media="all" href="cust_rep.css">
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
        <h1>All Customers on</h1>
           <form action="CustomerServe" method ="POST" >
               <label>Flight No:  </label>
                 <input type="text" id="flightNo" name="flightNo" >
                 <label>Airline ID:</label>
                     <input type="text" id="airlineID" name="airlineID" >
            <input type="submit" value="Submit" ></form>
        
   
           
           
           <h1>Delete Customer</h1>
           <form action="DeleteCusServe" method="POST">
               <label>Customer ID:</label>
            <input type="number" name="CID"/>
            <input type="submit" value="Submit"/>
        </form>
           
           <h1><li><a href="ManagerCreateAccount.jsp">Add Customer</a></li><//h1>
           
           <% if(request.getAttribute("createdAcc") != null){ %>
              ACCOUNT MADE 
            <% } %>

    </body>
</html>
