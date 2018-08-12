<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>
<link href="css/login.css" rel="stylesheet" id="bootstrap-css">

<style>
body#LoginForm {
	background-image: url("img/1.jpg");
	background-repeat: no-repeat;
	background-position: center;
	background-size: cover;
	padding: 10px;
}
</style>
<script>
	window.history.forward(1);
</script>
</head>

<body id="LoginForm">

	<div class="container">
		<div class="login-form">
			<div class="main-div">
				<div class="panel">
					<h2>Login</h2>
					<p>Please enter your username and password</p>
				</div>
				<form id="Login" action="login.app" method="post">

					<div class="form-group">


						<input type="text" class="form-control" id="inputEmail"
							placeholder="User Name" name="username">

					</div>

					<div class="form-group">

						<input type="password" class="form-control" id="inputPassword"
							placeholder="Password" name="password">

					</div>
					<button type="submit" class="btn btn-primary">Login</button>

				</form>
			</div>
		</div>
	</div>



<jsp:include page="footer.jsp"></jsp:include>	

</body></html>
