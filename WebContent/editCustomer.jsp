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
						HCL Unica Customer Select form</font>
				</center>
			</div>
		</div>
	</nav>
   
	<form name="form" method="post" action="selectCustomer">
	<!-- <form id="editProperty" name="editProperty" method="get" action="EditPropertyServlet"> -->
		<%
			// Initialize the database 
									
			Connection conn = OracleDBConnection.getOracleConnection();
				//String sql1 = "SELECT OSTYPE,SYSTEMDB,APPSERVER,ENVTYPE,REGION FROM CUSTOMER_METADATA ";
			
			PreparedStatement ps1 = null;
			String sql1 = "SELECT  NAME FROM CUSTOMERINFO ORDER BY NAME ASC";
			ps1 = conn.prepareStatement(sql1);							
			ResultSet rs1 = ps1.executeQuery();
			
			PreparedStatement ps2 = null;
			String sql2 = "SELECT ENV_TYPE FROM CUSTOMERINFO ORDER BY NAME";
			ps2 = conn.prepareStatement(sql2);							
			ResultSet rs2 = ps2.executeQuery();
			
			PreparedStatement ps3 = null;
			String sql3 = "SELECT ENVTYPE FROM CUSTOMER_METADATA ";
			ps3 = conn.prepareStatement(sql3);							
			ResultSet rs3 = ps3.executeQuery();
			
			%>

		<!-- 	<caption>
				<font size="+2" color="#1E90FF"><center><h2>Customer Stack form</center></h2></font>
			</caption> -->

		<table align="center"width:500">

		
		<!-- 	<TR>
				<td>Enter Customer Name :</td>
				<td><input type="text" name="user" placeholder="Customer name"
					required></td>
			</tr>
			
			<TR>
							<td><input type="submit" value="Submit"></td>
						</TR> -->
			
			 <tr>			
				<th>Select Customer name</th>
				<td><select name="user">
						<option value=""></option>
						<%while (rs1.next() && (rs2.next())) {
					String name = rs1.getString("name"); 
					String env_type = rs2.getString("env_type");
					
						String res = name + "-" + env_type;		%>
						<option value="<%=res%>"><%=res%> </option>
						
						<%} %>
				</td>				
			</tr> 
			 <%-- <tr>			
				<th>Select Customer name</th>
				<td><select name="user" required>
						<option value=""></option>
						<%while (rs1.next()) {
					String name = rs1.getString("name"); 
									
					%>
						<option value="<%=name%>"><%=name%> </option>
						
						<%} %>
				</td>				
			</tr>
						
			<tr>			
				<th>Select Customer Env</th>
				<td><select name="env1" required>
						<option value=""></option>
						<%while (rs3.next() ) {
					
					String env1 = rs3.getString("envtype");
					
									%>
						<option value="<%=name1%>"><%=name1%> --> <%=env1%></option>
						
						<option value="<%=env1%>"><%=env1%> </option>
						
						<%} %>
				</td>				
			</tr> --%>
			   
			<tr>
				<td><center>
						<input type="submit" value="Submit" >
					</center></td>
			</tr>
	
		</table>
		
		<br>
	</form><center>
	<button><a href=helloWorld.jsp target=''> <font> Home</font></a></center>
</body>
</html>
