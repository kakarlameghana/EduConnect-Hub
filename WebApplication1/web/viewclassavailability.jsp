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
              <a class="nav-link" href="#">Home</a>
            </li>
            <li class="nav-item p-1">
              <a class="nav-link" href="profileupdate.jsp">Update Profile</a>
            </li>
            <li class="nav-item active dropdown p-1">
              <a class="nav-link dropdown-toggle" href="#" id="#navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span>Availability</span>
              </a>
              <div class="dropdown-menu" id="navbarDropdownMenuLink">
                <a class="dropdown-item" href="facultyAvailability.jsp">Faculty Availability</a>
                <a class="dropdown-item" href="#">View Classroom Availability</a>
              </div>
            </li>
            <li class="nav-item dropdown p-1">
              <a class="nav-link dropdown-toggle" href="#" id="#navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span>Time table</span>
              </a>
              <div class="dropdown-menu" id="navbarDropdownMenuLink">
                <a class="dropdown-item" href="#">Section-A</a>
                <a class="dropdown-item" href="#">Section-B</a>
                <a c<lass="dropdown-item" href="#">Section-C</a>
                <a class="dropdown-item" href="#">Section-D</a>
                <a class="dropdown-item" href="#">Section-E</a>
              </div>
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
            <thead class="thead-dark">
                <tr>
                 <th>Class Room</th>
                <th>Branch</th>
                <th>Availability</th>
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
              ps=con.prepareStatement("select classroomavailability.CLASSROOM,classroomavailability.BRANCH,facultyreg.REGNO,facultyreg.BRANCH from classroomavailability inner join facultyreg on classroomavailability.BRANCH=facultyreg.BRANCH where facultyreg.REGNO=?");
              ps.setString(1,fid);
              rs=ps.executeQuery();
              while(rs.next()){
         %>
           <tr>
               <td><%=rs.getString("CLASSROOM")%></td>
               <td><%=rs.getString("BRANCH")%></td>
               <td>Available</td>    
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
