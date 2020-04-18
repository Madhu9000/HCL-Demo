<!DOCTYPE html>
<html>
<head>
<title>Insert Data</title>
</head>
<body >
<img src="https://modelsconf19.org/wp-content/uploads/logos/HCL.png" width="" height="40"/>
	<!-- Give Servlet reference to the form as an instances  
    GET and POST services can be according to the problem statement-->
	<form action="./InsertData1" method="post">
		<table  align="center" width="600" >
		<caption><font size="+2" color="#1E90FF"><h2>Customer Stack form</h2></font></caption>
			<tr>
				<th>Enter Customer name</th>
				<td><input type="text" name="name" id="fn1" maxlength="10"
					title="Customer name" placeholder="Customer name"
					required /></td>
			</tr>
			<tr>
				<th>Enter Customer SPOC</th>
				<td><input type="text" name="spoc" /></td>
			</tr>
			<tr>
				<th>Enter Env Type</th>
				<td><input type="text" name="env_type" /></td>
			</tr>
			<tr>
				<th>Enter Unica Version</th>
				<td><input type="text" name="unica_version"  required/></td>
			</tr>
			<tr>
				<th>Enter OS Version</th>
				<td><input type="text" name="os_version" /></td>
			</tr>
			<tr>
				<th>Enter Application Server Info</th>
				<td><input type="test" name="appserver" required /></td>
			</tr>
			<tr>
				<th>Enter System DB Info</th>
				<td><input type="test" name="sys_db" required /></td>
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
				<th>Enter Customer Locale</th>
				<td><input type="text" name="locale" /></td>
			</tr>
			<tr>
				<th>Enter Integrations if any</th>
				<td><input type="text" name="integrations" /></td>
			</tr>
			<tr>
				<th>Enter Customer Region</th>
				<td><input type="text" name="region" required /></td>
			</tr>
			<tr>
				<br />
				<br />
				<br /></tr>
		</table>
		<br>
		<br>
		<center>
			<input type="submit" value="Submit"> <br> <br>  
			<button><a href=helloWorld.jsp target=''> <font> Home</font></a> </button>
			
		</center>
	</form>
</body>
</html>
