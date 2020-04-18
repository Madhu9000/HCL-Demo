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
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" 	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<img src="https://modelsconf19.org/wp-content/uploads/logos/HCL.png" width="" height="40"/>
	<form name="form" method="post" action="getServerInfo">
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
					<font size="+2" color="white">
							HCL Unica Servers</font>
					
				</div>
			</div>
		</nav>
		<%
			System.out.println("In isert_Latest..........");
				// Initialize the database 
			PreparedStatement ps1 = null;
						
			Connection conn = OracleDBConnection.getOracleConnection();
				//String sql1 = "SELECT OSTYPE,SYSTEMDB,APPSERVER,ENVTYPE,REGION FROM CUSTOMER_METADATA ";
			String sql1 = "SELECT OSTYPE FROM CUSTOMER_METADATA ";
			
			ps1 = conn.prepareStatement(sql1);
				
			ResultSet rs1 = ps1.executeQuery();
			%>
		<TABLE>
		<tr>
				<th>Select OS from dropdown</th>
				<td><select name="operatingSystem" required>
						<option value=""></option>
						<%while (rs1.next()) {
					String ostype = rs1.getString("ostype"); 
				%>
						<option value="<%=ostype%>"><%=ostype%></option>
						<%} %>
				</td>
			</tr>
			
		</TABLE>  <br><br>
	<center>
			<input type="submit" name="submit"value="submit"/>
			<button><a href=helloWorld.jsp target=''> Home </a> </button>
	</center>
	</form>

</body>
</html>