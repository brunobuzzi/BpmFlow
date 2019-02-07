search area
renderFormDefinitionComboOn: html

	html div class: 'top-search-div'; with: [
		html label attributeAt: 'for' put: 'formDefinitions';
			with: ('Form Definition' translateIn: self session).

		html select attributeAt: 'id' put: 'formDefinitions'; "Process Definition List"
			list: self getFormDefinitions;
			onChange: 'submit()';
			callback: [:value | self onFormDefinitionChanged: value];
			selected: (searchValues at: 'form-definition' ifAbsent: [' ']).].


	self renderFormFieldsComboOn: html. "render fields of the selected form definition"