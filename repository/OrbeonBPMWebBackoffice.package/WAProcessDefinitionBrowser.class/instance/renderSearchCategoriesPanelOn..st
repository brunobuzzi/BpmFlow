search area
renderSearchCategoriesPanelOn: html

	html form with: [ 
		html fieldSet with: [
			self renderSwitchWindowOn: html.
			html legend class: 'top-search-legend'; with: ('Search Process' translateFor: self session user).
			html div class: 'top-search-div'; with: [
				html label with: ('Category Name' translateFor: self session user).
				html textInput callback: [:value | searchValues at: 'category-name' put: value].].
			self renderCategoriesListOn: html.
			html div class: 'top-search-filters-one'; with: [
				html submitButton
					style: 'margin-top: 25px';
					callback: [self searchMatchingCategories]; 
					with: ('Search' translateFor: self session user).].
		].
].