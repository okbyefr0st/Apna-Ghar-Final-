<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="style1.css"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Change Password</title>
</head>
<body style="background-image:url(h1.jpg)">

<jsp:include page="header.html" />
<div class="container"  >


  <h2 align="left"><font face="cambria" >Change password</font></h2>
   <form class="form-horizontal" action="change.go" method="post">
   <font face="cambria" size = "3px" color="#6c5b7b">${Invalid}</font>
    <div class="form-group">
      <label class="control-label col-sm-2"  ><font face="cambria" >Enter New Password:</font></label>
      
      <div class="col-sm-4">
        <input type="password" class="form-control" id="password" placeholder="Enter password" name="password" >
        
      </div>
    </div>

    <div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit"class="button button5"><font face="cambria" >Submit</font></button>
<!-- 						<a href="login.jsp">Login Now</a> -->
					</div>
				</div>
</form>
</div>


<jsp:include page="footer.html" />
</body>
</html>