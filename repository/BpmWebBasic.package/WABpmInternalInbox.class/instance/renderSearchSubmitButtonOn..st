search area
renderSearchSubmitButtonOn: html

	html div class: 'top-search-filters-one';
		with: [
			html submitButton 
				class: '';
				callback: [self searchMatchingMessages]; 
				with: ('Search' translateIn: self session).
		]