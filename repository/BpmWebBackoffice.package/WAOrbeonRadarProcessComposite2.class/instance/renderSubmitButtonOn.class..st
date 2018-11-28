search area
renderSubmitButtonOn: html class: className

	html submitButton
			class: className;
			callback: [self searchProcessId]; 
			with: ('Search' translateFor: self session user).