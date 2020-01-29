other
renderSearchAreaOn: html

	self renderShowHideJsWindowIconOn: html. "show/hide search area"

	html div id: 'top-search-form'; class: 'width-100per'; with: [self renderSearchApplicationOn: html].

	html div class: 'float-right margin-right-5px margin-top-5px'; with: [self renderAddApplicationOn: html]