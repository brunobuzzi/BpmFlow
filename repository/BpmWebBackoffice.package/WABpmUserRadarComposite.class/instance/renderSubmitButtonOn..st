other
renderSubmitButtonOn: html

	html submitButton 
		callback: [self searchUsername]; with: ('Search' translateIn: self session).