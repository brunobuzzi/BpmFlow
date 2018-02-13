search area
renderFormDefinitionComboOn: html

	html label 
		attributeAt: 'for' put: 'formDefinitions';
		with: ('Form' translateFor: self session user).

	html select "Form Definition List" 
		attributeAt: 'id' put: 'formDefinitions';
		class: 'search-section-width-200';
		list: ((self hasSearchValueAt: 'process-type') 
				ifFalse: [#()] 
				ifTrue: [self getFormDefinitionList]);
		onChange: 'submit()';
		callback: [:value | self addSearchValue: value named: 'form-type'];
		selected: (self searchValueAt: 'form-type' ifAbsent: ['']).