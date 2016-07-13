search area
renderSearchCategoriesPanelOn: html

	html form with: [ 
		html fieldSet with: [
			self renderSwitchWindowOn: html.
			html legend class: 'top-search-legend'; with: ('Search Task' translateFor: self session user).
			html div class: 'top-search-div'; with: [
				html label attributeAt: 'for' put: 'categotyLabel'; with: ('Category Name' translateFor: self session user).
				html textInput attributeAt: 'id' put: 'categotyLabel'; callback: [:value | self addSearchValue: value named: 'category-name'].
			].
			self renderCategoriesListOn: html.
			html div id: 'top-search-filters-one'; with: [
				html submitButton 
					style: 'margin-top: 25px';
					callback: [self searchMatchingCategories]; 
					with: ('Search' translateFor: self session user).].
		].
].