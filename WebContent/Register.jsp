<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Registration Form</title>
</head>
<body>
<img src="https://modelsconf19.org/wp-content/uploads/logos/HCL.png" width="" height="40"/>
<center><h1> Register Form</h1>
<form action="registration" method="post">
			<table border="1" width="30%" cellpadding="3">
				<tr>
					<td>First Name</td>
					<td><input type="text" name="first_name" required /></td>
				</tr>
				<tr>
					<td>Last Name</td>
					<td><input type="text" name="last_name" /></td>
				</tr>
				<tr>
					<td>UserName</td>
					<td><input type="text" name="username" required/></td>
				</tr>
					<tr>
					<td>Password</td>
					<td><input type="password" name="password" required/></td>
				</tr>
				<tr>
					<td>Address</td>
					<td><input type="text" name="address" /></td>
				</tr>
				<!-- <tr>
					<td>Contact No</td>
					<td><input type="text" name="contact" /></td>
				</tr> -->
				</table>
			<input type="submit" value="Submit" /></form>
			<table><tr>
                        <td colspan="2">Already registered!! <a href="Login.jsp">Login Here</a></td>
                    </tr></table> </center>
</body>
</html>