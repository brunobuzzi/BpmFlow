search area
renderSearchAreaOn: html

	self renderShowHideJsWindowIconOn: html. "show/hide search area"

	html div id: 'top-search-form'; with: [
		html form with: [ 
			html fieldSet with: [
				html legend class: 'top-search-legend'; with: ('Search Task' translateIn: self session).

				html div class: 'top-search-div width-120px'; with: [self renderTimerTypeComboOn: html].
		"		html div class: 'top-search-div'; with: [self renderApplicationComboOn: html].
				html div class: 'top-search-div'; with: [self renderProcessTypeComboOn: html]."

				self renderSearchSubmitButtonOn: html.
			].
		].
	].