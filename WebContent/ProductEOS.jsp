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
<meta charset="ISO-8859-1">
<title>HCL Unica Support</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" 	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet"  href="https://cdn.datatables.net/1.10.7/css/jquery.dataTables.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://cdn.datatables.net/1.10.7/js/jquery.dataTables.min.js"></script>
<script src="jquery.table2excel.js"></script>
<link rel="stylesheet" href="style.css">
<script src="script.js"></script>
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
						<font size="+2" color="white"><h2>Welcome To HCL Unica
								Support..</h2></font>
					</div>
				</div>
			</nav>
			<nav class="navbar navbar-inverse">
				<div class="container-fluid">
					<div class="navbar-bottom">
						<font size="+2" color="white"><center>HCL Unica
								Product EOS</font>
					</div>
				</div>
			</nav>
		</center>
	
		<!-- <button id="demo" style="background-color: lightgreen; height: 50px; width: 100px" onclick="myFunction()"> EXPORT </button></p> -->

		<%
			System.out.println("In isert_Latest..........");
			// Initialize the database 
			PreparedStatement ps = null;

			Connection conn = OracleDBConnection.getOracleConnection();

			String sql = "SELECT * FROM PRODUCTEOS ";

			ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();
		%>

		<div id="MyTable">
	
			<table id="example" border="1" cellpadding="5" cellspacing="1" align="center"width:500" >
			
				<tr>
					<th width="35%"><font color="red">Product Name </font></th>
					<th width="35%"><font color="red">Product Version </font></th>
					<th width="15%"><font color="red">EOS </font></th>
				</tr>
				
				<tr>
					
						<%
							try {
								while (rs.next()) {
							%>
					<td><%=rs.getString("PRODUCTFAMLIY")%></td>
					<td><%=rs.getString("PRODUCTNAME")%></td>
					<td><%=rs.getString("EOS")%></td>
					
				</tr>
				<%
					}
					} catch (Exception e) {
						e.printStackTrace();
					}
				%>				
			</table>
		</div>

	</form>

	<center> <br>
					
		
		
		<button type="button" class="btn btn-info btn" data-toggle="modal" data-target="#myModal">Add Products EOS</button>
		<form action="./InsertProductEOS" method="post">			
	<div class="modal fade" id="myModal" role="dialog">
    
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Adding Product EOS</h4>
        </div>
        <div class="modal-body">
                
               
                    <div class="form-group">
                        <input type="text" class="form-control" name="Productname" placeholder="Enter Product Name" required>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" name="version" placeholder="Enter Product Version" required>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" name="eos" placeholder="Enter Product EOS" required>
                    </div>
                    
              
               
                
            </div>
            <button type="submit" class="btn btn-primary">Save </button>
      </div>
      
    </div>
      
  </div>

    </form>
		<button type="button" class="btn btn-info btn" data-toggle="modal" data-target="#myModal">
		<a href=helloWorld.jsp target=''> Home</a></button>
						
	</center>
</body>
</html>