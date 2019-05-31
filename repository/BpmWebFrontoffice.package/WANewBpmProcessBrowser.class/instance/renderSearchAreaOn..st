other
renderSearchAreaOn: html

	self renderShowHideJsWindowIconOn: html. "show/hide search area"

	html div id: 'top-search-form';
		with: [html form with: [ 
					html fieldSet with: [
						html legend class: 'top-search-legend'; with: ('Search Process' translateIn: self session).
						html div class: 'top-search-div'; with: [self renderApplicationComboOn: html].
						self renderSearchSubmitButtonOn: html].
					].
				].