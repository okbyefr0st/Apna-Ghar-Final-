<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head><title>Loan Calculator</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="<c:url value="/js/jquery.2.2.4.min.js" />"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" type="text/css" href="temp1.css">

<script src="temp2.js"></script>
<script src="temp3.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
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
<title>Max Loan Disbursible</title>
<style type="text/css">
.form-style-6{
    font: 95% Arial, Helvetica, sans-serif;
    max-width: 400px;
    margin: 10px auto;
    padding: 16px;
    background: #F7F7F7;
    float:center;
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
</head>
<body  style="background-image:url(calc.jpg) ">
	<jsp:include page="header.jsp" />



		<form class="form-style-6" >
		<h1><font face="cambria" size="7 px" >Maximum Loan Disbursible Calculator</font></h1>

		<b><font face="cambria" size="4 px" >Annual Income</font></b> <span> <br> &#8377;<input type="text"
			name="salary" placeholder="Annual Income" pattern=[0-9]{4,8} id="s" />
			<b><font face="cambria" size="4 px" >Rate of interest</font></b> <br> <input type="text" name="interest"
			size="32" value="8" readonly id="r" />

			<div class="slidecontainer">
				<b><font face="cambria" size="4 px" >Tenure in years</font></b> <br> <input type="range" min="5"
					max="20" value="10" class="slider" id="t">
				<p><font face="cambria" size="4 px" >
					Tenure(in years): <span id="val"></span></font>
				</p>

				<p><font face="cambria" size="4 px" >
					Maximum Loan Dispursible : &#8377;<span id="max"></span></font>
				</p>

			</div>
			</form>
	
	
	<form action="home.jsp">
	<input type="submit" value="Back" align="center">
	</form>

	<script>
		var slider = document.getElementById("t");
		var output = document.getElementById("val");
		output.innerHTML = slider.value; // Display the default slider value

		// Update the current slider value (each time you drag the slider handle)
		slider.oninput = function() {
			output.innerHTML = this.value; //Display dynamic slider value

			var salary = document.getElementById("s");
			var rate = document.getElementById("r");
			var maximum = document.getElementById("max");

			var m = rate.value / (12 * 100);
			var n = slider.value * 12;

			var sal = ((salary.value) * 0.4) / 12;
			var num = ((Math.pow(+1 + +m, n)) - 1);
			var numf = num * sal;
			var deno = (Math.pow(+1 + +m, n));
			var denof = deno * m;

			maximum.innerHTML = Math.round(numf / denof);

		}
	</script>
	
	
	
	<br>
	<br>

	
	<jsp:include page="footer.html" />
</body>

</html>
