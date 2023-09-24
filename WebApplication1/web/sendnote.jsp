<%-- 
    Document   : sendnote
    Created on : Jun 7, 2022, 8:12:15 PM
    Author     : Kakarla Meghana
--%>

<%@page import="java.time.LocalDate"%>
<%@page import="Files.DBconnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Date,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
  <%
Connection con;
ResultSet rs;
PreparedStatement ps;
String fid = (String)session.getAttribute("fid");
String ftype=request.getParameter("ftype");
String note=request.getParameter("notification");
out.println(ftype);
out.println(note);
try{
DBconnection db = new DBconnection();
con = db.getCon();
ps=con.prepareStatement("insert into sendnotification(REGNO,FACULTYTYPE,DATE,NOTIFICATION) values(?,?,?,?)");
ps.setString(1,fid);
ps.setString(2,ftype);
ps.setDate(3, java.sql.Date.valueOf(java.time.LocalDate.now()));
ps.setString(4,note);
ps.executeUpdate();
}
catch(Exception e){
out.println(e.getMessage());    
}
%>
<jsp:forward page="sendnotification.jsp"></jsp:forward>
    </body>
</html>
