dashboards
getDashboardsFor: aBpmUser
	"The receiver answer a collection of <BpmDashboardDefinition> for the user <aBpmUser>"

	^usersDashboardRepository getDashboardsFor: aBpmUser