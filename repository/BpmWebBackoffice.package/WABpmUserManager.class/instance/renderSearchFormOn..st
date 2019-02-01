other
renderSearchFormOn: html

	html form with: [
		html fieldSet with: [
			html legend class: 'top-search-legend'; 
				with: ('Search User' translateIn: self session).
			html div class: 'top-search-div'; with: [
				html label attributeAt: 'for' put: 'search-username'; with: ('User Name' translateIn: self session).
				html textInput attributeAt: 'id' put: 'search-username'; callback: [:value | self addSearchValue: value named: 'username'].
			].
			html div class: 'top-search-filters-one'; with: [
				html submitButton 
					style: 'margin-top: 25px;';
					callback: [self searchUser]; 
					with: ('Search' translateIn: self session)]
		]
	]