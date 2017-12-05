<%-- 
    Document   : practice
    Created on : Dec 3, 2017, 3:17:28 PM
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
        String fname, lname, email, address, city, state, credit, telephone;
        String zipcode, rating, updated, acctno, preference;
     %>
      
    <body>
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
        <br><br>
        <h1>Edit Customer Information</h1>
        
        <%
        acctno = (String)request.getAttribute("acctno");
        fname = (String)request.getAttribute("fname");
        lname = (String)request.getAttribute("lname");
        email = (String)request.getAttribute("email");
        address = (String)request.getAttribute("address");
        city = (String)request.getAttribute("city");
        state = (String)request.getAttribute("state");
        credit = (String)request.getAttribute("credit");
        telephone = (String)request.getAttribute("telephone");
        zipcode = (String) request.getAttribute("zipcode");
        rating = (String)request.getAttribute("rating");
        updated = (String)request.getAttribute("updated");
        preference = (String)request.getAttribute("preference"); 
     %>
        <form action="cust_by_acct2" method="POST">
        <label>Account Number:</label> <input id="fix" class = "textbox" type = "text" name="Account Number" value="<%=Integer.parseInt(acctno)%>" required maxlength="50"readonly> <br> <!-- "username is just text, input type is an input (can be button/text/etc), name is variable name-->
       <label>First Name:</label> <input id="fix" class = "textbox" type = "text" name="First name" value="<%=fname%>" required maxlength="50"> <br> <!-- "username is just text, input type is an input (can be button/text/etc), name is variable name-->
        <label>Last Name:</label> <input class = "textbox" type = "password" name="Last name" value="<%=lname%>"required maxlength="50"><br>
        <label>Email:</label> <input id="fix" class = "textbox" type = "email" name="Email" value="<%=email%>"required maxlength="50"> <br>
        <label>Telephone:</label> <input id="fix" class = "textbox" type = "text" name="Telephone" value="<%=telephone%>"  maxlength="12" required> <br> 
        <label>Street:</label> <input id="fix" class = "textbox" type = "text" name="Address" value="<%=address%>"required maxlength="50"> <br>
        <label>City:</label> <input id="fix" class = "textbox" type = "text" name="City" value="<%=city%>"required maxlength="15"> <br>
        <label>State:</label> <input id="fix" class = "textbox" type = "text" name="State" value="<%=state%>"required maxlength="15"> <br>
        <label>Zip Code:</label> <input id="fix" class = "textbox" type = "text" name="Zipcode" value="<%=Integer.parseInt(zipcode)%>"required maxlength="15"> <br>
        <label>Credit card:</label> <input id="fix" class = "textbox" type = "text" name="Credit" value="<%=credit%>"  maxlength="16" required> <br> 
        <label>Preference:</label> <input id="fix" class = "textbox" type = "text" name="Preference" value="<%=preference%>"  maxlength="50" required> <br> 
       <input type="Submit" value="Submit"/>
       </form>
        <%
           if(!request.getAttribute("updated").equals("not")){
       %>
       UPDATE SUCCESS
       <% } %>

        </body>
</html>
