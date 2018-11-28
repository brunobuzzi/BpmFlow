search area
searchChart

	searchApplied := true.
	selectedLateralItem := nil.

	self isGlobalScopeSelected ifTrue: [^self searchByGlobalScope].

	self isApplicationScopeSelected ifTrue: [^self searchByApplicationScope].

	self isProcessScopeSelected ifTrue: [^self searchByProcessScope].

	self isRoleScopeSelected ifTrue: [^self searchByRoleScope].

	self isUserScopeSelected ifTrue: [^self searchByUserScope].

	self isMultiFieldScopeSelected ifTrue: [^self searchByMultiFieldScope].

	searchResult := #().