<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="static/css/style.css">
<title>create</title>
</head>
<body>
	<p align="right">
		<a href="adminConsole.jsp">click to homepage!!!</a>
		Hello,
		<%=request.getSession(false).getAttribute("Name")%><br>
	</p>
	<form name="register" method="post" action="create">
		<table border=0 cellspacing="15px">
			<tr>
				<td>FIRST NAME</td>
				<td><input type="text" name="fname"
					placeholder="enter the firstname " required></td>

			</tr>
			<tr>
				<td>LAST NAME</td>
				<td><input type="text" name="lname"
					placeholder="enter the lastname "required></td>
			</tr>
			<tr>
				<td>STUDENT ID </td>
				<td><input type="text" name="id"
					placeholder="enter the id  "required></td>
			</tr>
			 <tr>
				<td>PHONE NO</td>
				<td><input type="text" name="phno"
					placeholder="enter the phone no "required></td>
			</tr>
			<tr>
				<td>ADDRESS</td>
				<td><input type="text" name="address"
					placeholder="enter the address " required></td>
			</tr>
			<tr>
				<td>COURSE</td>
				<td><input type="text" name="course"
					placeholder="enter the course " required></td>
			</tr>
			<tr>
			<td>
			
			</td>
			</tr>
		</table>
		<button value="create" type="submit"> CREATE</button>
	</form>


</body>
</html>