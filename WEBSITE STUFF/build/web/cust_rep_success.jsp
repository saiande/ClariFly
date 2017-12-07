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
        <link rel="stylesheet" type="text/css" media="all" href="customerHomw.css">

    </head>
    <%!
        String fname, lname, email, address, city, state, credit, telephone;
        String zipcode, rating, updated, acctno, preference;
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
        <h2>Successfully Updated</h2>
        
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
       <label>First Name:</label> <input id="fix" class = "textbox" type = "text" name="First name" value="<%=fname%>" required maxlength="50" readonly> <br> <!-- "username is just text, input type is an input (can be button/text/etc), name is variable name-->
        <label>Last Name:</label> <input class = "textbox" type = "text" name="Last name" value="<%=lname%>"required maxlength="50" readonly><br>
        <label>Email:</label> <input id="fix" class = "textbox" type = "email" name="Email" value="<%=email%>"required maxlength="50" readonly> <br>
        <label>Telephone:</label> <input id="fix" class = "textbox" type = "text" name="Telephone" value="<%=telephone%>"  maxlength="12" required readonly> <br> 
        <label>Street:</label> <input id="fix" class = "textbox" type = "text" name="Address" value="<%=address%>"required maxlength="50" readonly> <br>
        <label>City:</label> <input id="fix" class = "textbox" type = "text" name="City" value="<%=city%>"required maxlength="15" readonly> <br>
        <label>State:</label> <input id="fix" class = "textbox" type = "text" name="State" value="<%=state%>"required maxlength="15" readonly> <br>
        <label>Zip Code:</label> <input id="fix" class = "textbox" type = "text" name="Zipcode" value="<%=Integer.parseInt(zipcode)%>"required maxlength="15"readonly> <br>
        <label>Credit card:</label> <input id="fix" class = "textbox" type = "text" name="Credit" value="<%=credit%>"  maxlength="16" required readonly> <br> 
        <label>Preference:</label> <input id="fix" class = "textbox" type = "text" name="Preference" value="<%=preference%>"  maxlength="50" required readonly> <br> 
       </form>

        </body>
</html>
