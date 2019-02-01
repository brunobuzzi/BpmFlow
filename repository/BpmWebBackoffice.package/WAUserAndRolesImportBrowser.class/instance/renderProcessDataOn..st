other
renderProcessDataOn: html

	fileRows notEmpty
	ifTrue: [
		html submitButton class: 'display-block';
				callback: [self importConfiguration]; 
				with: ('2. Import Configuration' translateIn: self session).
	].