<%-- 
    Document   : classroom
    Created on : Jun 8, 2022, 9:41:04 PM
    Author     : Kakarla Meghana
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="Files.DBconnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
        String timetable = request.getParameter("timetable");
        String branch = request.getParameter("dept");
        DBconnection db = new DBconnection();
        Connection con = db.getCon();
        PreparedStatement ps = con.prepareStatement("insert into uploadtimetable(BRANCH,TIMETABLE) values(?,?)");
        ps.setString(1,branch);
        ps.setString(2, timetable);
        ps.executeUpdate();
        %>
        <jsp:forward page="uploadtimetable.jsp"></jsp:forward>
    </body>
</html>
