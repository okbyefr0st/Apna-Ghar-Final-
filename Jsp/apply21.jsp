<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" type="text/css" href="style1.css">
<style type="text/css">
.form-style-6{
    font: 95% Arial, Helvetica, sans-serif;
    max-width: 400px;
    margin: 10px auto;
    padding: 16px;
    background: #F7F7F7;
    float:left;
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
<title>Max Loan Grantable</title>
</head>
<body style="background-image:url(regi.jpg) " >
<jsp:include page="header2.html" />

<%-- Display maximum loan amount grantable --%>

<form  class="form-style-6"  action="eligible.go" method="post">
<font size="5px">You can apply for maximum loan amount of :<br>&#8377;.<font size="8px">${ MaxLoan }</font></font></p><br>
<font size="5px">Your EMI for ${ MaxLoan }</font><font size="5px">will be :<br>&#8377;.<font size="8px">${ EMI }</font></font></p><br>
<label for="amount">Loan Amount :</label>
<input type="number" name="loanAmount" placeholder="Loan Amount">

<input type="hidden" name="email" value=<% out.println(request.getParameter("email"));%> />
<input type="hidden" name="propertyName" value=<% out.println(request.getParameter("propertyName"));%> />
<input type="hidden" name="propertyValue" value=<% out.println(request.getParameter("propertyValue"));%> />
<input type="hidden" name="income" value=<% out.println(request.getParameter("income"));%> />
<input type="hidden" name="tenure" value=<% out.println(request.getParameter("tenure"));%> />
<input type="hidden" name="occupation" value=<% out.println(request.getParameter("occupation"));%> />

<input type="submit" name="submit" value="Proceed">


<%-- <input type="number" name="amount" max="${ Maxloan }" title="Exceeding your m"> --%>
</form>
</body>
</html>