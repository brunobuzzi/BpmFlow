render
renderSearchAreaOn: html

	self renderShowHideJsWindowIconOn: html. "show/hide search area"

	html div id: 'top-search-form'; with: [self renderSearchEnvironmentOn: html].