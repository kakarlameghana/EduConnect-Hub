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
              <a class="nav-link" href="dashboard.jsp">Dashboard</a>
            </li>
            <li class="nav-item p-1">
              <a class="nav-link" href="viewtimetable.jsp">View Time Table</a>
            </li>
            <li class="nav-item active p-1">
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
    <table class="table table-bordered mx-auto w-50 m-5">
            <thead class="thead-dark">
                <tr>
                <th>Faculty Name</th>
                <th>Department</th>
                <th>Faculty Type</th>
                </tr>
            </thead>
               <%
            String branch = (String)session.getAttribute("branch");
            Connection con;
            ResultSet rs;
            PreparedStatement ps;
            try{
              DBconnection db = new DBconnection();
              con = db.getCon();
              ps=con.prepareStatement("select NAME,BRANCH,FTYPE from facultyavail where BRANCH=?");
              ps.setString(1,branch);
              rs=ps.executeQuery();
              while(rs.next()){
         %>
           <tr>
               <td><%=rs.getString("NAME")%></td>
               <td><%=rs.getString("BRANCH")%></td>
               <td><%=rs.getString("FTYPE")%></td>  
            </tr>
     
    <%
               }
}
catch(Exception e){
out.println(e.getMessage());
}
%>
        </table>   
</body>
</html>
