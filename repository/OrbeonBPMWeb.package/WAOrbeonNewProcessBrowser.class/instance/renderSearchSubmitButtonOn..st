other
renderSearchSubmitButtonOn: html

	html div id: 'top-search-filters-one';
		style: 'margin-top: 20px;';
		with: [
			html submitButton 
				callback: [self searchCreationProcesses]; 
				with: ('Search' translateFor: self session user).
		]