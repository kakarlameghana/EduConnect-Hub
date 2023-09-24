<%-- 
    Document   : sendfeed
    Created on : Jun 8, 2022, 8:59:59 AM
    Author     : Kakarla Meghana
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
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
Connection con;
PreparedStatement ps;
String sid = (String)session.getAttribute("sid");
String note =request.getParameter("feedback");
String name =request.getParameter("femail");
String notify = request.getParameter("notification");
try{
DBconnection db = new DBconnection();
con = db.getCon();
ps=con.prepareStatement("insert into sendfeedback(REGNO,DATE,FNAME,NOTIFICATION,FEEDBACK) values(?,?,?,?,?)");
ps.setString(1,sid);
ps.setDate(2,java.sql.Date.valueOf(java.time.LocalDate.now()));
ps.setString(3,name);
ps.setString(4,notify);
ps.setString(5,note);

ps.executeUpdate();
}
catch(Exception e){
             out.println(e.getMessage());
             }
%>
<jsp:forward page="ViewNotification.jsp"></jsp:forward>
</body>
</html>
