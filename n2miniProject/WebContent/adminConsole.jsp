<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="static/css/style.css">
<title>Admin page</title>
</head>
<body>
	<%
		
	%>
	<h2>Admin Console</h2>
	<p align="right">
		Hello,
		<%=request.getSession(false).getAttribute("Name")%><br> <br>
		<%
			Date lastAccessTime = new Date(session.getLastAccessedTime());
			out.println(lastAccessTime);
		%><br> <br><br><a href='logout.jsp'>Log out</a>
		</p>
		<form name="crud" method="post"  >
		<table border=0 cellspacing="15px">
		<tr>
		<td><a href="create.jsp">CREATE</a></td>
		</tr>
		<tr>
		<td><a href="update.jsp">UPDATE</a></td>
		</tr>
		<tr>
		<td><a href="view.jsp">VIEW</a></td>
		</tr>
		<tr>
		<td><a href="delete.jsp">DELETE</a></td>
		</tr>
	

</body>
</html>