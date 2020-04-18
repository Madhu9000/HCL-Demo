<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<select name="source" >
        <option value=""></option>
        <option value="OSReport">OSReport</option>
        <option value="DBReport">DBReport</option>
		<option value="AppServerReport">AppServerReport</option>
</select>
<input type="submit" name="submit"value="submit"/>
<%String report=request.getParameter("source"); 
System.out.println("In Reports2  appserver===>"+report);%>
	<%if(report == "OSReport"){
		System.out.println("In Reports2  appserver");
   }
   else {%>
      <%
      System.out.println("In Reports2 ending appserver else part");
		%>
   <% } %> 
   
</body>
</html>