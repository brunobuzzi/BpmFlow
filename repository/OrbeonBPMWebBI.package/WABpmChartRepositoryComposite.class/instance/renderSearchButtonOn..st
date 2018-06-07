search area
renderSearchButtonOn: html

	html div class: 'top-search-filters-one'; 
		class: 'width-100px margin-top-20px';
		with: [
			html submitButton 
				callback: [self searchReport]; 
				with: ('Search Report' translateFor: self session user).
		].