render
renderShowChartButtonOn: html

	html div id: 'top-search-filters-one'; 
		class: 'width-100px margin-top-20px';
		with: [
			html submitButton 
				callback: [self showChart]; 
				with: ('Show Chart' translateFor: self session user).
		].