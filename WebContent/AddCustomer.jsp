<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HCL Unica Support</title>
</head>
<body>
	<img src="https://modelsconf19.org/wp-content/uploads/logos/HCL.png"
		width="" height="40" />
	<form name="form" method="post" action="WelcomeServlet">
		<center>
			<font size="+2" color="#1E90FF">
				<h2><%="Welcome To HCL Unica Support !"%></h2>
				<TABLE>
					<TR>
						<td>Unica Vervion :</td>
						<td><input type="text" name="user"></td>
					</tr>
					<TR>
						<td>OS :</td>
						<td><input type="text" name="user"></td>
					</tr>
					<TR>
						<td>App Server :</td>
						<td><input type="text" name="user"></td>
					</tr>
					<TR>
						<td>System DB :</td>
						<td><input type="text" name="user"></td>
					</tr>
					<TR>
						<td>User DB :</td>
						<td><input type="text" name="user"></td>
					</tr>
					<TR>
						<td>WebServer :</td>
						<td><input type="text" name="user"></td>
					</tr>
					<TR>
						<td>Other Info :</td>
						<td><input type="text" name="user"></td>
					</tr>
					<tr>
						<td></td>
						<br>
						<td>
							<TABLE style="background-color: #WCE5B7;" WIDTH="20%">
								<TR>
									<td><input type="submit" value="Add"></td>
								</TR>

							</TABLE> <br>
						<br>
							<button>
								<a href=helloWorld.jsp target=''> <font>Back to Home</font></a>
							</button> <!-- <a href=helloWorld.jsp target=''> <font size="+2"
								color="green">Back to Home</font></a> -->
						</td>
					</tr>
				</TABLE>
	</form>
</body>
</html>