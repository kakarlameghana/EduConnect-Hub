<%-- 
    Document   : ViewNotification
    Created on : Jun 7, 2022, 10:21:53 AM
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
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

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
              <a class="nav-link" href="profileupdate.jsp">Update Profile</a>
            </li>
            <li class="nav-item dropdown p-1">
              <a class="nav-link dropdown-toggle" href="#" id="#navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span>Availability</span>
              </a>
              <div class="dropdown-menu" id="navbarDropdownMenuLink">
                <a class="dropdown-item" href="facultyAvailability.jsp">Faculty Availability</a>
                <a class="dropdown-item" href="viewclassavailability.jsp">View Classroom Availability</a>
              </div>
            </li>
            <li class="nav-item p-1">
              <a class="nav-link" href="fviewtimetable.jsp">Time Table</a>
            </li>
            <li class="nav-item active p-1">
              <a class="nav-link" href="#">View Feedback</a>
            </li>
            <li class="nav-item p-1">
              <a class="nav-link" href="sendnotification.jsp">Send Notification</a>
            </li>
            <li class="nav-item p-1">
              <a class="nav-link" href="leavenotification.jsp">Leave</a>
            </li>
            <li class="nav-item p-1">
              <a class="nav-link" href="index.jsp">Log out</a>
            </li>
          </ul>
        </div>
      </nav>
    <center>
<table class="table table-hover table-bordered w-75 m-5">
            <thead class="thead-dark">
                <tr class="text-center">
                <th>Student Id</th>
                <th>Student Name</th>
                <th>Faculty ID</th>
                <th>Notification</th>
                <th>Feedback</th>
              </tr>
              </thead>
                      <% 
                          try{
        Connection con;
        ResultSet rs;
        PreparedStatement ps;
        DBconnection db = new DBconnection();
        con = db.getCon();
        ps=con.prepareStatement("select studentreg.REGNO,studentreg.FIRSTNAME,studentreg.LASTNAME,sendfeedback.FNAME,sendfeedback.NOTIFICATION,sendfeedback.FEEDBACK from studentreg inner join sendfeedback on studentreg.REGNO=sendfeedback.REGNO");
        rs = ps.executeQuery();
        while(rs.next()){
        %>
              <tr>
                   <td><%=rs.getString("REGNO")%></td>
                   <td><%=rs.getString("FIRSTNAME")+' ' +rs.getString("LASTNAME")%></td>
                   <td><%=rs.getString("fNAME")%></td>
                   <td><%=rs.getString("NOTIFICATION")%></td>
                   <td><%=rs.getString("FEEDBACK")%></td>
              </tr>
                  <%
            }
}
catch(Exception e){
out.println(e.getMessage());
}
     %>
       </table>
     
</center>
    </body>
</html>
