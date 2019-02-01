search area
renderStartEndDatesOn: html

	html div class: 'top-search-div'; with: [
		html label attributeAt: 'for' put: 'start'; with: ('Start' translateIn: self session).
		html textInput 
				attributeAt: 'id' put: 'start'; 
				callback: [:value | self addSearchValue: value named: 'start']; 
				with: (self searchValueAt: 'start').
	].

	html div class: 'top-search-div'; with: [
		html label attributeAt: 'for' put: 'end'; with: ('End' translateIn: self session).
		html textInput 
				attributeAt: 'id' put: 'end'; 
				callback: [:value | self addSearchValue: value named: 'end']; 
				with: (self searchValueAt: 'end').
	].