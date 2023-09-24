<%-- 
    Document   : adminLogin
    Created on : Jun 3, 2022, 2:03:21 PM
    Author     : Kakarla Meghana
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
<%
 String user =request.getParameter("uname");
 String pass = request.getParameter("pwd");
 Class.forName("com.mysql.cj.jdbc.Driver");
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hour_wise_lecture_tracking_system","root","");
 Statement st = con.createStatement();
 ResultSet rs = st.executeQuery("select * from adminLogin");
 while(rs.next())
 {
 String Uname = rs.getString("USERNAME");
 String pwd = rs.getString("PASSWORD");
 if(user.equals(Uname) && pass.equals(pwd)){
 %>
 <jsp:forward page="adminPanel.jsp"/>
 <%
     }
else{
   out.println("<script type=\"text/javascript\">");
   out.println("alert('Login Failed,Please try Agai');");
   out.println("location='index.jsp';");
   out.println("</script>");
 }
}
%>
