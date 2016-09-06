<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login</title>

<script type="text/javascript" src="static/js/validation.js">
	
</script>


</head>
<body>
<link rel="stylesheet" href="static/css/style.css">
	<form name="myform" method="post" action="login">
		<table id="t01" border=0 cellspacing="1px">
			<tr><br>
			<br>
				<td>USER NAME</td>
				<td><input type="text" name="name"
					placeholder="enter the username "></td>
					
			</tr>
			<tr>
				<td>PASSWORD</td>
				<td><input type="text" name="password"
					placeholder="enter the password "></td>
			</tr>
		</table>
		<br>

		<table cellpadding="1px">
			<tr>
				<!-- <td><input type="submit" value="login"
					onclick="return validateform()"></td> -->
					<td><button value="login" type="submit">SUBMIT</button></td>
				<td><input type="reset" value="reset"></td>
				<td><a href="register.jsp">register</a></td></td>
			<tr>
		</table>
	</form>
</body>
</html>
  --%>
  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login</title>
<script type="text/javascript" src="static/js/validation.js">
	
</script>
</head>
<body>
<link rel="stylesheet" href="static/css/style.css">
<form action="login" method="post">
  <!-- <div class="imgcontainer">
    <img src="img_avatar2.png" alt="Avatar" class="avatar">
  </div> -->

  <div class="container1">
    <label><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="name" required>
<br>
    <label><b>Password:</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>
<br>
    <button value="login" type="submit">SUBMIT</button>
    
     <a href="register.jsp">SignUp</a>
  </div>

 <!--  <div class="container" style="background-color:#f1f1f1">
    
    
  </div> -->
</form>
</body>
</html>