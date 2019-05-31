other
renderSearchAndNewFormOn: html

	self renderShowHideJsWindowIconOn: html. "show/hide search area"

	html div id: 'top-search-form'; with: [self renderSearchFormOn: html].