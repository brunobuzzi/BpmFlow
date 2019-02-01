render
renderOneFilterOn: html

	self addSearchValue: nil named: 'field-value-2'. "clean the second value --> is not going to be used"

	html label 
		attributeAt: 'for' put: 'filterOne';
		class: 'search-section-float'; with: ('Field Value' translateIn: self session).

	html textInput 
		attributeAt: 'id' put: 'filterOne';
		callback: [:value | self addSearchValue: value named: 'field-value'];
		with: (self searchValueAt: 'field-value' ifAbsent: ['']).

	self renderSearchSubmitButtonOn: html.