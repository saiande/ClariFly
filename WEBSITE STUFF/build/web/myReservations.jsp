<%-- 
    Document   : myReservations
    Created on : Dec 6, 2017, 7:34:17 AM
    Author     : User
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.CallableStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>clariFLY</title>
        <link rel="stylesheet" type="text/css" media="all" href="foundFlights.css"> 
    </head>
    <%!
          ArrayList< ArrayList<String> > res ;
          int amountOfFlights;
      %>
    <header>
            <img id = "logo" src="clariFLY.png" alt="logo">
            <nav>
                <ul>
                    <form action ="tabs" method = "post"> 
                         <input type="hidden" name="username" value="<%=(String )request.getParameter("username") %>"> 
                         <input type="hidden" name="tab" value="home"> 
                        <li><button type = "submit" class = "button" >HOME</button> </li>
                     </form>
                    <form action ="tabs" method = "post"> 
                         <input type="hidden" name="username" value="<%=(String )request.getParameter("username") %>">
                         <input type="hidden" name="tab" value="acc"> 
                        <li><button type = "submit" class = "button" >MY ACCOUNT</button> </li>
                    </form>
                    <form action ="tabs" method = "post"> 
                         <input type="hidden" name="username" value="<%=(String )request.getParameter("username") %>"> 
                         <input type="hidden" name="tab" value="res"> 
                        <li><button type = "submit" class = "button" >MY RESERVATIONS</button> </li>
                    </form>
                    <form action ="tabs" method = "post"> 
                         <input type="hidden" name="username" value="<%=(String )request.getParameter("username") %>"> 
                         <input type="hidden" name="tab" value="auc"> 
                        <li><button type = "submit" class = "button" >MY AUCTIONS</button> </li>
                    </form>
                    <form action ="tabs" method = "post"> 
                       
                         <li><button type = "button" class = "button" onclick="window.location='index.jsp'">LOG OUT</button> </li>
                    </form>
                    <form action ="tabs" method = "post"> 
                         <input type="hidden" name="username" value="<%=(String )request.getParameter("username") %>"> 
                          <input type="hidden" name="tab" value="help"> 
                        <li><button type = "submit" class = "button" >HELP</button> </li>
                    </form>
                     
                </ul>
            </nav>
        </header>
    <body>
       <div class =" flights">
        <%
             res = (ArrayList< ArrayList<String> >)request.getAttribute("res");
             amountOfFlights = res.size();
                
            for(int i = 0; i<amountOfFlights; i++) {
            %>
             
            <div class ="flightInfo">
                <form action ="buyOneWay" method = "post"> 
                    <ul>
                        <li><label>Res#: <%= res.get(i).get(0) %> </label></li> 
                        <li><label>Acc#: <%= res.get(i).get(1) %></label></li> 
                        <li><label>Date: <%= res.get(i).get(2) %></label></li>
                        <li><label>Fee:$ <%= res.get(i).get(3) %></label></li> 
                        <li><label>Tickets:<%= res.get(i).get(4) %> </label></li> 
                        <li><label>Class:<%= res.get(i).get(5) %> </label></li> 
                        <li><label>Total:$ <%= res.get(i).get(6) %></label></li> 
                        <li><label>Meal: <%= res.get(i).get(7) %></label></li> 
                        <li><input id = "button" type ="button" value="ITINERARY" > </li>
                        <li><input id = "button" type ="submit" value="SEND TO AUCTION" > </li>
                        
                    </ul>
                </form>
              </div>
           <% } %>
             </div>
    </body>
</html>
