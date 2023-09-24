<%-- 
    Document   : feedback
    Created on : Jun 2, 2022, 9:55:13 AM
    Author     : Kakarla Meghana
--%>

<%@page import="java.sql.Date"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="Files.DBconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Feedback</title>
        <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>

<!-- Popper JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet"  href="Style.css">
</head>

<body>
    <nav class="navbar p-0 navbar-expand-lg .navbar-custom navbar-dark bg-dark">
        <a class="navbar-brand pl-2" href="#">Hour-Wise Lecture Tracking System</a>
        <button class="navbar-toggler float-right" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="False" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item p-1">
              <a class="nav-link" href="#">Dashboard</a>
            </li>
            <li class="nav-item p-1">
              <a class="nav-link" href="#">View Time Table</a>
            </li>
            <li class="nav-item p-1">
              <a class="nav-link" href="#">View Faculty Availability</a>
            </li>
            <li class="nav-item p-1">
              <a class="nav-link" href="ViewNotification.jsp">View Notification</a>
            </li>
            <li class="nav-item p-1">
              <a class="nav-link" href="index.jsp">Log out</a>
            </li>
          </ul>
        </div>
      </nav>
<center>
    <table class="table table-bordered w-50 mt">
        <form action="sendfeed.jsp" method="post">
            <thead class="thead-dark">
                <tr>
                    <th class="text-center" colspan="2">Send Feedback</th>
                </tr>
            </thead>
        <% 
        int id = Integer.parseInt(request.getParameter("id"));
        String reg = request.getParameter("reg");
        Connection con;
        ResultSet rs;
        PreparedStatement ps;
        DBconnection db = new DBconnection();
        con = db.getCon();
        ps=con.prepareStatement("select NOTIFICATION,REGNO from sendnotification where REGNO = ? and ID = ?");
        ps.setString(1,reg);
        ps.setInt(2,id);
        rs = ps.executeQuery();
        while(rs.next()){        
        %>
            <tr>
                <td>
                   Facuty ID
                </td>
                <td><input class="w-100 p-2" type="text" value="<%=rs.getString("REGNO")%>" name="femail" id="email" />
                </td>
            </tr>
            <tr>
                <td>
                    Notification
                </td>
                <td>
                    <textarea name="notification" class="w-100" required><%=rs.getString("NOTIFICATION")%></textarea>
                </td>
            </tr>
            <tr>
                <tr>
                <td>
                    Feedback
                </td>
                <td><input class="w-100 p-2" type="text" name="feedback" id="name" />
                </td>
            </tr>
                <td colspan="2">
            <center>   <button type="submit" class="btn btn-dark w-25">Send Reply</button></center>
                </td>
            </tr>
<% 
    }
%>
        </form>
    </table>
</center>
</body>
</html>
