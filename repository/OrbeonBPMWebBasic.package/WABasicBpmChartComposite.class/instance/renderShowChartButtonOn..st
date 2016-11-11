render
renderShowChartButtonOn: html

	html div id: 'top-search-filters-one'; with: [
		html submitButton 
			style: 'margin-top: 25px;';
			callback: [self showChart]; 
			with: ('Show Chart' translateFor: self session user)
	]