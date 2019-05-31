other
renderSearchAreaOn: html

	self renderShowHideJsWindowIconOn: html. "show/hide search area"

	(self isEnabledToShowElementNamed: 'search-area') ifFalse: [^self].

	html div id: 'top-search-form'; with: [self renderSearchApplicationOn: html].