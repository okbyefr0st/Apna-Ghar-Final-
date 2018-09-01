<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Loan Details</title>
<style>
div1 {
    background-color: lightgrey;
     width: 800px; 
    border: 25px ;
     padding: 5px; 
    margin: 25px;
  
}
</style>
</head>
<body>
	<jsp:include page="header2.html" />
	<form action="logout.do" method="post">
 <div align="right">

</div> </form>
	<div class=div1 align="center"><b>
<table border="1" align="center">
		<tr><td>LoanId :</td> <td>${ Loan.loanId }</td></tr><br>
		<tr><td>Aadhar :</td> <td>${ Loan.aadhar }</td></tr><br>
	<tr><td>	Income :</td> <td>&#8377;.  ${ Loan.income }</td></tr><br>
		<tr><td>LoanAmount :</td> <td>&#8377;.  ${ Loan.loanAmount }</td></tr><br>
		<tr><td>Tenure :</td> <td>${ Loan.tenure } years</td></tr><br>
		<tr><td>AmountPaid :</td> <td>&#8377;.  ${ Loan.amountPaid }</td></tr><br></b>
		</table></div>
					<jsp:include page="footer.html" /> 
					
	
			
  
</body>
</html>