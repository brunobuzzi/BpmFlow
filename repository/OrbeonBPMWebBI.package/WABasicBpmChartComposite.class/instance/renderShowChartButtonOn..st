search area
renderShowChartButtonOn: html

	html div class: 'top-search-filters-one'; 
		class: 'width-100px margin-top-20px';
		with: [
			html submitButton 
				callback: [self addField]; 
				with: ('Add Field' translateFor: self session user).
		].

	html div class: 'top-search-filters-one'; 
		class: 'width-100px margin-top-20px';
		with: [
			html submitButton 
				callback: [self showChart]; 
				with: ('Show Chart' translateFor: self session user).
		].