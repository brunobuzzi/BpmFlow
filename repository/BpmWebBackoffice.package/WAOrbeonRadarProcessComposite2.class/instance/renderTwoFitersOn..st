search area
renderTwoFitersOn: html


	html div class: 'top-search-div'; with: [
		html label attributeAt: 'for' put: 'filterTwo';
			class: 'search-section-float'; with: ('Start' translateIn: self session).

		html textInput attributeAt: 'id' put: 'filterTwo';
			class: 'search-section-float search-section-width-200';
			callback: [:value | searchValues at: 'field-value' put: value].
	].

	html div class: 'top-search-div'; with: [
		html label attributeAt: 'for' put: 'filterOne';
			class: 'search-section-float'; with: ('End' translateIn: self session).

		html textInput attributeAt: 'id' put: 'filterOne';
			class: 'search-section-float search-section-width-200';
			callback: [:value | searchValues at: 'field-value-2' put: value].
	].

	html div class: 'top-search-filters-two'; with:[ 
		html submitButton class: 'search-section-float search-section-width-100 margin-top-35px';
						callback: [self searchMatchingProcessesRange]; with: ('Search' translateIn: self session)].