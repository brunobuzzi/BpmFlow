search area
renderSearchAreaOn: html

	self renderShowHideJsWindowIconOn: html. "show/hide search area"

	self searchPanelIsRegular 
	ifTrue: [self renderSearchRegularPanelOn: html]
	ifFalse: [self renderSearchCategoriesPanelOn: html]