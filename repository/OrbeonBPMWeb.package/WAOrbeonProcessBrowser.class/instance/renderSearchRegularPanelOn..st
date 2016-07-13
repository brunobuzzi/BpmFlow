search area
renderSearchRegularPanelOn: html

	html form with: [ 
		html fieldSet with: [
			self renderSwitchWindowOn: html.
			html legend class: 'top-search-legend'; with: ('Search Task' translateFor: self session user).
			html div class: 'top-search-div'; with: [
				html label attributeAt: 'for' put: 'processId'; with: ('Process Id' translateFor: self session user).
				html textInput attributeAt: 'id' put: 'processId'; callback: [:value | self addSearchValue: value named: 'id'].].
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