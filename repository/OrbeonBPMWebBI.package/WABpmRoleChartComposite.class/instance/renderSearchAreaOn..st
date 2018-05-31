search area
renderSearchAreaOn: html

	self renderShowHideWindowIconOn: html. "show/hide search area"

	(self isEnabledToShowElementNamed: 'search-area') ifFalse: [^self].

	html form with: [
		html fieldSet with: [
			html legend class: 'top-search-legend'; 
				with: ('Draw Chart' translateFor: self session user).
			self renderApplicationComboOn: html.
			self getApplicationName ifNil: [^self].
			self renderRolesComboOn: html.
			self renderDistributionComboOn: html.
			self renderChartTypeComboOn: html.
			self isUsersInTimeDistribution ifTrue: [self renderStartEndDatesOn: html].
			self renderShowChartButtonOn: html.
		].
	].