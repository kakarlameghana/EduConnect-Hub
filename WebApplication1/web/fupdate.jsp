<%-- 
    Document   : fupdate
    Created on : Jun 7, 2022, 1:57:08 PM
    Author     : Kakarla Meghana
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Files.DBconnection"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%             
            try{
            String name =request.getParameter("name");
            out.println(name);
            String designation = request.getParameter("Designation");
            String reg = request.getParameter("regno");
            String uname = request.getParameter("email");
            String ph = request.getParameter("Phno");
            String pwd = request.getParameter("pwd");
            String branch = request.getParameter("Branch");
            String address = request.getParameter("Address");
            String fid = (String)session.getAttribute("fid");
            out.println(fid);
            out.println(address);
            out.println(branch);
            DBconnection db = new DBconnection();
            Connection con = db.getCon();
            PreparedStatement st = con.prepareStatement("update facultyreg set Name=?,DESIGNATION=?,REGNO=?,USERNAME=?,PHONENO=?,PASSWORD=?,BRANCH=?,ADDRESS=? where REGNO=?");
            st.setString(1,name);
            st.setString(2,designation);
            st.setString(3,reg);
            st.setString(4,uname);
            st.setString(5,ph);
            st.setString(6,pwd);
            st.setString(7,branch);
            st.setString(8,address);
            st.setString(9,fid);
            st.executeUpdate();
            }
            catch(Exception e){
            out.println(e.getMessage());            }
        %>
        <jsp:forward page="profileupdate.jsp"/>
    </body>
</html>
