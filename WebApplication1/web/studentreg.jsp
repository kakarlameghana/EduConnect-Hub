<%-- 
    Document   : studentreg
    Created on : Jun 3, 2022, 10:37:54 PM
    Author     : Kakarla Meghana
--%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.lang.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
    String fname = request.getParameter("first_name");
    String lname = request.getParameter("last_name");
    String reg = request.getParameter("Regno");
    String ph = request.getParameter("Phno");
    String uname = request.getParameter("email");
    String pwd = request.getParameter("pwd");
    String branch = request.getParameter("Branch");
    String Year = request.getParameter("Year");
    String Address = request.getParameter("Address");
    try{
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hour_wise_lecture_tracking_system","root","");
    Statement st = con.createStatement();
    st.executeUpdate("insert into studentreg(FIRSTNAME,LASTNAME,REGNO,PHONENO,USERNAME,PASSWORD,BRANCH,YEAR,ADDRESS) values('"+fname+"','"+lname+"','"+reg+"','"+ph+"','"+uname+"','"+pwd+"','"+branch+"','"+Year+"','"+Address+"')");
    }
    catch(ClassNotFoundException | SQLException e){
    out.println(e.getMessage());
    }
%>   
<jsp:forward page="index.jsp"></jsp:forward>
    </body>
</html>

