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
	<form action="./InsertData1" method="post">
		<%
			System.out.println("In isert_Latest..........");
				// Initialize the database 
			PreparedStatement ps1 = null;
			PreparedStatement ps2 = null;
			PreparedStatement ps3 = null;
			PreparedStatement ps4 = null;
			PreparedStatement ps5 = null;
			
			Connection conn = OracleDBConnection.getOracleConnection();
				//String sql1 = "SELECT OSTYPE,SYSTEMDB,APPSERVER,ENVTYPE,REGION FROM CUSTOMER_METADATA ";
			String sql1 = "SELECT OSTYPE FROM CUSTOMER_METADATA ";
			String sql2 = "SELECT ENVTYPE FROM CUSTOMER_METADATA ";
			String sql3 = "SELECT SYSTEMDB FROM CUSTOMER_METADATA ";
			String sql4 = "SELECT APPSERVER FROM CUSTOMER_METADATA ";
			String sql5 = "SELECT REGION FROM CUSTOMER_METADATA ";

			ps1 = conn.prepareStatement(sql1);
			ps2 = conn.prepareStatement(sql2);
			ps3 = conn.prepareStatement(sql3);
			ps4 = conn.prepareStatement(sql4);
			ps5 = conn.prepareStatement(sql5);
				
			ResultSet rs1 = ps1.executeQuery();
			ResultSet rs2 = ps2.executeQuery();
			ResultSet rs3 = ps3.executeQuery();
			ResultSet rs4 = ps4.executeQuery();
			ResultSet rs5 = ps5.executeQuery();
			%>

		<!-- 	<caption>
				<font size="+2" color="#1E90FF"><center><h2>Customer Stack form</center></h2></font>
			</caption> -->

		<table align="center"width:500">

			<tr>
				<th>Enter Customer name </th>
				<td><input type="text" name="name" id="fn1" 
					title="Customer name" placeholder="Customer name" required /></td>
			</tr><br><br>
			<tr>
				<th>Enter Customer Country</th>
				<td><input type="text" name="locale" /></td>
			</tr>
			<tr>
				<th>Select Customer Region</th>
				<td><select name="region">
						<option value=""></option>
						<%while (rs5.next()) {
					String region = rs5.getString("region"); 
				%>
						<option value="<%=region%>"><%=region%></option>
						<%} %>
				</td>
			</tr>
			<tr>
				<th>Select Environment </th>
				<td><select name="envtype">
						<option value=""></option>
						<%while (rs2.next()) {
					String envtype = rs2.getString("envtype"); 
				%>
						<option value="<%=envtype%>"><%=envtype%></option>
						<%} %>
				</td>
			</tr>

			<tr>
				<th>Select OS from dropdown</th>
				<td><select name="ostype">
						<option value=""></option>
						<%while (rs1.next()) {
					String ostype = rs1.getString("ostype"); 
				%>
						<option value="<%=ostype%>"><%=ostype%></option>
						<%} %>
				</td>
			</tr>
			<tr>
				<th>Enter OS Version</th>
				<td><input type="test" name="osversion"  /></td>
			</tr>
			<tr>
				<th>Select Products</th>
				<td>
				<input type="checkbox" name="unica" value="Platform"> HCL Platform
				<input type="checkbox" name="unica" value="Campaign"> HCL Campaign
				<input type="checkbox" name="unica" value="Optimize"> HCL Optimize <br>
				<input type="checkbox" name="unica" value="Interact"> HCL Interact &nbsp
				<input type="checkbox" name="unica" value="Plan">     HCL MO &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				<input type="checkbox" name="unica" value="udm">      HCL Distributed Marketing
				
				</td>
			</tr>	 

			<tr>
				<th>Enter Unica Version</th>
				<td><input type="text" name="unica_version" required /></td>
			</tr>

			<tr>
				<th>Select Application Server</th>
				<td><select name="appserver">
						<option value=""></option>
						<%while (rs4.next()) {
					String appserver = rs4.getString("appserver"); 
				%>
						<option value="<%=appserver%>"><%=appserver%></option>
						<%} %>
				</td>
			</tr>
			<tr>
				<th>Enter Application Server Version &nbsp</th>
				<td><input type="test" name="appserverversion" required /></td>
			</tr>
			<tr>
				<th>Select System DB</th>
				<td><select name="systemdb">
						<option value=""></option>
						<%while (rs3.next()) {
					String systemdb = rs3.getString("systemdb"); 
				%>
						<option value="<%=systemdb%>"><%=systemdb%></option>
						<%} %>
				</td>
			</tr>
			<tr>
				<th>Enter System DB Version</th>
				<td><input type="test" name="sysdbversion" required /></td>
			</tr>
			<tr>
				<th>Enter User DB Info</th>
				<td><input type="text" name="user_db" /></td>
			</tr>
			<tr>
				<th>Enter Hotfixes Info</th>
				<td><input type="text" name="hotfixes" /></td>
			</tr>
			
			<tr>
				<th>Enter Integrations if any</th>
				<td><input type="text" name="integrations" /></td>
			</tr>
			<tr>
				<th>Enter Customer Browsers</th>
				<td><input type="text" name="browsers" /></td>
			</tr>
			<tr>
				<th>Enter Customer Exception Req</th>
				<td><input type="text" name="exceptionapproval" /></td>
			</tr>
			<tr>
				<th>Enter Customer Support Ext</th>
				<td><input type="text" name="supportext" /></td>
			</tr>
			
		</table>
		<br>
		<center>
			<input type="submit" value="Submit"> <br> <br>
		</center>
	</form>
	<center><button>
				<a href=helloWorld.jsp target=''> <font> Home</font></a>
			</button></center>
</body>
</html>
