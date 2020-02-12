charts
storeChart: aBpmChartDefinition

	(chartsDefinitions includesKey: aBpmChartDefinition ownerName) ifFalse: [chartsDefinitions at: aBpmChartDefinition ownerName put: OrderedCollection new].

	^(chartsDefinitions at: aBpmChartDefinition ownerName) add: aBpmChartDefinition