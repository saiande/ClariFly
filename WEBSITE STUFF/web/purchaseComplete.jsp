<%-- 
    Document   : purchaseComplete
    Created on : Dec 6, 2017, 6:23:49 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>clariFLY</title>
        <link rel="stylesheet" type="text/css" media="all" href="purchaseComplete.css"> <!-- Connects a style sheet to code-->
    </head>
    <header>
            <img id = "logo" src="clariFLY.png" alt="logo">
            <nav>
                <ul>
                     <form action ="tabs" method = "post"> 
                        <li><button type = "button" class = "button" onclick="window.location='customerHome.jsp'">HOME</button> </li>
                        <li><button type = "button" class = "button" onclick="window.location='index.jsp'">MY ACCOUNT</button> </li>
                        <li><button type = "button" class = "button" onclick="window.location='index.jsp'">MY RESERVATIONS</button> </li>
                        <li><button type = "button" class = "button" onclick="window.location='index.jsp'">MY AUCTIONS</button> </li>
                        <li><button type = "button" class = "button" onclick="window.location='index.jsp'">LOG OUT</button> </li>
                        <li><button type = "button" class = "button" onclick="window.location='index.jsp'">HELP</button> </li>
                     </form>
                </ul>
            </nav>
        </header>
    <body>
        <div>
            PURCHASE COMPLETE!<br><br><br>
            RESERVATION#: <%= (String )request.getParameter("reservationNo")%>
        </div>
    </body>
    
    <script type="text/javascript" >
        function showOne()
        {
            var x = document.getElementById("Round");
            var y = document.getElementById("One");
            var z = document.getElementById("Multi");
            if (y.style.visibility === "hidden") {
                y.style.visibility = "visible";
                x.style.visibility = "hidden";
                z.style.visibility = "hidden";
            }
        
        }
        function showRound()
        {
            var x = document.getElementById("Round");
            var y = document.getElementById("One");
            var z = document.getElementById("Multi");
            if (x.style.visibility === "hidden") {
                x.style.visibility = "visible";
                y.style.visibility = "hidden";
                z.style.visibility = "hidden";
            }
        }
        function showMulti()
        {
            var x = document.getElementById("Round");
            var y = document.getElementById("One");
            var z = document.getElementById("Multi");
            if (z.style.visibility === "hidden") {
                z.style.visibility = "visible";
                x.style.visibility = "hidden";
                y.style.visibility = "hidden";
            }
        }
            
        </script>
</html>
