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
        String classroom = request.getParameter("classroom");
        String branch = request.getParameter("dept");
        DBconnection db = new DBconnection();
        Connection con = db.getCon();
        PreparedStatement ps = con.prepareStatement("insert into classroomavailability(CLASSROOM,BRANCH) values(?,?)");
        ps.setString(1,classroom);
        ps.setString(2, branch);
        ps.executeUpdate();
        %>
        <jsp:forward page="adminPanel.jsp"/>
    </body>
</html>
