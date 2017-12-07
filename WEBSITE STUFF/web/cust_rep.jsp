<%-- 
    Document   : cust_rep
    Created on : Nov 16, 2017, 1:12:56 AM
    Author     : Ashley Anil
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
            <br>
            <nav>
                <ul>
                    
                    <li> <button type = "button" class = "button" onclick="window.location='cust_rep.jsp'">Reservation</button>
                    <li> <button type = "button" class = "button" onclick="window.location='cust_rep_main.html'">Customer Info</button>
                    <li><button type = "button" class = "button" onclick="window.location='cust_rep_emp_mailing.jsp'">Mailing</button>
                    <li><button type = "button" class = "button" onclick="window.location='cust_rep_flight_sug.html'">Flight Suggestions</button>
                    <li><button type = "button" class = "button" onclick="window.location='cust_rep_emp_info.jsp'">Employee Info</button>
                    <li><button type = "button" class = "button" onclick="window.location='index.jsp'">Log Out</button>
                    
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
    </body>
</html>