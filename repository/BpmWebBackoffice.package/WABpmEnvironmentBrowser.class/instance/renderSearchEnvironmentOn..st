other
renderSearchEnvironmentOn: html

	html form with: [ 
		html fieldSet with: [
			html legend class: 'top-search-legend'; with: ('Search Environment' translateIn: self session).
			html div class: 'top-search-div'; with: [
				html label attributeAt: 'for' put: 'envId'; with: ('Environment Name' translateIn: self session).
				html textInput attributeAt: 'id' put: 'envId'; 
						callback: [:value | self addSearchValue: value named: 'envName'];
						value: (self searchValueAt: 'envName')].
			html div class: 'top-search-filters-two'; with: [self renderSearchSubmitButtonOn: html].
		].
	]