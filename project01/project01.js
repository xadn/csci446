function validateForm() {
	var str = document.getElementById('feeltoday').value;
	if(!str)
		alert("Surely you feel something!");	
	return false;
	// uncomment to allow script to return if the form has been filled out
	//}
	//return true;
}

function clickLink(link) {
	// link.id can be used to determine which button sent the event
	return false;
}
