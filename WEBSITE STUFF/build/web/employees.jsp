<%-- 
    Document   : employees
    Created on : Dec 5, 2017, 6:58:09 PM
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
           
           <h1>Edit Employee</h>
           <form action="EditRepServe" method="POST">
            Employee ID:
            <input type="number" name="EID"/>
            <input type="submit" value="Submit"/>
        </form>
           <h1>Delete Employee</h>
           <form action="DeleteRepServe" method="POST">
            Employee ID:
            <input type="number" name="EID"/>
            <input type="submit" value="Submit"/>
        </form>
        <li><a href="createEmployee.jsp">Add Employee</a></li>
           <% if(request.getAttribute("createdAcc") != null){ %>
              ACCOUNT MADE 
            <% } %>

           
    </body>
</html>