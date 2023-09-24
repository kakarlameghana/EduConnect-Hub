/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/ClientSide/javascript.js to edit this template
 */
function fileValidation() {
            var fileInput =document.getElementById('file');  
            var filePath = fileInput.value;
         
            // Allowing file type
            var allowedExtensions =
/(\.doc|\.docx|\.odt|\.pdf|\.tex|\.txt|\.rtf|\.wps|\.wks|\.wpd)$/i;
         if (!allowedExtensions.exec(filePath)) {
                alert('Invalid file type');
                fileInput.value = '';
                return false;
            }
        if (typeof(fileInput.files)!="undefined") {

        var size = parseFloat(fileInput.files[0].size / (1024 * 1024)).toFixed(2); 
        if(size > 2) {
            alert('Please select file size less than 2 MB');
            fileInput.value = '';
            return false;
        }
    }
}
//function adminlogin(){
//    window.open("adminPanel.jsp");
//    }
//function studentlogin(){
//    alert("Successfully Logged In...");
//    window.open("studentPanel.jsp");
//}
//function facultylogin(){
//    alert("Successfully Logged In...");
//    window.open("facultyPanel.jsp");
//}
//function Update(){
//    alert("Successfully Logged In...");
//    window.location.href="#";
//}
//function validatepwd() {  
//  var pw1 = document.getElementById("pswd1");  
//  var pw2 = document.getElementById("pswd2");  
//  if(pw1!=pw2)  
//  {   
//    alert("Passwords did not match");  
//  } else {  
//    alert("Password created successfully");  
//  }  
//}  