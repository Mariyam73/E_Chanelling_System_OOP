function validateAppointment()
{
	var patient = document.forms["placeAppointment"]["PatientName"];
	var patientnumber = document.forms["placeAppointment"]["Phone"];
	var doAppointment = document.forms["placeAppointment"]["date"];
	var gender = document.forms["placeAppointment"]["gender"];
	var docName = document.forms["placeAppointment"]["Dname"];
	var docSpecial = document.forms["placeAppointment"]["Dspecial"];
	
	if (patient.value == "")                                  
    { 
        window.alert("Please enter patient name."); 
        pname.focus(); 
        return false; 
    } 
	
	if (patientNumber.value == "")                                  
    { 
        window.alert("Please enter a phone number."); 
        pno.focus(); 
        return false; 
    } 
	
	if (doAppointment.value == "")                                  
    { 
        window.alert("Please select a date."); 
        pdate.focus(); 
        return false; 
    } 
	
	if (gender.value == "")                                  
    { 
        window.alert("Please select a gender"); 
        pgender.focus(); 
        return false; 
    } 
	
	if (docName.value == "")                                  
    { 
        window.alert("Please enter doctor name."); 
        dname.focus(); 
        return false; 
    } 
	
	if (docSpecial.value == "")                                  
    { 
        window.alert("Please enter doctor special."); 
        dspcl.focus(); 
        return false; 
    } 
	
	
}


function onlyletter()
{
	var name = document.forms["placeAppointment"]["PatientName"].value;
	var letter = /^[A-Za-z]+$/;
	
	if(name.match( letter))
	{
		return true;
	}
	
	else{
		window.alert("Please enter a valid patient name");
		return false;
	}
}

function onlyletter1()
{
	var name = document.forms["placeAppointment"]["Dname"].value;
	var letter = /^[A-Za-z]+$/;
	
	if(name.match( letter))
	{
		return true;
	}
	
	else{
		window.alert("Please enter a valid doctor name");
		return false;
	}
}

function onlyletter2()
{
	var name = document.forms["placeAppointment"]["Dspecial"].value;
	var letter = /^[A-Za-z]+$/;
	
	if(name.match( letter))
	{
		return true;
	}
	
	else{
		window.alert("Please enter a valid doctor special");
		return false;
	}
}

function phoneNumber(){
	
	var phone = document.forms["placeAppointment"]["Phone"];
	var num = /^[0-9]{10}$/;
	
	if(!num.test(phone.value))
	{
		alert("please enter a valid phone number");
		return false;
	}
	
	else{
		return true;
	}
}