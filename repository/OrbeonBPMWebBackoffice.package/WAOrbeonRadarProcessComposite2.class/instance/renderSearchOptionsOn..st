search area
renderSearchOptionsOn: html

	self renderShowHideWindowIconOn: html. "show/hide search area"
	(self isEnabledToShowElementNamed: 'search-area') ifFalse: [^self].
	html form with: [ 
		html fieldSet with: [
			html legend class: 'top-search-legend'; with: ('Search Options' translateFor: self session user).
			self renderProcessIdOn: html.
			"self renderIsFinishedOn: html."
			html div class: 'top-search-div'; with: [self renderApplicationComboOn: html].
			self hasSelectedApplication 
			ifTrue: [self renderProcessTypeComboOn: html]
			ifFalse: [html div id: 'top-search-filters-two'; 
								class: 'margin-top-20px float-left width-100px'; 
								with: [self renderSubmitButtonOn: html]].

		].
	].