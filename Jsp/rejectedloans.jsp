<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Disqualified Loans</title>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
</head>
<body>
<jsp:include page="header2.html" />
<div align="center">
<h1><mark><font face="cambria">Disqualified Loans</font></mark></h1></div>

<br>
<table>
 <tr>
    <th>Customer Name</th>
    <th>Loan Amount</th>
    <th>Income</th>
    <th>Tenure</th>
    <th>Status</th>
  </tr>
<c:forEach items="${Loans}" var="loan"> 
  <tr>
    <td>${loan.customer.aadhar.name}</td>
    <td>&#8377;${ loan.loanAmount }</td>
    <td>&#8377;${ loan.income }</td>
    <td>${ loan.tenure } years</td>
    <td>${loan.loanStatus }</td>
    <br>
  </tr>
   </c:forEach>
</table>
<jsp:include page="footer.html" />
</body>
</html>