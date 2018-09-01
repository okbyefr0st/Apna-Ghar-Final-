<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Upload Documents</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="style1.css">
<style type="text/css">
.form-style-6{
    font: 95% Arial, Helvetica, sans-serif;
    max-width: 400px;
    margin: 10px auto;
    padding: 16px;
    background: #F7F7F7;
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
<script>
	function togglePayslip() {
// 		window.alert('Pressing this button will enable the payslip section');
		document.getElementById('polo').style.display = 'block';
		
	}
	function disablePayslip(){
		document.getElementById('polo').style.display = 'none';
	}
</script>

<script language="JavaScript">
	var formOK = false;

	function validatePDF(objFileControl) {
		var file = objFileControl.value;
		var len = file.length;
		var ext = file.slice(len - 4, len);
		if (ext.toUpperCase() == ".PDF") {
			formOK = true;
		} else {
			formOK = false;
			alert("Only PDF files allowed.");
		}
	}
</script>

</head>
<body style="background-image:url(profile.jpg) ">
	<jsp:include page="header2.html" />
	
		
	<div class="container mt-3">
		<form   class="form-style-6"  action="loanaccepted.jsp" method="post">
	<h2>Upload Documents</h2>
			<p>	<font face="cambria">Aadhaar:</font></p>
			<div class="custom-file mb-3">
				<input type="file" onchange="validatePDF(this)"
					class="custom-file-input" id="customFile" name="filename"
					accept="application/pdf" required>
<!-- 
				<button onclick="myFunction()" type="button" class="btn btn-primary">Upload</button>
				<p id="demo"></p>

				<script>
					function myFunction() {
						document.getElementById("demo").innerHTML = "Uploaded successfully";
					}
				</script> -->

			</div>
			<div class="custom-file mb-3">
				<p>	<font face="cambria">Pan :</font></p>
				<input type="file" id="myFile" onchange="validatePDF(this)"
					name="filename2" accept="application/pdf" required>

				
			</div>

			<p>	<font face="cambria">Occupation:</font></p>
			
			
			<input type="radio" name="business" value="business" onclick="disablePayslip()"> Own
			Business<br>
			<br> <input type="radio" name="business" onclick="togglePayslip()"
				id="payslipButton">Service<br> <br>

			 <div id="polo" style="display: none">
				<p>	<font face="cambria">Payslip:</font></p>
				<input type="file" id="myFile" onchange="validatePDF(this)" name="filename3" accept="application/pdf" required> <label 
				class="custom-file-label" for="customFile"></label>
				
			</div>

			<br>
				<div class="custom-file mb-3">
					<button type="button" onclick="myFunction3()"
						class="btn btn-primary">Upload</button>
					<p id="demo5"></p>
					<script>
						function myFunction3() {
							document.getElementById("demo5").innerHTML = " Documents Uploaded successfully";
						}
					</script>
				</div>
				<div class="custom-file mb-3">
					<button type="submit"  onclick="window.location.href='loanaccepted.jsp'" name="submit"
						class="btn btn-primary">Submit</button>
					
				</div>
		</form>
</div>
	<jsp:include page="footer.html" />

</body>
</html>
