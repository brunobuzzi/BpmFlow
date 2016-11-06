search area
renderFormFieldsComboOn: html

	html div class: 'top-search-div'; with: [
		html label 
			attributeAt: 'for' put: 'formFields'; 
			class: 'search-section-float-left'; with: ('Form Fields' translateFor: self session user).
		html select attributeAt: 'id' put: 'formFields';
			class: 'search-section-float-left';"Process Definition List"
			list: (#(''), self getFormFields) asSortedCollection;
			onChange: 'submit()';
			callback: [:value | self onFormFieldChanged: value];
			selected: (searchValues at: 'form-field' ifAbsent: ['']).
	].

	self hasFormField
	ifTrue: [self renderFilterValuesAndButtonOn: html]
	ifFalse: [html div id: 'top-search-filters-one'; with: [self renderSubmitButtonOn: html class: 'margin-top-20px']]