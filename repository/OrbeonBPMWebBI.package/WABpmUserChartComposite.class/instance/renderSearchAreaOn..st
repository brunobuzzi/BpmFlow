search area
renderSearchAreaOn: html

	self renderShowHideWindowIconOn: html. "show/hide search area"

	(self isEnabledToShowElementNamed: 'search-area') ifFalse: [^self].

	html form with: [
		html fieldSet with: [
			html legend class: 'top-search-legend'; 
				with: ('Draw Chart' translateFor: self session user).
			self renderBpmUsersComboOn: html.
			self getBpmUserName ifNil: [^self].
			self renderDistributionComboOn: html.
			self renderChartTypeComboOn: html.
			self renderShowChartButtonOn: html.
		].
	].