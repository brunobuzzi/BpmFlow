search area
renderTwoFitersOn: html

	html label 
		attributeAt: 'for' put: 'filterOne';
		class: 'search-section-float'; 
		with: ('Start Value' translateFor: self session user).
	html textInput 
		attributeAt: 'id' put: 'filterOne';
		callback: [:value | self addSearchValue: value named: 'field-value'];
		with: (self searchValueAt: 'field-value' ifAbsent: ['']).
	html label 
		attributeAt: 'for' put: 'filterTwo';
		class: 'search-section-float'; 
		with: ('End Value' translateFor: self session user).
	html textInput 
		attributeAt: 'id' put: 'filterTwo';
		callback: [:value | self addSearchValue: value named: 'field-value-2'];
		with: (self searchValueAt: 'field-value-2' ifAbsent: ['']).

	self renderSearchSubmitButtonOn: html.