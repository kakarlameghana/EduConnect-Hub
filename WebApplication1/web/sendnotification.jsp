<%-- 
    Document   : facultyPanel
    Created on : Jun 2, 2022, 9:46:21 AM
    Author     : Kakarla Meghana
--%>

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
    .mt{
        margin-top: 10%;
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
            <li class="nav-item p-1">
              <a class="nav-link" href="viewfeedback.jsp">View Feedback</a>
            </li>
            <li class="nav-item active p-1">
              <a class="nav-link" href="#">Send Notification</a>
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
    <table class="table table-bordered w-50 mt">
        <form action="sendnote.jsp" method="post">
            <thead class="thead-dark">
                <tr>
                    <th class="text-center" colspan="2">Send Feedback</th>
                </tr>
            </thead>
            <tr>
                <td>
                    Faculty type
                </td>
                <td>
                    <input type="text" name="ftype" class="p-1 w-100" required>
                </td>
            </tr>
            <tr>
                <td>
                    Notification
                </td>
                <td>
                    <textarea name="notification" class="w-100" required></textarea>
                </td>
            </tr>
            <tr>
                <td colspan="2">
            <center>   <button type="submit" class="btn btn-dark">Submit</button></center>
                </td>
            </tr>
        </form>
    </table>
</center>
</body>
</html>