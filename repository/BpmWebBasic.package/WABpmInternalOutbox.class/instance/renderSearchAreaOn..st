search area
renderSearchAreaOn: html

	self renderShowHideWindowIconOn: html. "show/hide search area"

	(self isEnabledToShowElementNamed: 'search-area') ifFalse: [^self].

"	html form with: [ 
		html fieldSet with: [
			html legend class: 'top-search-legend'; with: ('Search Message' translateFor: self session user).
			self renderSearchProcessIdFieldOn: html.
			self renderSearchSubmitButtonOn: html.
		].
	]."