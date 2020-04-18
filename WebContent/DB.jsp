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

<button> <a href="OS.jsp">OS Reports</a></button>
<button> <a href="DB.jsp">DB Reports</a> </button>
 <button> <a href="AppServer.jsp">AppServer Reports</a> </button>
</center>
			<img src="C:\Users\sureshvu\Desktop\code\HCLLogo.PNG" width="175px" />
<form name="form" method="post" action="DBReports">

       <%PreparedStatement ps = null;					
			Connection conn = OracleDBConnection.getOracleConnection();
			String sql = "SELECT SYSTEMDB FROM CUSTOMER_METADATA ";
			ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
		%>
<table align="center"width:500">	
			<tr>
				<th>Select DB type</th>
				<td><select name="SYSTEMDB">
						<option value=""></option>
												
						<%while (rs.next()) {
					String SYSTEMDB = rs.getString("SYSTEMDB"); 
				System.out.println("In Reports2 ending systemdb......" +SYSTEMDB);
				%>
						<option value="<%=SYSTEMDB%>"><%=SYSTEMDB%></option>
						<%} %>
						
						
				</td>
		</tr>
	</table>
<center>
	<input type="submit" value="submit"/>
			<button><a href=helloWorld.jsp target=''> <font>
						Home</font></a> </button>
						<button><a href=DB.jsp target=''> <font>Back </font></a> </button>
					
</center>
</form>
</body>
    </html>




 

