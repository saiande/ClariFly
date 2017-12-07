<%-- 
    Document   : cust_rep
    Created on : Nov 16, 2017, 1:12:56 AM
    Author     : Ashley Anil
--%>

<%@page import="java.util.ArrayList"%>
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
        PreparedStatement ps;
        ResultSet rs;
        HttpServletRequest request ;
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
              //ps = con.prepareStatement("SELECT LastName, FirstName, Address, City, State, ZipCode, Telephone, StartDate FROM person P, employee E WHERE P.Id = E.Id ");
            //out.println("here");
            String acct = request.getParameter("AcctNo");
            //out.println("here");
            int acctno = Integer.parseInt(acct);
            request.setAttribute("acctnumber", acctno);
            CallableStatement cs = con.prepareCall("{call clarifly.CustomerPlaces(?)}");
            cs.setInt(1,acctno);
            ResultSet rs = cs.executeQuery();
            ArrayList<String> places = new ArrayList<String>();
            while(rs.next()){
                if(!places.contains(rs.getString(1))){
                    places.add(rs.getString(1));
                }
                if(!places.contains(rs.getString(2))){
                    places.add(rs.getString(2));
                }
            }
            %>
        <h1>Customer Flight Suggestions</h1>
        <%
            for(int i=0; i<places.size(); i++){
               String place = places.get(i);
               cs = con.prepareCall("{call clarifly.FlightsForAirport(?)}");
                cs.setString(1,place);
            rs = cs.executeQuery();
        %>
        <h2> <%=place %> </h2>
        <TABLE BORDER="1">
            <TR>
                <TH>Airline Name</TH>
                <TH>Flight Number</TH>
                <TH>Leg Number</TH>
                <TH>Departing Airport</TH>
                <TH>Arriving Airport</TH>
                <TH>Departing Time</TH>
                <TH>Arriving Time</TH>
                
            </TR>
            <% while(rs.next()){ %>
            <TR>
                <TD> <%= rs.getString(1) %></td>
                <TD> <%= rs.getInt(2) %></TD>
                <TD> <%= rs.getInt(3) %></TD>
                <TD> <%= rs.getString(4) %></TD>
                <TD> <%= rs.getString(5) %></TD>
                <TD> <%= rs.getDate(6) %></TD>
                <TD> <%= rs.getDate(7) %></TD>
            </TR>
            <% } %>

        </TABLE>
               
            <% }
            
            }
            catch(SQLException e) {
              out.println("SQLException caught: " +e.getMessage());
            }
        %>

    </body>
</html>