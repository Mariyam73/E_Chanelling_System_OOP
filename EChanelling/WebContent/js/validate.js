function validation()	
{ 
	var name   = document.forms["signUPform"]["name"];
	var username1 = document.forms["signUPform"]["uname"];
	var email       = document.forms["signUPform"]["email"];
	var phonenumber = document.forms["signUPform"]["phone"];
	var pass1        = document.forms["signUPform"]["pass"];
	var repass      = document.forms["signUPform"]["conpass"];
	
	
	  

if (name.value == "")	
{ 
window.alert("Please enter your  name."); 
name.focus(); 
return false; 
} 

if (username1.value == "")	
{ 
window.alert("Please enter a  username."); 
username1.focus(); 
return false; 
} 

if (email.value == "")	
{ 
window.alert("Please enter an  e-mail address."); 
email.focus(); 
return false; 
} 

if (email.value.indexOf("@", 0) < 0)	
{ 
window.alert("Please enter a valid e-mail address."); 
email.focus(); 
return false; 
} 

if (email.value.indexOf(".", 0) < 0)	
{ 
window.alert("Please enter a valid e-mail address."); 
email.focus(); 
return false; 
} 

if (phonenumber.value == "")	
{ 
window.alert("Please enter your telephone number."); 
phonenumber.focus(); 
return false; 
}  

if (pass1.value == "")	
{ 
window.alert("Please enter a password."); 
pass1.focus(); 
return false; 
}  


if (repass.value == "")	
{ 
window.alert("Please re enter  password."); 
repass.focus(); 
return false; 
}  

}

function CheckPassword() 
{ 
	var pass1  = document.forms["signUPform"]["pass"];
    var passw=  /^[A-Za-z]\w{7,14}$/;

if(pass1.value.match(passw)) 
{ 
	return true;
}
else
{ 
window.alert("password should have atleast 7 characters including alphabets and numbers");
return false;
}
}

function confirmPassword()
{
	var pass1        = document.forms["signUPform"]["pass"];
	var repass      = document.forms["signUPform"]["conpass"];
	
if(repass.value.match(pass1.value))
{
	return true;
}
else
	{
	window.alert("Password Mismatch."); 
	repass.focus(); 
	return false;

	}
}

function signinValidate()
{
	var username2 = documents.forms["signINform"]["uname"];
	var pass2      = document.forms["signINform"]["password"];
	
	if (username2.value == "")	
	{ 
	window.alert("Please enter your  username."); 
	username2.focus(); 
	return false; 
	}
	
	if (pass2.value == "")	
	{ 
	window.alert("Please enter your password."); 
	pass2.focus(); 
	return false; 
	}  
	
	

}

