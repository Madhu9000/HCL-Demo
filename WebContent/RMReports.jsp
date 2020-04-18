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
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
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
<div class="container">
                                      
  <div class="dropdown">
    <button class="btn btn-default dropdown-toggle" type="button" id="menu1" data-toggle="dropdown">Tutorials
    <select name="systemdb">
    <option value=""></option>
    <%while (rs1.next()) {
					String ostype = rs1.getString("ostype"); 
					System.out.println("In Reports2 ending ostype......" +ostype);
				%>
						<option value="<%=ostype%>"><%=ostype%></option>
						   <span class="caret"></span></button>
    
						<%} %>
 
    
    </ul>
  </div>
</div>

</body>
</html>
