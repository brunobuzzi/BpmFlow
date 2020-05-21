dashboards
getDashboardsFor: aBpmUser
	"The receiver answer a collection of <BIDashboardDefinition> for the user <aBpmUser>"

	^usersChartsAndDashboardRepository getDashboardsFor: aBpmUser