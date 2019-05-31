search area
renderSearchOptionsOn: html

	self renderShowHideJsWindowIconOn: html. "show/hide search area"

	html div id: 'top-search-form'; with: [
		html form with: [ 
			html fieldSet with: [
				html legend class: 'top-search-legend'; with: ('Search Options' translateIn: self session).
				self renderProcessIdOn: html.
				"self renderIsFinishedOn: html."
				html div class: 'top-search-div'; with: [self renderApplicationComboOn: html].
				self hasSelectedApplication 
				ifTrue: [self renderProcessTypeComboOn: html]
				ifFalse: [html div class: 'top-search-filters-two'; 
									class: 'margin-top-20px float-left width-100px'; 
									with: [self renderSubmitButtonOn: html]].
			].
		].
	].