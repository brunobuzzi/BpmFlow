other
renderSearchAreaOn: html

	self renderShowHideWindowIconOn: html. "show/hide search area"

	(self isEnabledToShowElementNamed: 'search-area') ifFalse: [^self].

	html div id: 'newAppForm'; class: 'float-left'; with: [self renderNewAppFormOn: html].

	html div class: 'top-search-vertical-line'.

	html div id: 'searchUserForm'; with: [self renderSearchApplicationOn: html].