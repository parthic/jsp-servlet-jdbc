<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="static/css/style.css">
<title>VIEW</title>
</head>
<body>
<p align="right">
		<a href="adminConsole.jsp">click to homepage!!!</a>
		Hello,
		<%=request.getSession(false).getAttribute("Name")%><br>
	</p>
<form name="view" method="post" action="view">
		<table border=0 cellspacing="15px">
			<tr>
				<td>STUDENT ID</td>
				<td><input type="text" name="id" placeholder="enter the id  "></td>
			</tr>
			<tr>
				<td>
					
				</td>
			</tr>
		</table>
		<button value="view" type="submit">VIEW</button>
	</form>
</body>
</html>