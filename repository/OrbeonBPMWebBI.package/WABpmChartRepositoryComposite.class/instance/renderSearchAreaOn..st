search area
renderSearchAreaOn: html

	self renderShowHideWindowIconOn: html. "show/hide search area"

	(self isEnabledToShowElementNamed: 'search-area') ifFalse: [^self].

	html form with: [
		html fieldSet with: [
			html legend class: 'top-search-legend'; 
				with: ('Search Chart Report' translateFor: self session user).
			self renderChartScopeComboOn: html.
"			self renderReportClassesComboOn: html.
			self isApplicationComboAvailable 
				ifTrue: [self renderApplicationComboOn: html].
			self isProcessDefinitionComboAvailable
				ifTrue: [self renderProcessDefinitionComboOn: html].
			self isFieldComboAvailable 
				ifTrue: [self renderProcessVersionsComboOn: html.
							self renderProcessFormsComboOn: html].
			self isUserComboAvailable 
				ifTrue: [self renderUsersComboOn: html]."
			self renderSearchButtonOn: html.
		].
	].