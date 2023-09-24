<%-- 
    Document   : leave
    Created on : Jun 8, 2022, 12:28:11 PM
    Author     : Kakarla Meghana
--%>

<%@page import="Files.DBconnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
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
            String date = request.getParameter("date");
            String ftype = request.getParameter("ftype");
            String reason = request.getParameter("reason");
            String suggestion = request.getParameter("sugg");
            String name = request.getParameter("name");
            String branch = request.getParameter("branch");
            Connection con;
            ResultSet rs;
            PreparedStatement ps;
            try{
              DBconnection db = new DBconnection();
              con = db.getCon();
              ps=con.prepareStatement("insert into leavenotification(FACULTYNAME,DATE,BRANCH,FTYPE,REASON,SUGGESTION) values(?,?,?,?,?,?)");
              ps.setString(1, name);
              ps.setString(2, date);
              ps.setString(3, branch);
              ps.setString(4, ftype);
              ps.setString(5, reason);
              ps.setString(6, suggestion);
              ps.executeUpdate();
            }
            catch(Exception e){
            out.println(e.getMessage());
            }
         %>
         <jsp:forward page="leavenotification.jsp"></jsp:forward>
    </body>
</html>
