<%-- 
    Document   : deleteEmployee
    Created on : Dec 6, 2017, 10:51:37 AM
    Author     : sai
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
        ResultSet rs;
    %>
    <body>
        <header>
            <h1 id="logo-large" >clariFLY</h1>
            <p><h2  >Delete Employee </h2></p>
            <nav>
                <ul>
                    <li><a href="managerHome.jsp">Home</a></li>
                    
                </ul>
            </nav>
        </header>
        
        <%
            try {
              Class.forName("org.gjt.mm.mysql.Driver");
              con = DriverManager.getConnection("jdbc:mysql://localhost/clarifly","root" , "Brooklyn29!");
              String id = (String) request.getAttribute("eid");
              int eid = Integer.parseInt(id);
              cs = con.prepareCall("{call deleteEmployee(?)}");
              cs.setInt(1, eid);
              rs = cs.executeQuery();
            }
            catch(SQLException e) {
              out.println("SQLException caught: " +e.getMessage());
            }
        %>
        
        SuccessFully Deleted!
    </body>
</html>