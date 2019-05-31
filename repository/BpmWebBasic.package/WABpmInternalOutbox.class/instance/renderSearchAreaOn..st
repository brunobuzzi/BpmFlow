search area
renderSearchAreaOn: html

	self renderShowHideJsWindowIconOn: html. "show/hide search area"

"	html form with: [ 
		html fieldSet with: [
			html legend class: 'top-search-legend'; with: ('Search Message' translateFor: self session user).
			self renderSearchProcessIdFieldOn: html.
			self renderSearchSubmitButtonOn: html.
		].
	]."