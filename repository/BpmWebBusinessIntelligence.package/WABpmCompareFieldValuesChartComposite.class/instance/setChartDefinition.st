other
setChartDefinition

	chartDefinition chartType: (BpmChartType createSubInstanceFrom: (self searchValueAt: 'chart-type') on: chartDefinition);
						scope: (self newChartScopeFor: chartDefinition).