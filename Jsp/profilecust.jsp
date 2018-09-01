<%@page import="lti.apnaghar.entity.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style1.css">
<link rel="stylesheet" type="text/css" href="style.css">

<title>Profile Page</title>


</head>

<body style="background-image:url(profile.jpg)">

	<jsp:include page="header2.html" />
	<br>
	<br>
        <%
		Customer user = (Customer) session.getAttribute("Customer");
		if(user!= null) {%>

	<span style="color:red" ><b>Hey <%=user.getAadhar().getName()%><hr size="1" color="crimson"></b></span>
	<%
 	} 
 %>    
 <font color="crimson">${Invalid}</font>
 
<form action="status.go" method="post">
       <div style="position:relative;
        margin:0 auto;
        clear:left;
        height:auto;
        z-index: 0;
        text-align:left;">

	<label class="cambria"><span><font face="cambria" size="4 px" >Loan Status:</font></span></label>
	 <input type="hidden" name="email" value=<% out.println(request.getParameter("email"));%>/>
        <br>
<!-- 		loanid<input type="number" name="loan"> -->
 <button type="submit"  name="submit" class ="button button5" id="button" ><font face="cambria" size="4 px" ><span>Loan Status</span><FONT></FONT></button>
 </form>
 <form action="panvalidate.go" method="post">
        <br><br><br>
    <label  ><font face="cambria">Apply Loan:</font></label><br>
     <input type="hidden" name="email" value=<% out.println(request.getParameter("email"));%> />
     <button type="submit"  name="submit" class ="button button5"   id="button" ><font face="cambria" size="4 px" ><span>Apply Loan</span></font></button>
     </form>

 <form action="preclosure.go" method="post">
     <br><br><br>
 <label class="cambria"><font face="cambria" size="4 px" ><span>Pre-Closure:</span></font></label><br>
  <input type="hidden" name="email" value=<% out.println(request.getParameter("email"));%>>
  <button type="submit"  name="submit" class ="button button5" id="button" ><font face="cambria" size="4 px" ><span>Pre-Closure</span></font></button>
  </form>
  
  
 </div>

</div>

    		<jsp:include page="footer.html" /> 
</body>
  
</html>