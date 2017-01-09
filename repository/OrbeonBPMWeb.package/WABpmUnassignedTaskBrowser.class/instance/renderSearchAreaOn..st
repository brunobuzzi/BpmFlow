other
renderSearchAreaOn: html

	self renderShowHideWindowIconOn: html. "show/hide search area"

	(self isEnabledToShowElementNamed: 'search-area') ifFalse: [^self].

	html form with: [ 
		html div id: 'top-search-filters'; with: [
			html fieldSet with: [
				html legend class: 'top-search-legend'; with: ('Search Unassigned Task' translateFor: self session user).
				html div class: 'top-search-div'; with: [self renderApplicationsComboOn: html].
				html div class: 'top-search-div'; with: [self renderRolesComboOn: html].
				html div class: 'top-search-filters-two'; with: [self renderSearchSubmitButtonOn: html].
			].

			"html div id: 'top-search-filters'; with: [
				self renderFilterValuesAndButtonOn: html]."
		].
]