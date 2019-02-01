search area
renderShowChartButtonOn: html

	html div class: 'top-search-filters-one'; 
		class: 'width-100px margin-top-20px';
		with: [
			html submitButton 
				callback: [self addField]; 
				with: ('Add Field' translateIn: self session).
		].

	html div class: 'top-search-filters-one'; 
		class: 'width-100px margin-top-20px';
		with: [
			html submitButton 
				callback: [self showSelectedFields]; 
				with: ('View Fields' translateIn: self session).
		].


	super renderShowChartButtonOn: html.