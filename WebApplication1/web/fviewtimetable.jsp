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
                <a class="dropdown-item" href="#">Faculty Availability</a>
                <a class="dropdown-item" href="viewclassavailability.jsp">View Classroom Availability</a>
              </div>
            </li>
            <li class="nav-item  active p-1">
              <a class="nav-link" href="#">Time Table</a>
            </li>
            <li class="nav-item p-1">
              <a class="nav-link" href="viewfeedback.jsp">View Feedback</a>
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
       <%
           String fid = (String) session.getAttribute("fid");
       %>
           <table class="table table-hover table-bordered w-50 m-5">
<!--            <thead class="thead-dark">
                <tr class="text-center">
                    <th></th>
              </tr>
              </thead>-->
        <%
            try{
        Connection con;
        ResultSet rs;
        PreparedStatement ps;
        DBconnection db = new DBconnection();
        con = db.getCon();
        ps=con.prepareStatement("select facultyreg.BRANCH,uploadtimetable.BRANCH,uploadtimetable.TIMETABLE from facultyreg inner join uploadtimetable on facultyreg.BRANCH=uploadtimetable.BRANCH where facultyreg.REGNO = ?");
        ps.setString(1, fid);
        rs = ps.executeQuery();
        while(rs.next()){
        %>
              <tr> 
                   <td class="text-center"><%=rs.getString("BRANCH")%></td>

                  <td class="text-center"><a href="<%=rs.getString("TIMETABLE")%>" target="blank">CSE 2-2, 3-2 & 4-2 SEM 2 TIMETABLE</a></td>
              </tr>
           </table>
                  <%
            }
}
catch(Exception e){
out.println(e.getMessage());
}
     %>
       
    </center>
    </body>
</html>
