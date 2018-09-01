<%@ page import="lti.apnaghar.entity.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="headerstyle.css">
<link rel="stylesheet" type="text/css" href="temp1.css">
<script src="temp2.js"></script>
<script src="temp3.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
</style>
</head>
<body>



<% Customer customer=(Customer) session.getAttribute("Customer");
if(customer != null){
%>
<div class="header">
  <a href="home.jsp" class="logo"><img src="logo.png" alt="apnagharlogo" height="70" width="80">
  <font face="Papyrus" color="orange">ApnaGhar</font><sub><sub><sub><font face="Georgia" >Dream to Reality</font></sub></sub></sub></a>
 
  <span>Hello <%= customer.getAadhar().getName() %>!</span>|
<a class="active" href="home.jsp">Home</a>|
<a href="profilecust.jsp">Profile</a>|
<a href="contactus.jsp">Contact</a>|
<a href="about.jsp">About</a>

<form>
<button class="btn" type="submit" ><font face="cambria" size="4 px" ><u>Logout</u></font></button>
</form>
</div>
<% } else { %>
<div class="header">
  <a href="home.jsp" class="logo"><img src="logo.png" alt="apnagharlogo" height="70" width="80">
  <font face="Papyrus" color="orange">ApnaGhar</font><sub><sub><sub><font face="Georgia" >Dream to Reality</font></sub></sub></sub></a>
<a class="active" href="home.jsp">Home</a>|
<a href="contactus.jsp">Contact</a>|
 <a href="about.jsp">About</a>|
<a href="register1.jsp">Signup</a>|   
<a href="login.jsp">Login</a> 
</div>
<% }%>

</body>
</html>