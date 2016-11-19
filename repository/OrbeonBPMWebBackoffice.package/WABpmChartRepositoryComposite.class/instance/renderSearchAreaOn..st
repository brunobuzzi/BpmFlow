other
renderSearchAreaOn: html

	self renderShowHideWindowIconOn: html. "show/hide search area"

	(self isEnabledToShowElementNamed: 'search-area') ifFalse: [^self].

	html form with: [
		html fieldSet with: [
			html legend class: 'top-search-legend'; 
				with: ('Search Chart Report' translateFor: self session user).
			self renderReportClassesComboOn: html.
			self isGlobalReportSelected 
			ifFalse: [self renderApplicationComboOn: html].
			self renderSearchButtonOn: html.
		].
	].