<%-- 
    Document   : newjsp
    Created on : Dec 2, 2017, 9:12:30 PM
    Author     : anil
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
        PreparedStatement stmt;
        ResultSet rs;
    %>
    <body style="background-color: skyblue; align-content: center">
        <header>
            <nav>
                <ul>
                    <li><a href="cust_rep.jsp">Reservation</a></li>
                    <li><a href="emp_edit_cust.jsp">Customer Info</a></li>
                    <li><a href="emp_mailing.jsp">Mailing</a></li>
                    <li><a href="flight_sug.jsp">Flight Suggestions</a></li>
                    <li><a href="emp_info.jsp">Employee Info</a></li>
                </ul>
            </nav>
        </header>
        <form>
        Account Number
            <input type="text" name="AcctNo"/>
            <input type="submit" value="Submit"/>
        </form>
        <%
            try {
              Class.forName("org.gjt.mm.mysql.Driver");
              con = DriverManager.getConnection("jdbc:mysql://localhost/clarifly","root" , "maroon596");
              String acctno_str = request.getParameter("AcctNo");
              int acctno = Integer.parseInt(acctno_str);
              stmt = con.prepareStatement("SELECT Id FROM customer WHERE AccntNo =?");
              stmt.setInt(1,acctno);
              rs = stmt.executeQuery();
              int id = rs.getInt("Id");
              stmt = con.prepareStatement("SELECT FirstName, LastName, Address, City, State, ZipCode FROM person WHERE Id= ?");
              stmt.setInt(1,id);
              rs = stmt.executeQuery();
              String fname, lname, address, city, state;
              int zipcode;
              while (rs.next()) {
                  fname = rs.getString(1);
                  lname = rs.getString(2);
                  address = rs.getString(3);
                  city = rs.getString(4);
                  state = rs.getString(5);
                  zipcode = rs.getInt(6);
              }
            }
            catch(SQLException e) {
              out.println("SQLException caught: " +e.getMessage());
            }
        %>
       <form>
        First Name <input type="text" name="fname" value=%=fname%>
        Last Name <input type="text" name="lname" value=%=lname%>
        Address <input type="text" name="address" value=%=address%>
        City <input type="text" name="city" value=%=city%>
        State <input type="text" name="state" value=%=state%>
        Zip Code <input type="text" name="zipcode" value=%=zipcode%>
        </form>
        
    </body>
</html>