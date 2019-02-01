search area
renderFormFieldComboOn: html

	html label 
		attributeAt: 'for' put: 'formFields';
		with: ('Field' translateIn: self session).

	html select "Field Definition List" 
		attributeAt: 'id' put: 'formFields';
		class: 'search-section-width-200';
		list: self getFormFieldList;
		onChange: 'submit()';
		callback: [:value | self addSearchValue: value named: 'field-name'];
		selected: (self searchValueAt: 'field-name' ifAbsent: ['']).