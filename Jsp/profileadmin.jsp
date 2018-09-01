<%@page import="lti.apnaghar.entity.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Manager Profile</title>
</head>
<body background="admin.jpg">
<jsp:include page="header2.html" />
<h1><font color="black" face="cambnria">Hello</font></h1>
 <%
		Customer user = (Customer) session.getAttribute("Customer");
		if(user!= null) {%>

	<span style="color:black" ><b><font size="5px" face="cambria"><%=user.getAadhar().getName()%></font><hr size="1" color="dodgerblue"></b></span>
	<%
 	} 
 %>  
 <br>

<a href="getLoans.go?status=approved"><font size="5px" style="color:red;" face="Cambria"><b>Existing Loan Details</b></font></a> |<br> 
<a href="getLoans.go?status=rejected"><font size="5px" style="color:red;" face="Cambria"><b>Disqualified Loan Details</b></font></a> |<br>
<a href="getLoans.go?status=pending"><font size="5px" style="color:red;" face="Cambria"><b>Loans Pending for Approval</b></font></a>




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
<br>
<jsp:include page="footer.html" />
</body>
</html>