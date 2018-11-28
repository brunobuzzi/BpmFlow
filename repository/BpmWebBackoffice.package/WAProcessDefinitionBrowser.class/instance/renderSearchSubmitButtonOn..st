search area
renderSearchSubmitButtonOn: html

	html submitButton 
		style: 'margin-top: 35px;';
		callback: [self searchMatchingProcesses]; 
		with: ('Search' translateFor: self session user).