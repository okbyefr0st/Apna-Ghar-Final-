<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/bootstrap.min.css"/>
<link rel="stylesheet" href="style1.css"/>
<script src="<c:url value="/js/jquery.2.2.4.min.js" />" ></script> 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Apply for Loan</title>
</head>
<style>
        .slidecontainer {
            width: 100%;
        }
        
        .slider {
            -webkit-appearance: none;
            width: 50%;
            height: 15px;
            border-radius: 5px;
            background: #d3d3d3;
            outline: none;
            opacity: 0.7;
            -webkit-transition: .2s;
            transition: opacity .2s;
        }
        
        .slider:hover {
            opacity: 1;
        }
        
        .slider::-webkit-slider-thumb {
            -webkit-appearance: none;
            appearance: none;
            width: 25px;
            height: 25px;
            border-radius: 50%;
            background: #4CAF50;
            cursor: pointer;
        }
        
        .slider::-moz-range-thumb {
            width: 25px;
            height: 25px;
            border-radius: 50%;
            background: #4CAF50;
            cursor: pointer;
        }
        
        </style>
<body style="background-color:#85C1E9;">
	<jsp:include page="header2.html" />
<h2 align="center"><font face="cambria" size="7 px"  >Apply for Loan</font></h2>

<form action="calculate.go">
<font color="crimson">${Invalid}</font>
  <div id="calc-box" align="center">
  <label for="panId" name="panId"><b>Email<font color="red"> *</font> :</b></label>
        <br>
   <input type="text" name="email" value=<% out.println(request.getParameter("email"));%> readonly="readonly" />
  <br>
  
  <b>Annual Income:</b><br>
  <input type="text" name="income" placeholder="Annual income" pattern="[0-9]{1,10}" required>
  <br>
  <b>Occupation:</b><br>
  <input type="text" name="occupation" placeholder="Occupation" required>
  <br>

 <b>Loan Amount</b><span><br><input type="text" name="loanAmount" placeholder="Loan amount" pattern=[0-9]{5,8} id="loanAmount"/ required>

<br><input type="hidden" name="interest" size="32" value="8" readonly required id="r"/>
<b>Tenure:</b><br>
  <input type="number" name="tenure" placeholder="Tenure" min="1" max="20" required><br>
  
  <b>Your Property Name:</b><br>
  <input type="text" name="propertyName" placeholder="Property Name"  required>
  <br>
  
  <b>Your Property Value:</b><br>
  <input type="text" name="propertyValue" placeholder="Property Value" pattern="[0-9]{1,10}" required>
  <br>
      
  <b>RERA Number:</b><br>
  <input type="text" name="reraNumber" placeholder="RERA number" pattern="([P]{1})([0-9]{11})" required>
  <br>    
         <br>
               
                  
  <input type="submit" class="button button5" value="Apply Loan"  ><br><br><br>
  
  
  
  
 
 
</div>
</form>


	
	 <form action="logout.go">
    <input type="submit"  name="submit" class="button butto5"id="button" value="Logout">
  </form> 
<jsp:include page="footer.html" />
</body>
</html>
