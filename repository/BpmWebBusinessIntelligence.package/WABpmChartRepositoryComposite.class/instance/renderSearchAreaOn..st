search area
renderSearchAreaOn: html

	self renderShowHideWindowIconOn: html. "show/hide search area"

	(self isEnabledToShowElementNamed: 'search-area') ifFalse: [^self].

	html form with: [
		html fieldSet with: [
			html legend class: 'top-search-legend'; 
				with: ('Search Chart Report' translateFor: self session user).
			self renderChartScopeComboOn: html.
			(self isApplicationScopeSelected or:[self isProcessScopeSelected or:[self isRoleScopeSelected]]) ifTrue: [self renderApplicationComboOn: html].
			self isProcessScopeSelected ifTrue: [self renderProcessDefinitionComboOn: html].
			self isRoleScopeSelected ifTrue: [self renderRolesComboOn: html].
			self isUserScopeSelected ifTrue: [self renderUsersComboOn: html].
			self renderSearchButtonOn: html.
		].
	].