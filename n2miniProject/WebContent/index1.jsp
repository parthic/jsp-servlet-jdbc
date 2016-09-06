<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>School Admin</title>
<script type="text/javascript" src="js/validation.js"></script>
</head>

<body>

<div>
<label><b>User name</b> </label> <br> <br>
<input type = "text" id = "uname" placeholder = "Enter username"><br> <br>
<label><b>Password</b></label> <br> <br>
<input type ="text" id ="pwd" placeholder = "Enter password"><br> <br>
<input type ="submit" value ="Register"> 
<button onclick="return validation()">Login</button>
</div>
</body>
</html>