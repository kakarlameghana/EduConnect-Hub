<%-- 
    Document   : facultyPanel
    Created on : Jun 2, 2022, 9:46:21 AM
    Author     : Kakarla Meghana
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Files.DBconnection"%>
<%@page import="com.mysql.cj.protocol.Resultset"%>
<%@page import="java.sql.PreparedStatement"%>
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
<style>
    h4{
        background-color: #163b60db;
        color:white;
    }
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
            <li class="nav-item active p-1">
              <a class="nav-link" href="#">Update Profile</a>
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
    <%
    String fid = (String) session.getAttribute("fid");
    Connection con;
    PreparedStatement st;
    ResultSet rs;
    %>
            
    <div class="mx-auto w-50 mt-5 box-shadow">
   <h4 class="text-center py-3">Update Profile</h4>
   <form class="p-3" action="fupdate.jsp" method="post">
       <%
       DBconnection db = new DBconnection();
       con=db.getCon();
       st=con.prepareStatement("select * from facultyreg where REGNO=?");
       st.setString(1,fid);
       rs = st.executeQuery();
       while(rs.next()){
       %>
              <div class="form-group">
                  <div class="row">
                      <div class="col"><input type="text" class="form-control" value="<%=rs.getString("NAME")%>"name="name" placeholder="Full Name" required="required"></div>
                      <div class="col"><input type="text" class="form-control" value="<%=rs.getString("DESIGNATION")%>"name="Designation" placeholder="Designation" required="required"></div>
                  </div>        	
              </div>
              <div class="form-group">
                  <div class="row">
                      <div class="col"><input type="text" class="form-control" value="<%=rs.getString("REGNO")%>" name="regno" placeholder="Registration number" required="required"></div>
                      <div class="col"><input type="email" class="form-control" value="<%=rs.getString("USERNAME")%>" name="email" placeholder="Enter Email" required="required"></div>
                  </div>        	
                  
              </div>
              <div class="form-group">
                  <div class="row">
                      <div class="col"><input type="tel" class="form-control" value="<%=rs.getString("PHONENO")%>" name="Phno" pattern="[0-9]{10}" placeholder="Phone Number" required="required"></div>
                      <div class="col"><input type="password" class="form-control" value="<%=rs.getString("PASSWORD")%>" name="pwd" pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,12}$"  placeholder="Enter Password" required="required"></div>
                  </div>        	
              </div>      
              <div class="form-group">
                  <div class="row">
                      <div class="col">
                         <select class="form-control form-select" name="Branch" id="Branch" required>
                          <option class="options" value="<%=rs.getString("BRANCH")%>"><%=rs.getString("BRANCH")%></option>
                          <option class="options" value="cse">CSE</option>
                          <option class="options" value="mec">MEC</option>
                          <option class="options" value="eee">EEE</option>
                          <option class="options" value="ece">ECE</option>
                          <option class="options" value="civil">CIVIL</option>
                        </select> </div> 
                  </div>        	
              </div>
              <div class="form-group">
                  <textarea class="form-control h-20" placeholder="Address" name="Address" id="message"><%=rs.getString("ADDRESS")%></textarea>
              </div>
              <div class="form-group">
                  <center><button type="submit" class="btn btn-dark">Update</button></center>
              </div>
 <%
           }
%>
          </form>             
</div>
</body>
</html>
