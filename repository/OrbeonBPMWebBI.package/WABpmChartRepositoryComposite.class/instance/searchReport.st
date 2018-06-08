search area
searchReport

	searchApplied := true.
	selectedLateralItem := nil.

	self isGlobalScopeSelected ifTrue: [^searchResult := self chartsRepository getChartsFor: self session user withScope: BpmChartGlobalScope].

	self isApplicationScopeSelected ifTrue: [^searchResult := self chartsRepository getChartsFor: self session user withScope: BpmChartApplicationScope].

	self isProcessScopeSelected ifTrue: [^searchResult := self chartsRepository getChartsFor: self session user withScope: BpmChartProcessScope].

	self isRoleScopeSelected ifTrue: [^searchResult := self chartsRepository getChartsFor: self session user withScope: BpmChartRoleScope].

	self isUserScopeSelected ifTrue: [^searchResult := self chartsRepository getChartsFor: self session user withScope: BpmChartUserScope].

	searchResult := #().