<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="org.hcl.webapps.connection.OracleDBConnection"%>
<%@page import="org.hcl.webapps.utils.Customerutil"%>
<%@page import="org.hcl.webapps.beans.OsInfo"%>
<%@page import="java.util.List"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Drop Downlist</title>
</head>
<body>
	<form action="#">

<%

	// Initialize the database 
	String OSName=request.getParameter("osname");
	System.out.println("OS type selected is.." +OSName);

	PreparedStatement ps = null;
      Connection conn = OracleDBConnection.getOracleConnection();
      String sql = "SELECT OSNAME FROM OS_INFO ";

     
      ps = conn.prepareStatement(sql);
      ResultSet rs = ps.executeQuery();  
 %>
 
<p>Select Name :
<select>
<%
while(rs.next())
{
String osname = rs.getString("osname"); 
%>
<option value="<%=osname %>"><%=osname %></option>
<%
}
%>




		</select>
		</p>

	</form>
</body>
</html>