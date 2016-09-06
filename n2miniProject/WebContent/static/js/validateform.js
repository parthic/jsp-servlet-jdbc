function validateform(){
		var name = document.register.name.value;
		var password = document.register.password.value;
		var password2 = document.register.password2.value;
		var phno = document.register.phone.value;
		var emailid = document.register.email.value;
		var emailRegex = /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/;
		var phoneRegex = /^\d{10}$/;

		if (name == null || name == "") {
			alert("Name can't be blank");
		}
		if (password.length < 8 ) {
			alert("Password must be at least 8 characters long.");
		}
		if (password != password2) {
			alert("password mismatch");
		}
		if(!emailid.match(emailRegex)){
			alert("email not valid");
		}
		if(!phno.match(phoneRegex)){
			alert("phone number not valid");
		}else{
			alert("Good to Submit :)")
		}
	}