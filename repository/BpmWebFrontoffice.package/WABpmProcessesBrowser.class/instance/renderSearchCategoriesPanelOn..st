search area
renderSearchCategoriesPanelOn: html

	html form with: [ 
		html fieldSet with: [
			html legend class: 'top-search-legend'; with: ('Search Task' translateIn: self session).
			self renderSwitchWindowOn: html.
			html div class: 'top-search-div'; with: [
				html label attributeAt: 'for' put: 'categotyLabel'; with: ('Category Name' translateIn: self session).
				html textInput attributeAt: 'id' put: 'categotyLabel'; callback: [:value | self addSearchValue: value named: 'category-name'].
			].
			self renderCategoriesListOn: html.
			html div class: 'top-search-filters-one'; with: [
				html submitButton 
					style: 'margin-top: 25px';
					callback: [self searchMatchingCategories]; 
					with: ('Search' translateIn: self session).].
		].
].