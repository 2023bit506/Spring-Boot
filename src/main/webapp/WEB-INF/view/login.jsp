<!DOCTYPE html>
<html>
<head>
	<title>Login Page</title>

	<!-- Bootstrap 4 CDN -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
    <!-- Fontawesome CDN -->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

	<!-- Custom styles -->
	<link rel="stylesheet" type="text/css" href="/resources/css/style.css">
</head>
<body>
	<div class="container">
		<div class="d-flex justify-content-center align-items-center h-100">
			<div class="card">
				<div class="card-header text-center">
					<h3>Sign In</h3>
					<h4 style="color:yellow">${msg}</h4>					
					<div class="d-flex justify-content-center social_icon">
						<span><i class="fab fa-facebook-square"></i></span>
						<span><i class="fab fa-google-plus-square"></i></span>
						<span><i class="fab fa-twitter-square"></i></span>
					</div>
				</div>
				<div class="card-body">
					<form action="loginprocess" method="post">
						<div class="input-group form-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fas fa-user"></i></span>
							</div>
							<input type="text" class="form-control" placeholder="username" name="userName">
						</div>
						<div class="input-group form-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fas fa-key"></i></span>
							</div>
							<input type="password" class="form-control" placeholder="password" name="password">
						</div>
						<div class="form-group">
							<input type="submit" value="Login" class="btn btn-success float-right login_btn">
						</div>
					</form>
				</div>
				<!-- Footer with links (optional) -->
				<!-- <div class="card-footer text-center">
					<div class="d-flex justify-content-center links">
						Don't have an account? <a href="#">Sign Up</a>
					</div>
					<div class="d-flex justify-content-center">
						<a href="#">Forgot your password?</a>
					</div>
				</div> -->
			</div>
		</div>
	</div>

	<!-- Bootstrap and JQuery scripts -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>
