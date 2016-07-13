search area
renderFormDefinitionComboOn: html

	html label attributeAt: 'for' put: 'formDefinition'; with: ('Form' translateFor: self session user).

	html select "Form Definition List" class: 'search-section-width-200';
		attributeAt: 'id' put: 'formDefinition';
		list: self getFormDefinitionList;
		callback: [:value | searchValues at: 'form-type' put: value];
		selected: (searchValues at: 'form-type' ifAbsent: ['']).