<%-- 
    Document   : facultyPanel
    Created on : Jun 2, 2022, 9:46:21 AM
    Author     : Kakarla Meghana
--%>

<%@page import="Files.DBconnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Faculty</title>
                       <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet"  href="Style.css">
</style>
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
            <li class="nav-item active dropdown p-1">
              <a class="nav-link dropdown-toggle" href="#" id="#navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span>Availability</span>
              </a>
              <div class="dropdown-menu" id="navbarDropdownMenuLink">
                <a class="dropdown-item" href="#">Faculty Availability</a>
                <a class="dropdown-item" href="viewclassavailability.jsp">View Classroom Availability</a>
              </div>
            </li>
            <li class="nav-item p-1">
              <a class="nav-link" href="fviewtimetable.jsp">Time Table</a>
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
    <table class="table table-bordered mx-auto w-50 m-5">
        <form action="facavail.jsp" method="post">
            <thead class="thead-dark">
                <tr>
                    <th class="text-center" colspan="2">Send Faculty Availability</th>
                </tr>
            </thead>
               <%
            String fid = (String)session.getAttribute("fid");
            Connection con;
            ResultSet rs;
            PreparedStatement ps;
            try{
              DBconnection db = new DBconnection();
              con = db.getCon();
              ps=con.prepareStatement("select NAME,BRANCH from facultyreg where REGno = ?");
              ps.setString(1,fid);
              rs=ps.executeQuery();
              while(rs.next()){
         %>
           <tr>
                <td>
                    Faculty Name
                </td>
                <td>
                    <input type="text" name="name" value="<%=rs.getString("NAME")%>"class="p-1 w-100" required>
                </td>
            </tr>
            <tr>
                <td>
                    Branch
                </td>
                <td>
                    <input type="text" name="branch" value="<%=rs.getString("BRANCH")%>" class="p-1 w-100" required>
                </td>
            </tr>
              <tr>
                <td>
                    Faculty Type
                </td>
                <td>
                    <input type="text" name="ftype" class="p-1 w-100" required>
                </td>
            </tr>
            <tr>
                <td>
                    Availability
                </td>
                <td>
                    <div class="form-check-inline">
  <label class="form-check-label">
    <input type="radio" class="form-check-input" name="avail" value="Available">Available
  </label>
</div>
<div class="form-check-inline">
  <label class="form-check-label">
    <input type="radio" class="form-check-input" name="avail" value="Not Available">Not Available
  </label>
</div>
                </td>
            </tr>
            <tr>
                <td colspan="2">
            <center>   <button type="submit" class="btn btn-dark">Send</button></center>
                </td>
            </tr>
           <%
               }
}
catch(Exception e){
out.println(e.getMessage());
}
%></body>
</html>
