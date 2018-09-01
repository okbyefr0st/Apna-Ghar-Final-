<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {background-color: #f2f2f2;}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Loan Pending for Approval</title>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>
<body>
<jsp:include page="header2.html" />
<div align="center">
<h1><mark><font face="cambria"> Loan Pending for Approval</font></mark></h1></div>
<br>
<table>
<tr>
    <th><mark>Customer Name</mark></th>
    <th><mark>Loan Amount</mark></th>
    <th><mark>Income</mark></th>
    <th><mark>Tenure</mark></th>
    <th><mark>Action</mark></th>
  </tr>
<c:forEach items="${Loans}" var="loan"> 
  <tr>
    <td>${loan.customer.aadhar.name}</td>
    <td>&#8377;${ loan.loanAmount }</td>
    <td>&#8377;${ loan.income }</td>
    <td>${ loan.tenure } years</td>
    <td><a href="decision.go?action=approved&id=${loan.loanId}">Approve</a>| 
		<a href="decision.go?action=rejected&id=${loan.loanId}">Reject</a></td>
  </tr><br><br>
   </c:forEach>
</table>

<jsp:include page="footer.html" />
</body>
</html>