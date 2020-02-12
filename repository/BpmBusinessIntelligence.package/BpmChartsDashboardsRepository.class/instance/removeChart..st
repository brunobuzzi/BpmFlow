charts
removeChart: aBpmChartDefinition

	(chartsDefinitions includesKey: aBpmChartDefinition ownerName) 
	ifFalse: [NoBpmDashboardException signal: 'No Chart for user named [', aBpmChartDefinition ownerName, ']'].

	^(chartsDefinitions at: aBpmChartDefinition ownerName) 
			remove: aBpmChartDefinition 
			ifAbsent: [NoBpmDashboardException signal: 'No such Chart to remove']