browsing
getPreviousDashboardInstance: aBpmDashboardInstance
	"The receiver answer the previous dashboard instance before <aBpmDashboardInstance> if no previous exist then answer <nil> "

	^dashboardInstances before: aBpmDashboardInstance ifAbsent: [nil]