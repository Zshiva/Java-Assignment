<%
if(session.getAttribute("username") == null){
response.sendRedirect("login.jsp");
}
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home Page</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- Custom CSS -->
<style>
  /* Custom styles for the navigation bar */
  .navbar {
    background-color: #333;
    padding: 10px 20px;
  }
  .navbar-brand, .navbar-nav .nav-link {
    color: #fff;
    text-decoration: none;
    padding: 5px 10px;
  }
  .navbar-brand:hover, .navbar-nav .nav-link:hover {
    color: #fff;
    background-color: #555;
    border-radius: 5px;
  }
</style>
</head>
<body>

<!-- Navigation Bar -->
<nav class="navbar navbar-expand-md">
  <div class="container">
    <a href="#" class="navbar-brand">Logo</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a href="#" class="nav-link">Home</a>
        </li>
        <li class="nav-item">
          <a href="#" class="nav-link">Contact</a>
        </li>

        <li class="nav-item mx-0 mx-lg-1 bg-warning dropdown">
          <a href="#" class="nav-link dropdown-toggle" id="profileDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <%=session.getAttribute("username")%>
          </a>
          <div class="dropdown-menu" aria-labelledby="profileDropdown">
            <a class="dropdown-item" href="edit-profile.jsp">Edit Profile</a>
            <a class="dropdown-item" href="logout">Log out</a>

          </div>
        </li>
      </ul>
    </div>
  </div>
</nav>
<div>
<h1>Welcome, <%= session.getAttribute("username") %></h1>
</div>
<!-- Bootstrap JS and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
