<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="style1.css"/>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Forget Password</title>
</head>
<body  style="background-image:url(h1.jpg)" >
	<jsp:include page="header.html" />
	<div class="container">

		<div class="jumbotron">
			<h2 align="left"><font face="cambria" >Forget password</font></h2>
			<form class="form-horizontal" action="forget.go" method="post">
			<font face="cambria" size = "3px" color="#6c5b7b">${Invalid}</font>
				<div class="form-group">
					<label class="control-label col-sm-2" for="email"><font face="cambria" >Email:</font></label>

					<div class="col-sm-4">
						<input type="email" class="form-control" id="email"
							placeholder="Enter email" name="email"
							
							title="Enter Valid Email id" name="email" required>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2"><font face="cambria" >Enter mother's
						maiden name:</font></label>
					<div class="col-sm-4">
						<input type="password" class="form-control" id="answer"
							placeholder="enter mother's name" name="answer">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="button button5"><font face="cambria" >Submit</font></button>
<!-- 						<a href="change.jsp">Change Password</a> -->
					</div>
				</div>

			</form>
		</div>
	</div>


	<jsp:include page="footer.html" />
</body>
</html>