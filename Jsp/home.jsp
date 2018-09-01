<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="<c:url value="/js/jquery.2.2.4.min.js" />"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Home</title><style>
img {
    opacity: 0.8;
    filter: alpha(opacity=80); /* For IE8 and earlier */
}
</style>

</head>
<body>
	<jsp:include page="header.html" />




	<h1><font face="cambria" size = "5px" color="red"> ${Prompt}</font></h1>



	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner">

			<div class="item active">
				<img src="home3.jpg" style="width: 100%;" id="img">
				<div class="carousel-caption">


					<b><h3 align="top" style="color: black;"><font face="cambria" size = "5px">Zero* Processing Fee on online
						 Home Loans now starting at 8%* p.a.</font> </h3></b>
						<button onclick="window.location.href='loancalculator.jsp'" style="font-size:16pt;color:white;background-color:dodgerblue;/* border:6px solid #336600; */padding:6px" type="submit" class="btn btn-default" > Calculate Loan </button>


				</div>
			</div>

			<div class="item">
			<img src="4.jpg" style="width: 100%;" id="img">
				<div class="carousel-caption">
				
					<b><h3 style="color: black;"><font face="cambria" size = "5px">With a wide range of Loan solutions,
						you can be rest assured of your needs.</font></h3></b>
						<button onclick="window.location.href='loancalculator.jsp'"  style="font-size:16pt;color:white;background-color:dodgerblue;/* border:6px solid #336600; */padding:6px" type="submit" class="btn btn-default" > Calculate Loan </button>

				</div>
			</div>

			<div class="item">
				<img src="1.jpg" alt="New York" style="width: 100%;" id="img">
				<div class="carousel-caption">
					<b><h3 style="color: black;"><font face="cambria" size = "5px">Our new home loan facility can be
						used to purchase ready flats.</font></h3></b>
						<button onclick="window.location.href='loancalculator.jsp'" style="font-size:16pt;color:white;background-color:dodgerblue;/* border:6px solid #336600; */padding:6px"  type="submit" class="btn btn-default" > Calculate Loan </button>

				</div>
			</div>

		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>

 <marquee>Find Loan with the minimal paperwork , quick eligibility checks and competitive interest rates</marquee>
<jsp:include page="footer.html" />

</body>




<script>
function preventBack() {
	window.history.forward();
}
setTimeout("preventBack()", 0);
window.onunload = function() {
	null
};
</script>
</html>