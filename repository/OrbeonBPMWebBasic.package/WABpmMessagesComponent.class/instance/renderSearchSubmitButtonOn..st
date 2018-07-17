other
renderSearchSubmitButtonOn: html

	html div class: 'top-search-filters-one';
		with: [
			html submitButton 
				class: '';
				callback: [self searchMatchingMessages]; 
				with: ('Search' translateFor: self session user).
		]