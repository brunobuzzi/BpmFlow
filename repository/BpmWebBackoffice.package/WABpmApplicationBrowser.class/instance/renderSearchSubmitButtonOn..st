other
renderSearchSubmitButtonOn: html

	html submitButton 
		style: 'margin-top: 35px;';
		callback: [self searchMatchingApplications]; 
		with: ('Search' translateIn: self session).