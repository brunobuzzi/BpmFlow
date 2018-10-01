browsing
getNextDashboardInstance: aBpmDashboardInstance
	"The receiver answer the next dashboard instance after <aBpmDashboardInstance> if no next exist then answer <nil> "

	^dashboardInstances after: aBpmDashboardInstance ifAbsent: [nil]