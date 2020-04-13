other
setChartDefinition

	chartDefinition chartType: (BIChartType createSubInstanceFrom: (self searchValueAt: 'chart-type') on: chartDefinition);
						scope: (self newChartScopeFor: chartDefinition).