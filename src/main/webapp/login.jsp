<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Form</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>	
.button {
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

.button1 {background-color: orange;}	
.button2 {background-color: orange;}	

.navbar { background-color: #484848; }
.navbar .navbar-nav .nav-link { color: #fff; }
.navbar .navbar-nav .nav-link:hover { color: #fbc531; }
.navbar .navbar-nav .active > .nav-link { color: #fbc531; }

footer a.text-light:hover { color: #fed136!important; text-decoration: none; }
footer .cizgi { border-right: 1px solid #535e67; }
@media (max-width: 992px) { footer .cizgi { border-right: none; } }

</style>
</head>
<body>

  <header>
	<!--- Navbar --->
	<nav class="navbar navbar-expand-lg">
		<div class="container">
			<a class="navbar-brand text-white" href="#home"><i class="fa fa-graduation-cap fa-lg mr-2"></i>Welcome</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#nvbCollapse" aria-controls="nvbCollapse">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="nvbCollapse">
				<ul class="navbar-nav ml-auto">
					
					<li class="nav-item pl-1">
						<a class="nav-link" href="#header"><i class="fa fa-user-plus fa-fw mr-1"></i>HOME</a>
					</li>
					<li class="nav-item pl-1">
						<a class="nav-link" href="#footer"><i class="fa fa-sign-in fa-fw mr-1"></i>ABOUT</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<!--# Navbar #-->
	</header>



<section>
<input type = "hidden" id = "status" value="<%= request.getAttribute("status") %>">
<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
<h2 class="form-title" align="center">Login Form</h2>
<br><br><br>

				<form method="post" action="login" class="login-form"
							id="login-form">
		
				<fieldset class="form-group">
					<label>Username</label> <input type="text"
						 class="form-control"
						name="user">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Password</label> <input type="password"
						 class="form-control"
						name="pass">
				</fieldset>
				
				<div style="float: left;" >
				<button type="submit" class="button button1">Submit</button> </div>
				
				</form>
				
				<div style="float: right;" ><a href="registration.jsp" class="signup-image-link"><button type="submit" class="button button2">Register 	</button></a></div>
				</section>
				
	<!--- Footer --->
	<footer>
		<div class="jumbotron jumbotron-fluid bg-secondary p-4 mt-5 mb-0">
			<div class="container">
				<div class="row">
					<div class="col-12 col-sm-12 col-md-12 col-lg-4 col-xl-4 cizgi">
						<div class="card bg-secondary border-0">
							<div class="card-body text-light text-center">
								<h5 class="card-title text-white display-4" style="font-size:30px">Heru Wibowo</h5>
							<p class="d-inline lead">ATS INDONESIA &copy; 2022<br>
							<a href="#" class="text-light d-block lead">ATS</a>
							</p>
	
							</div>
						</div>
					</div>
					
					<div class="col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4 cizgi">
						<div class="card bg-secondary border-0">
							<div class="card-body text-center">
								<h5 class="card-title text-white display-4" style="font-size:30px">Contact</h5>
								<a class="text-light d-block lead" style="margin-left: -20px" href="#"><i class="fa fa-phone mr-2"></i>+08777777777</a>
								<a class="text-light d-block lead" href="#"><i class="fa fa-envelope mr-2"></i>Bootcamp</a>
							</div>
						</div>
					</div>
					
					<div class="col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4">
						<div class="card bg-secondary border-0">
							<div class="card-body text-center">
							<h5 class="card-title text-white display-4" style="font-size:30px">Social Media</h5>
					
									<a class="text-light" href="#"><i class="fa fa-facebook-square fa-fw fa-2x"></i></a>
								
									<a class="text-light" href="#"><i class="fa fa-twitter-square fa-fw fa-2x"></i></a>
								
									<a class="text-light" href="#"><i class="fa fa-instagram fa-fw fa-2x"></i></a>
								
									<a class="text-light" href="#"><i class="fa fa-linkedin fa-fw fa-2x"></i></a>
								
							</div>
						</div>
					</div>	
				</div>
			</div>
		</div>
	</footer>
	<!--# Footer #-->
							
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	<script type="text/javascript">

var status = document.getElementById("status").value;
if (status == "failed"){
	swal("Login Failed","Wrong Username or Password","error");
}
</script>
				
</body>
</html>