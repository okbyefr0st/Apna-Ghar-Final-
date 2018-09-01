<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Registration Window</title>
    <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <style type="text/css">
.form-style-6{
    font: 95% Arial, Helvetica, sans-serif;
    max-width: 400px;
    margin: 10px auto;
    padding: 16px;
    background: #F7F7F7;
}
.form-style-6 h1{
    background: #43D1AF;
    padding: 20px 0;
    font-size: 140%;
    font-weight: 300;
    text-align: center;
    color: #fff;
    margin: -16px -16px 16px -16px;
}
.form-style-6 input[type="text"],
.form-style-6 input[type="date"],
.form-style-6 input[type="datetime"],
.form-style-6 input[type="email"],
.form-style-6 input[type="number"],
.form-style-6 input[type="search"],
.form-style-6 input[type="time"],
.form-style-6 input[type="url"],
.form-style-6 textarea,
.form-style-6 select 
{
    -webkit-transition: all 0.30s ease-in-out;
    -moz-transition: all 0.30s ease-in-out;
    -ms-transition: all 0.30s ease-in-out;
    -o-transition: all 0.30s ease-in-out;
    outline: none;
    box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    width: 100%;
    background: #fff;
    margin-bottom: 4%;
    border: 1px solid #ccc;
    padding: 3%;
    color: #555;
    font: 95% Arial, Helvetica, sans-serif;
}
.form-style-6 input[type="text"]:focus,
.form-style-6 input[type="date"]:focus,
.form-style-6 input[type="datetime"]:focus,
.form-style-6 input[type="email"]:focus,
.form-style-6 input[type="number"]:focus,
.form-style-6 input[type="search"]:focus,
.form-style-6 input[type="time"]:focus,
.form-style-6 input[type="url"]:focus,
.form-style-6 textarea:focus,
.form-style-6 select:focus
{
    box-shadow: 0 0 5px #43D1AF;
    padding: 3%;
    border: 1px solid #43D1AF;
}

.form-style-6 input[type="submit"],
.form-style-6 input[type="button"]{
    box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    width: 100%;
    padding: 3%;
    background: #43D1AF;
    border-bottom: 2px solid #30C29E;
    border-top-style: none;
    border-right-style: none;
    border-left-style: none;    
    color: #fff;
}
.form-style-6 input[type="submit"]:hover,
.form-style-6 input[type="button"]:hover{
    background: #2EBC99;
}
</style>
</head>

<body style="background-image:url(regi2.jpg)">
    <jsp:include page="header.html"/>

  
    <form class="form-style-6"  action="register3.go" method="post">
     <img src="res/step_three.png" align="left" width="85px" height="85px">
	<h2>
		<font face="cambria"><u>Register Now</u></font>
	</h2>
	
	    
	<table>
       <tr><td><font face="cambria" color="black" size="4px"> <label for="aadhar" name="aadhar">Aadhar No :</label>
        <br>
        <input type="text" name="aadhar" value=<% out.println(request.getParameter("aadhar"));%> />
        </font><br>
        <br>
      <tr><td><font face="cambria" color="black" size="4px">  <label for="email" >EMAIL ID :</label>
        <br>
        <input type="email" name="email" placeholder="someone@xyz.com" style="background-color:#EBF5FB; color:black;" required>
        </font><br>
        <br>

       <tr><td><font face="cambria" color="black" size="4px"> <label for="pan" >PAN NO :</label>
        <br>
        <input type="text" name="pan" pattern="([A-Z]{5})([0-9]{4})([A-Z]{1})" minlength="10" maxlength="10" placeholder="ABCDE1234F"
            style="background-color:#EBF5FB; color:black;" required>
        </font><br>
        <br>

       <tr><td><font face="cambria" color="black" size="4px"> <label for="password" >PASSWORD :</label>
        <br>
        <input type="password" name="password" pattern=[A-Za-z0-9]{8,20} placeholder="alphanumeric (size 8 to 20)" style="background-color:#EBF5FB; color:black;" required>
        </font><br>
        <br>

      <tr><td><font face="cambria" color="black" size="4px">  <label for="answer" >SET ANSWER TO THIS SECURITY QUESTION</label></font>
        <br>
    <tr><td><font face="cambria" color="black" size="4px">    <label for="answer" >ENTER YOUR MOTHER'S MIDDLE NAME :</label>
        <br>
        <input type="password" name="answer" style="background-color:#EBF5FB; color:black;" required></font>
        <br>
        <br>

        <input type="submit" value="Submit">
        <br>
        <br>

       </table>
    </form>
    <br>
  <br>
  <br>
   <br>
  <br>
  <br>
   <br>
  <br>
  <br>			
    <br>
   <br>
 
  <br>	
    <%@ include file="footer.html" %>
</body>

</html>

