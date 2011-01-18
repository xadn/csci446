function validateForm() {
	var str = document.getElementById('feeling').value;
	if(!str)
		alert("Surely you feel something!");	
	return false;
}