other
getDashboardsIn: aBpmEnvironment for: aBpmUser
	| dashboardRepository |

	dashboardRepository := self defaultFor: aBpmEnvironment.

	^dashboardRepository getDashboardFor: aBpmUser