<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<style>
table, th, td {
  border: 1px solid black;
}
</style>
<meta charset="ISO-8859-1">
<title>HCL Unica Support</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" 	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script 	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script 	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>


<script Language="javascript">
function TableToExcel()
{
	console.log("Hello, World!");
var strCopy = document.getElementById("MyTable").innerHTML;
window.clipboardData.setData("Text", strCopy);
var objExcel = new ActiveXObject ("Excel.Application");
objExcel.visible = true;
 
var objWorkbook = objExcel.Workbooks.Add;
var objWorksheet = objWorkbook.Worksheets(1);
objWorksheet.Paste;
}
</script>
<body>
	<img src="https://modelsconf19.org/wp-content/uploads/logos/HCL.png"
		width="" height="40" />
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
						HCL Unica Reports</font>
				</center>
			</div>
		</div>
	</nav>
		<p align="right">
			<input type="button" onclick="TableToExcel()" value="Export to Excel">
		</p>
		<!-- <button id="demo" style="background-color: lightgreen; height: 50px; width: 100px" onclick="myFunction()"> EXPORT </button></p> -->
		<div id="MyTable">
			<table width="100%" border="10" cellpadding="20" cellspacing="30">
				<tr>
					<th><font color="red">NAME </font></th>
					<th><font color="red">ENVTYPE</font></th>
					<th><font color="red">OS</font></th>
					<th><font color="red">OSVERS</font></th>
					<th><font color="red">UNICAPROD</font></th>
					<th><font color="red">UNICA_VERSION</font></th>
					<th><font color="red">SYSTEMDB</font></th>
					<th><font color="red">SYSDB VERSION</font></th>
					<th><font color="red">APPSERVER</font></th>
					<th><font color="red">APPSERVER VERSION</font></th>
					
					
				</tr>
				<c:forEach items="${customerList}" var="customer">
					<tr>
						<td>${customer.name}</td>
						<td>${customer.env_type}</td>
						<td>${customer.os}</td>
						<td>${customer.osversion}</td>
						<td>${customer.unicaproducts}</td>
						<td>${customer.unica_version}</td>
						<td>${customer.sys_db}</td>
						<td>${customer.sysdbversion}</td>
						<td>${customer.appServer}</td>
						<td>${customer.appserverversion}</td>
						
					</tr>

				</c:forEach>

			</table>
			<br>
		</div>
		<input type=button value="Export Table" onClick="TableToExcel()">

		<button>
			<a href=helloWorld.jsp target=''> <font> Home</font></a>
		</button>
		<button>
			<a href=Reports3.jsp target=''> <font>Back </font></a>
		</button>
	</center>
</body>
</html>