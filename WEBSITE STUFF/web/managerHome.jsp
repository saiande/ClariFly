<%-- 
    Document   : index
    Created on : Nov 16, 2017, 1:12:56 AM
    Author     : MaxiPad
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
         <link rel="stylesheet" type="text/css" media="all" href="customerHome.css">
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
                    <li><select name="HELP" value="HELP" onchange="location = this.value;">
                                <option >HELP</option>
                            <option value="https://docs.google.com/a/stonybrook.edu/document/d/1nVfI-FAZMTHMlStglX6QR4O7nQ53vwZxJfIkLLIqYsM/edit?usp=sharing">HELP MANAGER</option>
                            <option value="https://docs.google.com/a/stonybrook.edu/document/d/11Tlfvj21bgbuI-BSpa0dwPs0FJPdm-Jwb-UuyE5EE90/edit?usp=sharing">HELP REP</option>
                            <option value="https://docs.google.com/a/stonybrook.edu/document/d/1NkhBWbFPCjgqBYZgST5U4G-DqHbIpJBcySO1E-jFMrc/edit?usp=sharing">HELP CUSTOMER</option>
                           </select> </li>
                    <li><a href="index.jsp">LOG OUT</a></li>
                </ul>
            </nav>
        </header>
        
        
        
    </body>
</html>
