dashboards
getChartsFor: aBpmUser
	"The receiver answer a collection of <BIChartDefinition> for the user <aBpmUser>"

	^usersChartsAndDashboardRepository getChartsFor: aBpmUser