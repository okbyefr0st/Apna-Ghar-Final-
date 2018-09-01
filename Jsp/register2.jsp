<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%--     <%@page import="lti.apnaghar.entity.Aadhar"  %> --%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style1.css">
<title>Registration Window</title>
</head>

    <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        function goFurther() {
            if (document.getElementById("chkAgree").checked == true)
                document.getElementById("button").disabled = false;
            else
                document.getElementById("button").disabled = true;
        }
    </script>
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
    <style type="text/css">
        input[disabled] {
            color: Gray;
            text-decoration: none;
        }
    </style>
    
</head>
<body style="background-image:url(regi2.jpg) " >

<jsp:include page="header.html"/>

    <form class="form-style-6" action="register2.go" method="post">
    <img src="res/step_two.png" align="left" width="85px" height="85px">
	<h2>
		<font face="cambria"><u> Your Aadhar details</u></font>
	</h2>
    <div align="left">
    <table>
        <tr><td><font face="cambria" color="black"  size="4px">Aadhar :</td></tr><tr><td><input type="text" name="aadhar" value=${ Aadhar.aadhar } readonly></font></td></tr>
        <tr><td><font face="cambria" color="black"  size="4px">Name :</td></tr><tr><td><input type="text" name="name" value=${ Aadhar.name } readonly></font></td></tr>
        <tr><td><font face="cambria" color="black"  size="4px">Address :</td></tr><tr><td><input type="text" name="address" value=${ Aadhar.address } readonly></font></td></tr>
        <tr><td><font face="cambria" color="black"  size="4px">City :</td></tr><tr><td><input type="text" name="city" value=${ Aadhar.city } readonly></font></td></tr>
        <tr><td><font face="cambria" color="black"   size="4px">State :</td></tr><tr><td><input type="text" name="state" value=${ Aadhar.state } readonly></font></td></tr>
        <tr><td><font face="cambria" color="black"  size="4px">DateOfBirth :</td></tr><tr><td><input type="text" name="dateOfBirth" value=${ Aadhar.dateOfBirth } readonly></font></td></tr>
        <tr><td><font face="cambria" color="black"  size="4px">Contact :</td></tr><tr><td><input type="text" name="contact" value=${ Aadhar.contact } readonly></font></td></tr>
        </table>
      <font face="cambria"  color="black" size="4px">  <input type="checkbox" required id="chkAgree" onclick="goFurther()" >I Agree with the terms and conditions.<br></font>
        <input type="submit" id="button"class="button button5" value="Submit"  onclick="register3.jsp">
        </div>
       
      
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
  <%@include file="footer.html" %>
</body>
</html>