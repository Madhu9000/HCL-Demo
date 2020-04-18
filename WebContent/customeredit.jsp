<%@page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@page import="java.util.ArrayList"%>
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
						HCL Unica Customer Edit form</font>
				</center>
			</div>
		</div>
	</nav>
	<form action="./updateCustomer" method="post">
	<%
			// Initialize the database 
									
			Connection conn = OracleDBConnection.getOracleConnection();
				//String sql1 = "SELECT OSTYPE,SYSTEMDB,APPSERVER,ENVTYPE,REGION FROM CUSTOMER_METADATA ";
			
			PreparedStatement ps1 = null;
			String sql1 = "SELECT  NAME FROM CUSTOMERINFO ORDER BY NAME ASC";
			ps1 = conn.prepareStatement(sql1);							
			ResultSet rs1 = ps1.executeQuery();
			
			PreparedStatement ps2 = null;
			String sql2 = "select DISTINCT REGION FROM CUSTOMERINFO";
			ps2 = conn.prepareStatement(sql2);							
			ResultSet rs2 = ps2.executeQuery();
			
			PreparedStatement ps3 = null;
			String sql3 = "SELECT ENVTYPE FROM CUSTOMER_METADATA ";
			ps3 = conn.prepareStatement(sql3);							
			ResultSet rs3 = ps3.executeQuery();
			
			%>
	<table align="center"width:500">
	 <tr>
	 	<td>
		<c:forEach items="${customer}" var="server" >
	         
	         <!-- 	NAME,ENV_TYPE,OS,OSVERSION,UNICAPRODUCTS,UNICA_VERSION,APPSERVER,APPSERVERVERSION,SYS_DB,SYSDBVERSION,USER_DB,\r\n" + 
						"HOTFIXES,LOCALE,INTEGRATIONS,BROWSERS,EXCEPTIONAPPROVAL,SUPPORTEXT,REGION,CREATEDATE -->
			
			<table>
				<tr>
					<td>Customer Name</td>
					<td>
						<input type="text" name="name" value="${server.name}" readonly="readonly">
					</td>
				</tr>
				<tr>
					<td>Customer Country</td>
					<td>
						<input type="text" name="locale" value="${server.locale}"> 
					</td>
				</tr>
				<tr>
					<td>Customer Region </td>
									
						<%-- <input type="text" name="region" value="${server.region}">  --%>
				
					<td><select name="region" >
					
						<option value="12121"></option>
						
						<%while (rs2.next()) {
					String region = rs2.getString("region"); 
									
					%>
						<option value="<%=region%>"><%=region%> </option>
						
						<%} %>
				</td>				
				</tr>
				<tr>
					<td>Type of Environemnt </td>
					<td>
						<input type="text" name="env_type" value="${server.env_type}" readonly="readonly">
					</td>
				</tr>
				<tr>
					<td>Operating System </td>
					<td>
						<input type="text" name="os" value="${server.os}"> 
					</td>
				</tr>
				<tr>
					<td>Operating System Version</td>
					<td>
						 <input type="text" name="osversion" value="${server.osversion}">
					</td>
				</tr>
				<tr>
					<td>Selected Unica Products </td>
					<td>
						<input type="text" name="unica" value="${server.unicaproducts}"> 
					</td>
				</tr>
				<tr>
					<td>Selected Unica Products Version</td>
					<td>
						<input type="text" name="unica_version" value="${server.unica_version}"> <br>
					</td>
				</tr>
				<tr>
					<td>Application Server Type </td>
					<td>
						<input type="text" name="appServer" value="${server.appServer}"> 
					</td>
				</tr>
				<tr>
					<td>Application Server Version </td>
					<td>
						<input type="text" name="appserverversion" value="${server.appserverversion}">
					</td>
				</tr>
				<tr>
					<td>System DataBase Type </td>
					<td>
						<input type="text" name="sys_db" value="${server.sys_db}">
					</td>
				</tr>
				<tr>
					<td>System DataBase Version </td>
					<td>
						<input type="text" name="sysdbversion" value="${server.sysdbversion}">
					</td>
				</tr>
				<tr>
					<td>User DB Type </td>
					<td>
						<input type="text" name="user_db" value="${server.user_db}">
					</td>
				</tr>
				<tr>
					<td>Hotfixes if any</td>
					<td>
						<input type="text" name="hotfixes" value="${server.hotfixes}">
					</td>
				</tr>
				
				<tr>
					<td>Integrations If any </td>
					<td>
						<input type="text" name="integrations" value="${server.integrations}"> 
					</td>
				</tr>
				<tr>
					<td>Customer browsers </td>
					<td>
						<input type="text" name="browsers" value="${server.browser}"> 
					</td>
				</tr>
				<tr>
					<td>Exception Approvals </td>
					<td>
						<input type="text" name="exceptionapproval" value="${server.exceptionapproval}"> 
					</td>
				</tr>
				<tr>
					<td>Customer Support Ext </td>
					<td>
						<input type="text" name="supportext" value="${server.supportext}"> 
					</td>
				</tr>
				
			</table>
			<%-- Customer name : &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
			<input type="text" name="name" value="${server.name}" readonly="readonly"> <br>
	        Type of Environemnt: &nbsp&nbsp <input type="text" name="env_type" value="${server.env_type}" readonly="readonly"> <br>
	        Operating System : &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <input type="text" name="os" value="${server.os}"> <br>
	        Operating System Vers :  <input type="text" name="osversion" value="${server.osversion}"> <br>
	        Selected Unica Products:  <input type="text" name="unica" value="${server.unicaproducts}"> <br>
	        
	        Unica Products Versions :  <input type="text" name="unica_version" value="${server.unica_version}"> <br>
	        Application Server Type :  <input type="text" name="appServer" value="${server.appServer}" > <br>
	        Application Server Vers :  <input type="text" name="appserverversion" value="${server.appserverversion}"> <br>
	        System DataBase Type :  <input type="text" name="sys_db" value="${server.sys_db}"> <br>
	        System DataBase Vers :  <input type="text" name="sysdbversion" value="${server.sysdbversion}"> <br>
	        
	        Unica User DB Type :  <input type="text" name="user_db" value="${server.user_db}"> <br>
	        Hotfixes installed if any :  <input type="text" name="hotfixes" value="${server.hotfixes}"> <br>
	        Customer Country :  <input type="text" name="locale" value="${server.locale}"> <br>
	        Integrations If any :  <input type="text" name="integrations" value="${server.integrations}"> <br>
	        Customer browsers :  <input type="text" name="browsers" value="${server.browser}"> <br>
	        Exception Approvals : <input type="text" name="exceptionapproval" value="${server.exceptionapproval}"> <br>
	        Customer Support Ext :  <input type="text" name="supportext" value="${server.supportext}"> <br>
	        Customer Region :  <input type="text" name="region" value="${server.region}"> <br> --%>
	          
	          
	        
	                                        
	                   
       </c:forEach>
       </td></tr>
       
    </table> <br>
    <center>
			<input type="submit" value="Update"> <br> <br>
  
		</center>	
		</form>	
		<center>   <button><a href=helloWorld.jsp target=''> <font>Home</font></a> </button>
					<button><a href=editCustomer.jsp target=''> <font>Back</font></a> </button>
						</center>			
</body>
</html>