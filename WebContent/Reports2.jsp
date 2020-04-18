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
      <title>tableToExcel Demo</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" 	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script 	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script 	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script Language="javascript">
function myOS() {
  var x = document.getElementById("myOS");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
}
function myDB() {
	  var x = document.getElementById("myDB");
	  if (x.style.display === "none") {
	    x.style.display = "block";
	  } else {
	    x.style.display = "none";
	  }
	}
function myAppServer() {
	  var x = document.getElementById("myAppServer");
	  if (x.style.display === "none") {
	    x.style.display = "block";
	  } else {
	    x.style.display = "none";
	  }
	}
</script>
</head>
 
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
	</center>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-bottom">
				<font size="+2" color="white"><center>
						HCL Unica Reports</font>
				</center>
			</div>
		</div>
	</nav>
	<center>		
<button onclick="myOS()">OS Reports</button>
<button onclick="myDB()">DB Reports</button>
<button onclick="myAppServer()">AppServer Reports</button>
</center>
	<form name="form" method="post" action="OSReports">
		<img src="C:\Users\sureshvu\Desktop\code\HCLLogo.PNG" width="175px" />
	<%
			//System.out.println("In Reports2 starting......");
		
			PreparedStatement ps1 = null;
			PreparedStatement ps2 = null;
			PreparedStatement ps3 = null;
					
			Connection conn = OracleDBConnection.getOracleConnection();
		//	System.out.println("In Reports2 starting......");
			String sql1 = "SELECT OSTYPE FROM CUSTOMER_METADATA ";
			String sql2 = "SELECT SYSTEMDB FROM CUSTOMER_METADATA ";
			String sql3 = "SELECT APPSERVER FROM CUSTOMER_METADATA ";
		
			ps1 = conn.prepareStatement(sql1);
			ps2 = conn.prepareStatement(sql2);
			ps3 = conn.prepareStatement(sql3);
					
			ResultSet rs1 = ps1.executeQuery();
			ResultSet rs2 = ps2.executeQuery();
			ResultSet rs3 = ps3.executeQuery();
		%>
<div id="myOS"  style="display:none">
	<table align="center"width:500">	
			<tr>
				<th>Select OS type</th>
				<td><select name="ostype">
						<option value=""></option>
												
						<%while (rs1.next()) {
					String ostype = rs1.getString("ostype"); 
					System.out.println("In Reports2 ending ostype......" +ostype);
				%>
						<option value="<%=ostype%>"><%=ostype%></option>
						<%} %>
						
						
				</td>
		</tr>
	</table>
	</div>
	<div id="myDB"  style="display:none">
	<table align="center"width:500">	
			<tr>
				<th>Select DB type</th>
				<td><select name="systemdb">
						<option value=""></option>
												
						<%while (rs2.next()) {
					String systemdb = rs2.getString("systemdb"); 
				System.out.println("In Reports2 ending systemdb......" +systemdb);
				%>
						<option value="<%=systemdb%>"><%=systemdb%></option>
						<%} %>
						
						
				</td>
		</tr>
	</table>
	</div>
	
	<div id="myAppServer"  style="display:none">
	<table align="center"width:500">	
			<tr>
				<th>Select AppServer type</th>
				<td><select name="appserver">
						<option value=""></option>
												
						<%while (rs3.next()) {
					String appserver = rs3.getString("appserver"); 
					System.out.println("In Reports2 ending appserver......" +appserver);
				%>
						<option value="<%=appserver%>"><%=appserver%></option>
						<%} %>
						
						
				</td>
		</tr>
	</table>
	</div>
<center>
	<input type="submit" value="submit"/>
			<button><a href=helloWorld.jsp target=''> <font>
						Home</font></a> </button>
						<button><a href=Reports2.jsp target=''> <font>Back </font></a> </button>
<br><br>

		</form>
</body>
    </html>




 

