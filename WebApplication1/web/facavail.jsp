<%-- 
    Document   : facavail
    Created on : Jun 9, 2022, 9:44:00 PM
    Author     : Kakarla Meghana
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Files.DBconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String ftype = request.getParameter("ftype");
            String avail = request.getParameter("avail");
            String name = request.getParameter("name");
            String branch = request.getParameter("branch");
            Connection con;
            PreparedStatement ps;
            try{
              DBconnection db = new DBconnection();
              con = db.getCon();
              ps=con.prepareStatement("insert into facultyavail(NAME,BRANCH,FTYPE,AVAILABILITY) values(?,?,?,?)");
              ps.setString(1, name);
              ps.setString(2, branch);
              ps.setString(3, ftype);
              ps.setString(4, avail);
              ps.executeUpdate();
            }
            catch(Exception e){
            out.println(e.getMessage());
            }
         %>
         <jsp:forward page="facultyAvailability.jsp"></jsp:forward>
           
    </body>
</html>
