

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Form</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- Custom CSS -->
<link rel="stylesheet" href="style.css">
</head>
<body>
<input type = "hidden" id = "status" value = "<%= request.getAttribute("status")%>">
<div class="container d-flex justify-content-center align-items-center vh-100">
  <div class="card custom-card-width">
    <div class="card-body">
      <h2 class="card-title text-center">Login Form</h2>
      <form method="post" action="login" id="login-form" class="needs-validation" novalidate>
        <div class="form-group">
          <label for="email">Email:</label>
          <input type="email" name = "email" class="form-control" id="email" placeholder="Enter your email" required>
          <div class="invalid-feedback">Please provide a valid email address.</div>
        </div>
        <div class="form-group">
          <label for="password">Password:</label>
          <input type="password" name = "password" class="form-control" id="password" placeholder="Enter your password" required>
          <div class="invalid-feedback">Please enter your password.</div>
        </div>
        <button type="submit" class="btn btn-danger btn-block">Login</button>
        <div class="form-group text-center">
          <p>Don`t have an account? <a href="registration.jsp">Register here</a></p>
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
 	    if(status == "failed"){
 	    swal("Sorry", "Incorrect Email Id or Password", "error");
 	    }
 	</script>
</body>
</html>
