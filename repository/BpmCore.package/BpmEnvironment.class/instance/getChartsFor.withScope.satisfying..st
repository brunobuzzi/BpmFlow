Accessing
getChartsFor: aBpmUser withScope: aBIChartScopeClass satisfying: aBlock

	^usersChartsAndDashboardRepository 
			getChartsFor: aBpmUser 
			withScope: aBIChartScopeClass 
			satisfying: aBlock