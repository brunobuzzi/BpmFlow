scope
newChartScopeFor: aBpmChartDefinition

	^BpmChartProcessScope newOn: aBpmChartDefinition processes: self getSelectedProcessDefinitions version: self getVersion