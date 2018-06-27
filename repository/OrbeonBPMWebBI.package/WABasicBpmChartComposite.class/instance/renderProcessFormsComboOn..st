search area
renderProcessFormsComboOn: html
	| forms |

	html div class: 'top-search-div'; with: [
		html label 
			attributeAt: 'for' put: 'process-forms';
			with: ('Forms' translateFor: self session user).

		forms := #(''), self getProcessFormsList.
		html select "Field Definition List" 
			attributeAt: 'id' put: 'process-forms';
			class: 'width-200px';
			list: forms;
			onChange: 'submit()';
			callback: [:value | self addSearchValue: value named: 'form-name'];
			selected: (self searchValueAt: 'form-name' ifAbsent: [forms ifNotEmpty: [forms first]]).
	].

	forms ifEmpty: [^self].

	self renderFormFieldComboOn: html.