search area
renderSubmitButtonOn: html

	html submitButton 
						callback: [self searchProcessId]; with: ('Search' translateFor: self session user).