search area
searchChart

	searchApplied := true.
	selectedLateralItem := nil.

	self isGlobalScopeSelected ifTrue: [^self searchByGlobalScope].

	self isApplicationScopeSelected ifTrue: [^self searchByApplicationScope].

	self isProcessScopeSelected ifTrue: [^self searchByProcessScope].

	self isRoleScopeSelected ifTrue: [^searchResult := self chartsRepository getChartsFor: self session user withScope: BpmChartRoleScope].

	self isUserScopeSelected ifTrue: [^searchResult := self chartsRepository getChartsFor: self session user withScope: BpmChartUserScope].

	searchResult := #().