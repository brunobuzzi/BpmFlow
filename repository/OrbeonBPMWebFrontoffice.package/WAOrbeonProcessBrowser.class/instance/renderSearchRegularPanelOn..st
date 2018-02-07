search area
renderSearchRegularPanelOn: html

	html form with: [ 
		html fieldSet with: [
			html legend class: 'top-search-legend'; with: ('Search Task' translateFor: self session user).
			self renderSwitchWindowOn: html.
			html div class: 'top-search-div width-100px'; with: [self renderSearchScopeComboOn: html].
			html div class: 'top-search-div width-100px'; with: [self renderSearchProcessIdFieldOn: html].
			html div class: 'top-search-div'; with: [self renderApplicationComboOn: html].
			html div class: 'top-search-div'; with: [self renderProcessTypeComboOn: html].
			html div class: 'top-search-div'; with: [self renderFormDefinitionComboOn: html].
			html div class: 'top-search-div'; with: [self renderFormFieldComboOn: html].
			self renderFilterFields 
			ifTrue: [self renderFilterValuesAndButtonOn: html]
			ifFalse: [self renderSearchSubmitButtonOn: html]
			"self renderButtonWithoutFilters ifTrue: [self renderSearchSubmitButtonOn: html]. "
		].
	]