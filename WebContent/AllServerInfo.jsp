<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>HCL Unica Support</title>
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
	
			
	<font><table border="1" cellpadding="5" cellspacing="1" >
			<tr>
				<th><font color="red">OSTYPE </font></th>
				<th><font color="red">HOSTNAME</font></th>
				<!-- <th>INFO_REC_DATE</th> -->
				<th><font color="red">LOGININFO</font></th>
				<th><font color="red">UNICAVERSION</font></th>
				<th><font color="red">UNICAPATH</font></th>
				<th><font color="red">WASVERSION</font></th>
				<th><font color="red">WASPATH</font></th>
				<th><font color="red">UNICAURL</font></th>
				<th><font color="red">WASURL</font></th>
				<th><font color="red">OTHERINFO</font></th>
			</tr> </font>
			<c:forEach items="${osList}" var="server" >
          <tr>
             <td>${server.ostype}</td>
             <td>${server.hostname}</td>
             <td>${server.logininfo}</td>
             <td>${server.unicaversion}</td>
             <td>${server.unicapath}</td>             
             <td>${server.wasversion}</td>
             <td>${server.waspath}</td>
             <td>${server.unicaurl}</td>
             <td>${server.wasurl}</td>
             <td>${server.otherinfo}</td>                       
          </tr>
                 
       </c:forEach>
       
    </table> <br>
     <button><a href=helloWorld.jsp target=''> <font>Home</font></a> </button>
						<button><a href=AllServers.jsp target=''> <font>Back </font></a> </button>
		</center>					
</body>
</html>