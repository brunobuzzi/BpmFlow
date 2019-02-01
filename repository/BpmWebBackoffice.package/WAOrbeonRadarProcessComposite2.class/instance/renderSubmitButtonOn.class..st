search area
renderSubmitButtonOn: html class: className

	html submitButton
			class: className;
			callback: [self searchProcessId]; 
			with: ('Search' translateIn: self session).