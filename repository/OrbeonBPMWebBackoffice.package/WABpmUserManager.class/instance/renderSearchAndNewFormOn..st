other
renderSearchAndNewFormOn: html

	self renderShowHideWindowIconOn: html. "show/hide search area"

	(self isEnabledToShowElementNamed: 'search-area') ifFalse: [^self].

	html div id: 'newUserForm'; class: 'float-left'; with: [self renderNewFormOn: html].

	html div class: 'top-search-vertical-line'.

	html div id: 'searchUserForm'; with: [self renderSearchFormOn: html].