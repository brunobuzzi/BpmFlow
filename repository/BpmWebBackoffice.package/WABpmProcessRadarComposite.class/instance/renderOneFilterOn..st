search area
renderOneFilterOn: html

	html div class: 'top-search-div'; with: [
		html label attributeAt: 'for' put: 'filterOne';
			class: 'search-section-float'; with: ('Field Value' translateIn: self session).

		html textInput attributeAt: 'id' put: 'filterOne';
			value: self getSelectedFormFieldValue;
			class: 'search-section-float search-section-width-200';
			callback: [:value | searchValues at: 'field-value' put: value].
	].

	html div class: 'top-search-filters-two'; with:[ 
		html submitButton 
			class: 'search-section-float search-section-width-100 margin-top-35px';
			callback: [self searchMatchingProcesses]; 
			with: ('Search' translateIn: self session)].