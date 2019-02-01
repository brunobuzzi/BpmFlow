other
renderSearchApplicationOn: html

	html form with: [ 
		html fieldSet with: [
			html legend class: 'top-search-legend'; with: ('Search Appication' translateIn: self session).
			html div class: 'top-search-div'; with: [
				html label attributeAt: 'for' put: 'appId'; with: ('Application Name' translateIn: self session).
				html textInput attributeAt: 'id' put: 'appId'; 
						callback: [:value | self addSearchValue: value named: 'appName'];
						value: (self searchValueAt: 'appName')].
			html div class: 'top-search-filters-two'; with: [self renderSearchSubmitButtonOn: html].
		].
	]