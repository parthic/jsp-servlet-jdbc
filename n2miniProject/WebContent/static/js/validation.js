function validateform() {
	var name = document.myform.name.value;
	var password = document.myform.password.value;
	

	if (name === "null" || name === "") {
		alert("Name can't be blank");
		return false;
	}
	if (password.length < 6) {
		alert("Password must be at least 6 characters long.");
		return false;
	} // if ((name != null) && (pasword.length > 6)) {
	else {

		//window.location.href("adminConsole.jsp?name=${name}");
		//window.location.href("adminConsole.jsp");
		return true;
	}
}