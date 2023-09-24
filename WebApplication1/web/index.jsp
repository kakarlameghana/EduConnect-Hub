<%-- 
    Document   : index
    Created on : Jun 2, 2022, 7:57:06 AM
    Author     : Kakarla Meghana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
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
    body{
        background-image: url('./images/Student.jpg');
        background-size: cover;
        background-repeat:no-repeat;
    }   
    .rounded{
        border-radius: 50px !important;
    }
    .login-group{
        margin-top: 7%;
        margin-left:8%;
    }
    .login-group a{
        font-size: 20px;
    }
    .login-group .btn {
      width: 270px;
  letter-spacing: 0.5px;
  padding: 15px 20px;
  transition: border 0.3s ease;
  cursor: pointer;
  /* background: linear-gradient(-45deg,#a70b52, #1c538f); */
  background-color: white;
  color: black;
  text-transform: capitalize;
  font-size: 25px;         
}
.login-group .btn:hover{
  box-shadow: 0 0 0 0.2rem white;
  background-color: #d3dfebd4;
  /* background: linear-gradient(-45deg,#1c538f, #a70b52); */
}
</style>
</head>
<body>
  <div class="main-heading text-center text-black bg-light p-2">
    <h3>HOUR WISE LECTURE TRACKING SYSTEM</h3>
  </div>
      <div class="login-group">
        <div>
            <button type="button"  class="btn rounded btn-lg my-3" data-toggle="modal" data-target="#adminLogin">Admin <i class="fa fa-arrow-circle-right ml-5" > </i></button>
        </div>
        <div>
            <button type="button" class="btn rounded btn-lg my-3" data-toggle="modal" data-target="#studentLogin">Student  <i class="fa fa-arrow-circle-right ml-5" > </i></button>
        </div>      
        <div>
            <button type="button" class="btn rounded btn-lg my-3" data-toggle="modal" data-target="#facultyLogin">Faculty  <i class="fa fa-arrow-circle-right ml-5" ></i></button>
        </div>
      </div>
      <!-- Admin Login -->
      <div class="modal fade adminLogin" id="adminLogin">
        <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Admin Login</h4>
          </div>
          <div class="modal-body">
            <div class="container-fluid login-form d-flex flex-column justify-content-center">
              <form action="adminLogin.jsp"autocomplete="off">
                  <div class="form-group">
                    <label for="email"><i class="fa fa-user"> </i> Email address:</label> 
                    <input type="email" class="form-control" placeholder="Enter email" name="uname" id="email" required>
                  </div>
                  <div class="form-group">
                    <label for="pwd"><i class="fa fa-lock"> </i> Password:</label>
                    <input type="password" name="pwd" pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,12}$" class="form-control" placeholder="Enter password" id="pwd" required>
                  </div>
                  <div class="form-group">
                  <button type="submit" class="btn btn-success btn-block">Log In</button>
              </div>
                </form>
              </div>
          </div>
        </div>
      </div>
      </div>
      <!--Student Login-->
      <div class="modal fade studentLogin" id="studentLogin">
        <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Student Login</h4>
          </div>
          <div class="modal-body">
            <div class="container-fluid login-form d-flex flex-column justify-content-center">
                <form action="studentlogin.jsp" autocomplete="on">
                  <div class="form-group">
                    <label for="email"><i class="fa fa-user"> </i> Registration Number:</label> 
                    <input type="text" class="form-control" placeholder="Registration Number" name="regno" id="reg" required >
                  </div>
                  <div class="form-group">
                    <label for="pwd"><i class="fa fa-lock"> </i> Password:</label>
                    <input type="password" class="form-control" name="pwd" placeholder="Enter password" id="pwd" required>
                  </div>
                  <div class="form-group">
                      <label for="Branch"><i class="fa fa-book"></i>
                          Branch</Br></label>
                      <select class="form-control form-select" name="branch" id="Branch" required>
                          <option class="options" disabled selected>Select Branch</option>
                          <option class="options" value="CSE">CSE</option>
                          <option class="options" value="MEC">MEC</option>
                          <option class="options" value="EEE">EEE</option>
                          <option class="options" value="ECE">ECE</option>
                          <option class="options" value="civil">CIVIL</option>
                        </select> 
                  </div>
                  <div class="form-group">
                  <button type="submit" class="btn btn-success btn-block">Submit</button>
                 </div>
                </form>
                  <div class="m-2 form-check">
                  <label class="form-check-label">
                    <input class="form-check-input small" type="checkbox" checked> Remember me</label>
                   
                 </div>
                 </div>
          </div>
          <div class="modal-footer">
            <div class="text-center small">Don't have an account? <a href="#studentReg" data-dismiss="modal" data-toggle="modal">Sign up</a></div>
          </div>
        </div>
      </div>
      </div>

      <!--Faculty Login-->
      <div class="modal fade studentLogin" id="facultyLogin">
        <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Faculty Login</h4>
          </div>
          <div class="modal-body">
            <div class="container-fluid login-form d-flex flex-column justify-content-center">
              <form action="facultylogin.jsp" autocomplete="on">
                  <div class="form-group">
                    <label for="email"><i class="fa fa-user"> </i>Faculty ID</label> 
                    <input type="text" class="form-control" name="fid" placeholder="PF NO" id="pfno">
                  </div>
                  <div class="form-group">
                    <label for="pwd"><i class="fa fa-lock"> </i> Password:</label>
                    <input type="password" class="form-control" name="pwd" placeholder="Enter password" id="pwd">
                  </div>
                  <div class="form-group">
                      <label for="Branch"><i class="fa fa-book"></i>
                          Branch</Br></label>
                         <select class="form-control form-select" name="branch" id="Branch">
                          <option class="options" disabled selected>Select Branch</option>
                          <option class="options" value="cse">CSE</option>
                          <option class="options" value="mec">MEC</option>
                          <option class="options" value="eee">EEE</option>
                          <option class="options" value="ece">ECE</option>
                          <option class="options" value="civil">CIVIL</option>
                        </select> 
                  </div>
                  <div class="form-group">
                  <button type="submit" class="btn btn-success btn-block">Submit</button>
                 </div>
                </form>
                  <div class="form-check">
                  <label class="form-check-label">
                    <input class="form-check-input small" type="checkbox" checked> Remember me</label>
                   
                 </div>
                 </div>
          </div>
          <div class="modal-footer">
            <div class="text-center small">Don't have an account? <a href="#facultyReg"  data-dismiss="modal"  data-toggle="modal">Sign up</a></div>
          </div>
        </div>
      </div>
      </div>

      <!--Student Registration-->

      <div class="modal fade Registration" id="studentReg">
        <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Student Registration</h4>
          </div>
          <div class="modal-body">
              <form action="studentreg.jsp" method="post">
                <div class="form-group">
                    <div class="row">
                        <div class="col"><input type="text" class="form-control" name="first_name" pattern="[A-Za-z]{1,32}" placeholder="First Name" required></div>
                         <div class="col"><input type="text" class="form-control" name="last_name" pattern="[A-Za-z]{1,32}" placeholder="Last Name" required></div>
                    </div>        	
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col"><input type="text" class="form-control" pattern="([0-9]{2})(B95A0)([0-9]{3})" name="Regno" placeholder="Registration number" required></div>
                        <div class="col"><input type="tel" class="form-control" pattern="[0-9]{10}" name="Phno" placeholder="Phone Number" required="required"></div>
                    </div>        	
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col"><input type="email" class="form-control" name="email" placeholder="Username" required="required"></div>
                        <div class="col">
                            <input type="password" class="form-control" pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,12}$"  name="pwd" placeholder="Password" required>
                        </div>
                  </div>        	
                </div> 
                <div class="form-group">
                    <div class="row">
                        <div class="col">
                           <select class="form-control form-select" name="Branch" id="Branch" required>
                            <option class="options" disabled selected>Select Branch</option>
                            <option class="options" value="CSE">CSE</option>
                            <option class="options" value="MEC">MEC</option>
                            <option class="options" value="EEE">EEE</option>
                            <option class="options" value="ECE">ECE</option>
                            <option class="options" value="civil">CIVIL</option>
                          </select> </div>
                        <div class="col">
                           <select class="form-control form-select" name="Year" id="Year" required>
                            <option class="options" disabled selected>Select Year</option>
                            <option class="options" value="1st Year">1st Year</option>
                            <option class="options" value="2nd Year">2nd Year</option>
                            <option class="options" value="3rd Year">3rd Year</option>
                            <option class="options" value="4th Year">4th Yera</option>
                          </select> </div>
                    </div>        	
                </div>
                <div class="form-group">
                    <textarea class="form-control h-20" name="Address" placeholder="Address(optional)" id="message"></textarea>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-success btn-block">Register Now</button>
                </div>
            </form>             
          </div>
        </div>
      </div>
      </div>

      <!--Faculty Registration-->

      <div class="modal fade Registration" id="facultyReg">
        <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Faculty Registration</h4>
          </div>
          <div class="modal-body">
              <form action="facultyreg" method="post" enctype="multipart/form-data">
              <div class="form-group">
                  <div class="row">
                      <div class="col"><input type="text" class="form-control" name="name" placeholder="Full Name" required="required"></div>
                      <div class="col"><input type="text" class="form-control" name="Designation" placeholder="Designation" required="required"></div>
                  </div>        	
              </div>
              <div class="form-group">
                  <div class="row">
                      <div class="col"><input type="text" class="form-control" name="regno" placeholder="Registration number" required="required"></div>
                      <div class="col"><input type="email" class="form-control" name="email" placeholder="Enter Email" required="required"></div>
                  </div>        	
                  
              </div>
              <div class="form-group">
                  <div class="row">
                      <div class="col"><input type="tel" class="form-control" name="Phno" pattern="[0-9]{10}" placeholder="Phone Number" required="required"></div>
                      <div class="col"><input type="password" class="form-control" name="pwd" pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,12}$"  placeholder="Enter Password" required="required"></div>
                  </div>        	
              </div>      
              <div class="form-group">
                  <div class="row">
                      <div class="col">
                         <select class="form-control form-select" name="Branch" id="Branch" required>
                          <option class="options" disabled selected>Select Branch</option>
                          <option class="options" value="cse">CSE</option>
                          <option class="options" value="mec">MEC</option>
                          <option class="options" value="eee">EEE</option>
                          <option class="options" value="ece">ECE</option>
                          <option class="options" value="civil">CIVIL</option>
                        </select> </div>
                  </div>        	
              </div>
              <div class="form-group">
                  <textarea class="form-control h-20" placeholder="Address" name="Address" id="message"></textarea>
              </div>
              <div class="form-group mx-3 my-2">
                  <input type="file" id="file" name="file" onchange="return fileValidation()" multiple required>
              </div>
              <div class="form-group">
                 <button type="submit" class="btn btn-success btn-block">Register Now</button>
              </div>
          </form>             
          </div>
        </div>
      </div>
      </div>
 <script type="text/javascript" src="script.js">
 </script>     
</body>
</html>