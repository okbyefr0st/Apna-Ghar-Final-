<!DOCTYPE html>
<html lang="en">
<head>
<title>Login Page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="style1.css"/>
	
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
</head>
<body style="background-image:url(h1.jpg)" >
   

	<jsp:include page="header.html"></jsp:include>
	<div>
	<div class="container">
		<font face="cambria" size = "5px" color="red">${Prompt}</font>
		<font face="cambria" size = "5px" color="red">${Invalid}</font>
		
			<form  action="login.go" method="post">
				<div class="form-group">
					<h2 align="left"><font face="cambria">Sign in</font></h2>
					<label class="control-label col-sm-2" for="email"><font face="cambria">Email:</font></label>

					<div class="col-sm-4">
						<input type="email" class="form-control" id="email"
							placeholder="Enter email" name="email"
							title="Enter Valid Email id" name="email" required>
					</div>
				</div>
				<br>
				
				<br>
				
				<div class="form-group">
					<label class="control-label col-sm-2" for="password"><font face="cambria">Password:</font></label>
					<div class="col-sm-4">
						<input type="password" class="form-control" id="password"
							placeholder="Enter password" name="password"
							pattern=[a-zA-Z0-9@_.]{8,20} title="between 8-20 characters(@_.)"
							name="password" required>
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-7">
						<button type="submit"class="button button5"><font face="cambria">Login</font></button>
						<a href="forget.jsp">Forget Password</a>
					</div>
				</div>


			</form>
		</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
		<jsp:include page="footer.html" />
		</div>
</body>
</html>
