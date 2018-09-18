repository
removeInstance: aBpmDashboardInstance

	^dashboardInstances remove: aBpmDashboardInstance ifAbsent: [NoBpmDashboardException signal: 'No such Dasboard to remove']