other
renderSearchAreaOn: html

	self renderShowHideWindowIconOn: html. "show/hide search area"

	(self isEnabledToShowElementNamed: 'search-area') ifFalse: [^self].

	html div 
		with: [html form with: [ 
					html fieldSet with: [
						html legend class: 'top-search-legend'; with: ('Search Process' translateFor: self session user).
						html div class: 'top-search-div'; with: [self renderApplicationComboOn: html].
						self renderSearchSubmitButtonOn: html].
					].
				].