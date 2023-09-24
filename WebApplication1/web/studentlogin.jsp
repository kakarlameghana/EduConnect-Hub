<%-- 
    Document   : studentlogin
    Created on : Jun 4, 2022, 1:28:15 PM
    Author     : Kakarla Meghana
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
 <%
    String regno =request.getParameter("regno");
    String pass = request.getParameter("pwd");
    String br = request.getParameter("branch");
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hour_wise_lecture_tracking_system","root","");
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("Select * from studentreg");
     while(rs.next()){
                    String Reg = rs.getString("REGNO");
                    String Pwd = rs.getString("PASSWORD");
                    String branch = rs.getString("BRANCH");
                   if(regno.equals(Reg) && pass.equals(Pwd) && br.equals(branch) ){
                   session.setAttribute("branch",br);
//                   session.setAttribute("sid",regno);
 %>
 <jsp:forward page="dashboard.jsp"/>
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
</body>
</html>

