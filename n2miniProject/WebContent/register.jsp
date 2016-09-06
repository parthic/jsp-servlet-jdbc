<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>register page</title>
<script  type="text/javascript" src="static/js/validateform.js">

	
</script>
<link rel="stylesheet" href="static/css/style.css">
</head>
<body>
	<form name="register" method="post"  action="register">
		<table border=0 cellspacing="15px">
		<tr>
				<td>ID</td>
				<td><input type="text" name="id"
					placeholder="enter the id "></td>
			</tr>
			<tr>
				<td>USER NAME</td>
				<td><input type="text" name="name"
					placeholder="enter the username "></td>
				<td><a font-size="5" href="www.google.com">check
						availability</a></td>
			</tr>
			<tr>
				<td>PASSWORD</td>
				<td><input type="text" name="password"
					placeholder="enter the password "></td>
			</tr>
			<tr>
				<td>CONFIRM PASSWORD</td>
				<td><input type="text" name="password2"
					placeholder="enter the password "></td>
			</tr>
			<tr>
				<td>FIRST NAME</td>
				<td><input type="text" name="fname"
					placeholder="enter the firstname "></td>
			</tr>
			<tr>
				<td>LAST NAME</td>
				<td><input type="text" name="lname"
					placeholder="enter the lastname "></td>
			</tr>
			<tr>
				<td>ADDRESS</td>
				<td><input type="text" name="address"
					placeholder="enter the address"></td>
			</tr>
			<tr>
				<td>phone number</td>
				<td><input type="text" name="phone"
					placeholder="enter the phone number "></td>
			</tr>
			<tr>
				<td>email id</td>
				<td><input type="text" name="email"
					placeholder="enter the valid email id "></td>
			</tr>
			<tr>
				<td>security question</td>
				<td><select>
						<option value="pet">first pet name</option>
						<option value="car">first car name</option>
						<option value="bike">first bike name</option>
						<option value="place">first visited place in usa</option></td>
				</select>
				<td><input type="text" name="answer"
					placeholder="enter your answer here" required></td>
			</tr>
		</table>
		<input type="button" value="validate" onclick="validateform()">
		<BUTTON type="SUBMIT">SUBMIT</BUTTON>
		<input type="reset" value="reset" >
		<br>
		</form>
		
</body>
</html>