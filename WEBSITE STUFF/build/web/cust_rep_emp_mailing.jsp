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
         <link rel="stylesheet" type="text/css" media="all" href="index.css">
    </head>
    <%!
        java.sql.Connection con;
        CallableStatement cs;
        PreparedStatement ps;
        ResultSet rs;
    %>
    <body>
        <header>
            <nav>
                <ul>
                    <li><a href="cust_rep.jsp">Reservation</a></li>
                    <li><a href="cust_rep_main.html">Customer Info</a></li>
                    <li><a href="cust_rep_emp_mailing.jsp">Mailing</a></li>
                    <li><a href="cust_rep_flight_sug.html">Flight Suggestions</a></li>
                    <li><a href="cust_rep_emp_info.jsp">Employee Info</a></li>
                </ul>
            </nav>
        </header>
        
        <%
            try {
              Class.forName("org.gjt.mm.mysql.Driver");
              con = DriverManager.getConnection("jdbc:mysql://localhost/clarifly","root" , "maroon596");
              //ps = con.prepareStatement("SELECT LastName, FirstName, Address, City, State, ZipCode, Telephone, StartDate FROM person P, employee E WHERE P.Id = E.Id ");
              cs = con.prepareCall("{call clarifly.MailingList()}");
              rs = cs.executeQuery();
              
            }
            catch(SQLException e) {
              out.println("SQLException caught: " +e.getMessage());
            }
        %>
        <br><br>
        <h1>Customer Mailing List</h1>
        <TABLE BORDER="1">
            <TR>
                <TH>First Name</TH>
                <TH>Last Name</TH>
                <TH>Address</TH>
                <TH>City</TH>
                <TH>State</TH>
                <TH>Zip Code</TH>
                <TH>Email</TH>
                
            </TR>
            <% while(rs.next()){ %>
            <TR>
                <TD> <%= rs.getString(1) %></td>
                <TD> <%= rs.getString(2) %></TD>
                <TD> <%= rs.getString(3) %></TD>
                <TD> <%= rs.getString(4) %></TD>
                <TD> <%= rs.getString(5) %></TD>
                <TD> <%= rs.getInt(6) %></TD>
                <TD> <%= rs.getString(7) %></TD>
            </TR>
            <% } %>

        </TABLE>

    </body>
</html>