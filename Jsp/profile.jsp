<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="lti.apnaghar.bean.LoginBean"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>Insert title here</title>
<script> 
$(document).ready(function(){
    $("#flip").click(function(){
        $("#panel").slideToggle("slow");
 });
});
$(document).ready(function(){
    $("#flip1").click(function(){
        $("#panel1").slideToggle("slow");
 });
});
</script>
<style> 
#panel,#panel1, #flip,#flip1 {
    padding: 5px;
    text-align: center;
    background-color: #e5eecc;
    border: solid 1px #c3c3c3;
}

#panel {
    padding: 50px;
    display: none;
}

#panel1 {
    padding: 50px;
    display: none;
}
</style>
</head>
<body>
	<jsp:include page="header2.html" />
	<h1>Hi, </h1>

${ Aadhar.Name }
	<form>
<%-- <%-- 	<% --%>
<!-- // 		LoginBean login = (LoginBean) request.getAttribute("");//aTTRIBUTE -->
<!-- // 		out.print("Welcome, " + login.getEmail()); -->
<%-- <%-- 	%> --%> 
	

	<button onclick="window.location.href='applyloan.jsp'"
		style="font-size: 16pt; color: white; background-color: #555555; /* border:6px solid #336600; */ padding: 6px"
		type="submit" class="btn btn-default">New Application</button>
	<br>

<div id="flip">loan status</div>
	<div id="panel">
		<p>LoanID :${ Loan.loanId } Aadhar :${ Loan.aadhar } Amount Paid
			:${ Loan.amountPaid } Loan Amount :${ Loan.loanAmount } Tenure :${ Loan.tenure }

		</p>
		

	</div>
	
	<br>

<div id="flip1">Preclosure amount</div>
	<div id="panel1">
	
		<p>Your Preclosure Amount is:</p>
	</div>

	

	<jsp:include page="footer.html" />
	</form>
</body>
</html>