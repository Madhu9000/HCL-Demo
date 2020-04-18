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
<meta charset="ISO-8859-1">
<title>HCL Unica Support</title>
<script>
function myFunction() {
	  var x = document.getElementById("myDIV");
	  if (x.style.display === "none") {
	    x.style.display = "block";
	  } else {
	    x.style.display = "none";
	  }
	} 
	</script>
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
		<img src="C:\Users\sureshvu\Desktop\code\HCLLogo.PNG" width="175px" />
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
								HCL Unica Customers Reports
						</font>		
					</div>
				</div>
			</nav>
		</center>
	
	<%
				// Initialize the database 
			PreparedStatement ps1 = null;
			PreparedStatement ps2 = null;
		/* 	PreparedStatement ps3 = null;
			PreparedStatement ps4 = null;
			PreparedStatement ps5 = null; */
			
			Connection conn = OracleDBConnection.getOracleConnection();
				//String sql1 = "SELECT OSTYPE,SYSTEMDB,APPSERVER,ENVTYPE,REGION FROM CUSTOMER_METADATA ";
			String sql1 = "SELECT SYSTEMDB FROM CUSTOMER_METADATA ";
			String sql2 = "SELECT APPSERVER FROM CUSTOMER_METADATA ";
		
			ps1 = conn.prepareStatement(sql1);
			ps2 = conn.prepareStatement(sql2);
	/* 		ps3 = conn.prepareStatement(sql3);
			ps4 = conn.prepareStatement(sql4);
			ps5 = conn.prepareStatement(sql5); */
				
			ResultSet rs1 = ps1.executeQuery();
			ResultSet rs2 = ps2.executeQuery();
		/* 	ResultSet rs3 = ps3.executeQuery();
			ResultSet rs4 = ps4.executeQuery();
			ResultSet rs5 = ps5.executeQuery(); */
			%>
			
		<TABLE align="center"width:500">	
			<tr>
				<th>Select System DB type</th>
				<td><select name="systemdb">
						<option value=""></option>
						<%while (rs1.next()) {
					String systemdb = rs1.getString("systemdb"); 
				%>
						<option value="<%=systemdb%>"><%=systemdb%></option>
						<%} %>
				</td>
				<td>&nbsp &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp &nbsp</td>
				<th>Select App Server type</th>
				<td><select name="appserver">
						<option value=""></option>
						<%while (rs2.next()) {
					String appserver = rs2.getString("appserver"); 
				%>
						<option value="<%=appserver%>"><%=appserver%></option>
						<%} %>
				</td>
				
			</tr>
			<tr>
			<td><br></td>
			</tr>
			<tr>
				
			</tr>
			
		</TABLE>
		<br> <br>
		<center><button>
			<a href=helloWorld.jsp target=''> <font> Home</font></a>
		</button></center>
		</td>
		</tr>
		</TABLE>
	</form>
</body>
</html>