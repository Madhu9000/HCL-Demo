<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="org.hcl.webapps.connection.OracleDBConnection"%>
<%@page import="org.hcl.webapps.utils.Customerutil"%>
<%@page import="org.hcl.webapps.beans.CustomerMetadata"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert Data</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<img src="https://modelsconf19.org/wp-content/uploads/logos/HCL.png" width="" height="40" />
	<center>
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-bottom">
					<font size="+2" color="white"><h2>Welcome To HCL Unica Support..</h2></font>
				</div>
			</div>
		</nav>
	</center>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-bottom">
				<font size="+1" color="white"><center>
						HCL Unica Customer Stack form</font>
				</center>
			</div>
		</div>
	</nav>
	<!-- Give Servlet reference to the form as an instances  
    GET and POST services can be according to the problem statement-->
	<form id="editProperty" name="editProperty" method="get" action="EditPropertyServlet">
	<!-- <form id="editProperty" name="editProperty" method="get" action="EditPropertyServlet"> -->
		
		<table align="center"width:500">

			Please edit any properties details</em></p>
            Enter Street: <input type="text" name="street" vaue=<td>${customer.name}</td>   /> 
            <br><br> 
            Enter city: <input type="text" name="city"  /> 
            <br><br> 
            
            <%-- <td>${customer.name}</td>         
             <td>${customer.env_type}</td>             
             <td>${customer.os}</td>
             <td>${customer.osversion}</td>
             <td>${customer.unicaproducts}</td> --%>
		</table>
		<br>
		<center>
			<input type="submit" value="Submit"> <br> <br>
			<button>
				<a href=helloWorld.jsp target=''> <font> Home</font></a>
			</button>

		</center>
	</form>
</body>
</html>
