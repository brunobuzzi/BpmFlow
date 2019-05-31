search area
renderSearchAreaOn: html

	self renderShowHideJsWindowIconOn: html. "show/hide search area"

	html div id: 'top-search-form'; with: [
		html form with: [
			html fieldSet with: [
				html legend class: 'top-search-legend'; 
					with: ('Search Chart Report' translateIn: self session).
				self renderChartScopeComboOn: html.
				(self isApplicationScopeSelected or:[self isProcessScopeSelected or:[self isRoleScopeSelected]]) ifTrue: [self renderApplicationComboOn: html].
				self isProcessScopeSelected ifTrue: [self renderProcessDefinitionComboOn: html].
				self isRoleScopeSelected ifTrue: [self renderRolesComboOn: html].
				self isUserScopeSelected ifTrue: [self renderUsersComboOn: html].
				self renderSearchButtonOn: html.
			].
		].
	].