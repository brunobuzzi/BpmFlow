search area
renderSearchRegularPanelOn: html

	html form with: [ 
		html fieldSet with: [
			html legend class: 'top-search-legend'; with: ('Search Task' translateIn: self session).
			html div class: 'top-search-div'; with: [
				html label attributeAt: 'for' put: 'processId'; with: ('Process Id' translateIn: self session).
				html textInput attributeAt: 'id' put: 'processId'; 
						callback: [:value | self addSearchValue: value named: 'id'];
						value: (self searchValueAt: 'id')].
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