dashboards
getChartsFor: aBpmUser
	"The receiver answer a collection of <BpmChartDefinition> for the user <aBpmUser>"

	^usersChartsAndDashboardRepository getChartsFor: aBpmUser