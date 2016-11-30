search area
renderSearchRegularPanelOn: html

	html form with: [ 
		html fieldSet with: [
			html legend class: 'top-search-legend'; with: ('Search Process' translateFor: self session user).
			self renderSwitchWindowOn: html.
			html div class: 'top-search-div'; with: [
				html label attributeAt: 'for' put: 'processId'; with: ('Process Id' translateFor: self session user).
				html textInput attributeAt: 'id' put: 'processId';
					callback: [:value | searchValues at: 'id' put: value].
			].
			html div class: 'top-search-div'; with: [self renderProcessTypeComboOn: html].
			html div class: 'top-search-div'; with: [self renderFormDefinitionComboOn: html].
			html div id: 'top-search-filters-two'; with: [
				self renderSearchSubmitButtonOn: html].
		].
]