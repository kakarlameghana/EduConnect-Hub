<%-- 
    Document   : adminPanel
    Created on : Jun 2, 2022, 9:39:33 AM
    Author     : Kakarla Meghana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
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
    .box-shadow{
    overflow:hidden;
    box-shadow: 0 2px 5px 0 rgb(0 0 0 / 16%), 0 2px 10px 0 rgb(0 0 0 / 12%) !important;
}
.form-control:focus{
    box-shadow: 0 0 0 2px #5E5B5B !important;
}
.header{
    background-image: url('./images/uploadheader.jpg');
    height: 200px;
    width: 100%;
}
</style>
</head>
<body>
    <nav class="navbar p-0 navbar-expand-lg .navbar-custom navbar-dark bg-dark">
        <a class="navbar-brand pl-2" href="#">Hour-Wise Lecture Tracking System</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="False" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
          <ul class="navbar-nav ml-auto ">
            <li class="nav-item p-1">
              <a class="nav-link" href="adminPanel.jsp">Upload Classroom</a>
            </li>
            <li class="nav-item active p-1">
                <a class="nav-link" href="#">Upload Time Table</a>
              </li>
            <li class="nav-item p-1">
              <a class="nav-link" href="index.jsp">Log out</a>
            </li>
          </ul>
        </div>
      </nav>
      <div class="border rounded box-shadow center w-50 mt-5">
        <div class="header">
         <h3 class="text-right text-white py-5 px-3">Upload Timetable <br/></h3>
        </div>
          <form action="timetable.jsp" method="post" class="d-flex flex-column p-3">
           <div class="form-group mx-3 my-2">
               <label for="dept">Branch</label>
               <input type="text" class="form-control" name="dept" id="dept">
           </div>
           <div class="form-group mx-3 my-2">
               <label for="timetable">Time Table</label>
               <input type="text"class="form-control" name="timetable" id="timetable">
           </div>
           
           <div class="form-group">
           <center><button type="submit" class="btn btn-success text-center">Upload</button>
            <button type="reset" class="btn btn-success text-center">Clear</button>
        </center>
           </div>
       </form>
    </div>
</body>
</html>
