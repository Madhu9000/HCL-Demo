<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HCL Unica Support</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<img src="https://modelsconf19.org/wp-content/uploads/logos/HCL.png"
		width="" height="40" />
	<form name="form" method="post" action="WelcomeServlet">
		
		<center>
			<nav class="navbar navbar-inverse">
				<div class="container-fluid">
					<div class="navbar-bottom">
						<font size="+2" color="white"><h2>Welcome To HCL Unica Support..</h2></font>
					</div>
				</div>
			</nav>
			<nav class="navbar navbar-inverse">
				<div class="container-fluid">
					<div class="navbar-bottom">
						<font size="+2" color="white"><center>
								HCL Unica Customers</font>
		</center>
		</div>
		</div>
		</nav>
		<TABLE>
			<TR>
				<td>Enter Customer Name :</td>
				<td><input type="text" name="user" placeholder="Customer name"
					required></td>
			</tr>
			<tr>
				<td></td>
				<br>
				<td>
					<TABLE style="background-color: #WCE5B7;" WIDTH="20%">
						<TR>
							<td><input type="submit" value="Submit"></td>
						</TR>

					</TABLE> <br> <br>
					
				</td>
			</tr>
		</TABLE>
	</form>
	<center>
	<button><a href=/HelloWorldJSP > <font> Home</font></a></center>
</body>
</html>