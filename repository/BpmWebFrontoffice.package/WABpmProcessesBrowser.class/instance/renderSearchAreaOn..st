search area
renderSearchAreaOn: html

	self renderShowHideWindowIconOn: html. "show/hide search area"

	(self isEnabledToShowElementNamed: 'search-area') ifFalse: [^self].

	self searchPanelIsRegular 
	ifTrue: [self renderSearchRegularPanelOn: html]
	ifFalse: [self renderSearchCategoriesPanelOn: html].