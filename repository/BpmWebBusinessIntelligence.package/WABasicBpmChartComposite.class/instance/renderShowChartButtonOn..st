search area
renderShowChartButtonOn: html

	html div class: 'top-search-filters-one'; 
		class: 'width-100px margin-top-20px';
		with: [
			html submitButton 
				callback: [self showChart]; 
				with: ('Show Chart' translateIn: self session).
		].