search area
renderSearchAreaOn: html

	self renderShowHideJsWindowIconOn: html. "show/hide search area"

	html div id: 'top-search-form'; with: [
		self searchPanelIsRegular 
		ifTrue: [self renderSearchRegularPanelOn: html]
		ifFalse: [self renderSearchCategoriesPanelOn: html]
	]