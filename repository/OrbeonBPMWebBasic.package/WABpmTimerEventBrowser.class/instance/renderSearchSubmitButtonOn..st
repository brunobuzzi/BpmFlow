search area
renderSearchSubmitButtonOn: html

	html div class: 'top-search-filters-one'; style: 'margin-top: 20px;'; with: [
		html submitButton 
			callback: [self searchTimerEvents]; 
			with: ('Search' translateFor: self session user).
	].