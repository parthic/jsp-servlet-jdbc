<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="static/css/style.css">
<title>update</title>
</head>
<body>
	<p align="right">
		<a href="adminConsole.jsp">click to homepage!!!</a>
		Hello,
		<%=request.getSession(false).getAttribute("Name")%><br>
	</p>
	<form name="update" method="post" action="update2.jsp">
		<table border=0 cellspacing="15px">
			<tr>
				<td>STUDENT ID</td>
				<td><input type="text" name="id" placeholder="enter the id  "></td>
				<!-- enter the first name:
				<input type="text" name="fname">
				<br> enter the last name:
				<input type="text" name="lname"> -->
				<br>
			</tr>
			<tr>
				<td>
					
				</td>
			</tr>
		</table>
		<button value="update" type="submit">UPDATE</button>
	</form>

</body>
</html>