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
<title>Approved Loans</title>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>
<body>
<jsp:include page="header2.html" />
<div align="center">
<h1><font face="cambria"><mark>Approved Loans</mark></font></h1></div>
<br>


<table>
<c:forEach items="${Loans}" var="loan"> 
  <tr>
    <mark><th>Customer Name</th></mark>
    <mark><th>Loan Amount</th></mark>
  <mark><th>Income</th></mark>
    <mark><th>Tenure</th></mark>
    <mark><th>Status</th></mark>
  </tr>
  <tr>
    <td>${loan.customer.aadhar.name}</td>
    <td>&#8377;${ loan.loanAmount }</td>
    <td>&#8377;${ loan.income }</td>
    <td>${ loan.tenure } years</td>
    <td>${loan.loanStatus }</td>
    
  </tr>
   </c:forEach>
</table>


<jsp:include page="footer.html" />
</body>

</html>