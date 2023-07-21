<%@ page import="java.util.*" %>
<%@ page import="javax.servlet.http.*" %>

 <!DOCTYPE html>
 <html lang="en">
 <head>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <title>Registration Form</title>

 <!-- Bootstrap CSS -->
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

 <!-- Custom CSS -->
 <link rel="stylesheet" href="style.css">
 </head>
 <body>
 <input type = "hidden" id = "status" value = "<%= request.getAttribute("status")%>">

 <div class="container d-flex justify-content-center align-items-center vh-100">
   <div class="card custom-card-width"> <!-- Add custom class 'custom-card-width' -->
     <div class="card-body">
       <h2 class="card-title text-center">Registration Form</h2>

       <form method = "post" action = "register "id="registration-form" class="needs-validation" >
               <div class="form-group">
                 <label for="name">Name:</label>
                 <input type="text" name = "name" class="form-control" id="name" placeholder="Enter your name" required>
                 <div class="invalid-feedback">Please provide a valid name.</div>
               </div>
               <div class="form-group">
                 <label for="username">Username:</label>
                 <input type="text" name = "username" class="form-control" id="username" placeholder="Choose a username" required>
                 <div class="invalid-feedback">Please choose a username.</div>
               </div>
               <div class="form-group">
                 <label for="email">Email:</label>
                 <input type="email" name = "email" class="form-control" id="email" placeholder="Enter your email" required>
                 <div class="invalid-feedback">Please provide a valid email address.</div>
               </div>
               <div class="form-group">
                 <label for="password">Password:</label>
                 <input type="password" name = "password" class="form-control" id="password" placeholder="Enter a password" required>
                 <div class="invalid-feedback">Please enter a password.</div>
               </div>
               <div class="form-group">
                 <label for="address">Address:</label>
                 <textarea class="form-control" name = "address" id="address" rows="3" placeholder="Enter your address" required></textarea>
                 <div class="invalid-feedback">Please provide your address.</div>
               </div>
               <button type="submit" class="btn btn-warning btn-block">Register</button>

               <div class="form-group text-center">
                 <p>Already registered? <a href="login.jsp">Login here</a></p>
               </div>
             </form>

     </div>
   </div>
 </div>

 <!-- Bootstrap JS and jQuery -->
 <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
 <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
 	<link rel="stylesheet" href="alert/dist/sweetalert.css">
 	<script type="text/javascript">
 	    var status = document.getElementById("status").value;
 	    if(status == "success"){
 	    swal("Congrats", "Accounts is created Successfully", "success");
 	    }
 	</script>
 </body>
 </html>


