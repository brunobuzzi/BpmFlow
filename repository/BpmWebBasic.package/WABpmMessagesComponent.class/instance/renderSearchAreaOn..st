search area
renderSearchAreaOn: html

	self renderShowHideJsWindowIconOn: html. "show/hide search area"

	html form with: [ 
		html fieldSet with: [
			html legend class: 'top-search-legend'; with: ('Search Message' translateIn: self session).
			self renderSearchProcessIdFieldOn: html.
			self renderSearchSubmitButtonOn: html.
		].
	].