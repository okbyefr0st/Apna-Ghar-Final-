<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1><font face="cambria" size = "3px" color="#6c5b7b">${Invalid}</font></h1>
<form action="status.go" method="post">

	 <input type="text" name="email" value=<% out.println(request.getParameter("email"));%> />
        <br>
<!-- 		loanid<input type="number" name="loan"> -->
 <input type="submit"  name="submit" id="button" value="Loan Status">
</form>

<form action="panvalidate.go">

	 <input type="text" name="email" value=<% out.println(request.getParameter("email"));%> />
        <br>
<!-- 		loanid<input type="number" name="loan"> -->
 <input type="submit"  name="submit" id="button" value="Apply Loan">
</form>

<form action="logout.go">
    <input type="submit"  name="submit" id="button" value="Logout">
  </form>
</body>
</html>