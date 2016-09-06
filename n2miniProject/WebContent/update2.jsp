<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.io.*"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>update2</title>
</head>
<link rel="stylesheet" href="../css/style.css">
<body>
<form name="delete" method="post" action="update">
<% PrintWriter out1 = response.getWriter();
String id = request.getParameter("id"); %>
Update the values for id <%out.write(id); %>
<br>
<label><b>Re-Enter ID</b></label>
 <input type = "text" name="id" ><br>
<label><b>First Name</b></label>
<input type = "text" name="fname" ><br>
<!-- <label><b>Middle Name</b></label>
<input type = "text" name="mname" ><br> -->
<label><b>Last Name</b></label>
<input type = "text"  name="lname"><br>
<!-- <label><b>email</b></label>
<input type = "text" name="email" ><br> -->
<button>UPDATE</button>
</form>
</body>
</html>