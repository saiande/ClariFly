<%-- 
    Document   : cust_rep_flight_sug_main
    Created on : Dec 6, 2017, 10:51:16 PM
    Author     : anil
--%>

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
                </ul>
            </nav>
        </header>
        <br><br>
        <h1>Flight Suggestions</h1>
        <h3>Customer Information</h3>
        <form action="cust_rep_flight_sug.jsp" method="POST">
        Account Number
            <input type="number" name="AcctNo"/>
            <input type="submit" value="Submit"/>
        </form>
    </body>
</html>
