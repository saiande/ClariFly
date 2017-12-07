<%-- 
    Document   : cust_rep_main
    Created on : Dec 6, 2017, 10:33:55 PM
    Author     : anil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>clariFLY</title>
        <link rel="stylesheet" type="text/css" media="all" href="customerHome.css">

    </head>
    <body>
        <header>
            <br>
            <nav>
                <ul>
                    <li><a href="cust_rep.jsp">Reservation</a></li>
                    <li><a href="cust_rep_main.jsp">Customer Info</a></li>
                    <li><a href="cust_rep_emp_mailing.jsp">Mailing</a></li>
                    <li><a href="cust_rep_flight_sug_main.jsp">Flight Suggestions</a></li>
                    <li><a href="cust_rep_emp_info.jsp">Employee Info</a></li>
                    <li><a href="index.jsp">Log Out</a></li>
                    <li><select name="HELP" value="HELP" onchange="location = this.value;">
                                <option >HELP</option>
                            <option value="https://docs.google.com/a/stonybrook.edu/document/d/1nVfI-FAZMTHMlStglX6QR4O7nQ53vwZxJfIkLLIqYsM/edit?usp=sharing">HELP MANAGER</option>
                            <option value="https://docs.google.com/a/stonybrook.edu/document/d/11Tlfvj21bgbuI-BSpa0dwPs0FJPdm-Jwb-UuyE5EE90/edit?usp=sharing">HELP REP</option>
                            <option value="https://docs.google.com/a/stonybrook.edu/document/d/1NkhBWbFPCjgqBYZgST5U4G-DqHbIpJBcySO1E-jFMrc/edit?usp=sharing">HELP CUSTOMER</option>
                           </select> </li>
                </ul>
            </nav>
        </header>
        <h1>Customer Information</h1>
        <form action="cust_by_acct" method="POST">
        Account Number
            <input type="number" name="AcctNo"/>
            <input type="submit" value="Submit"/>
        </form>
    </body>
</html>
