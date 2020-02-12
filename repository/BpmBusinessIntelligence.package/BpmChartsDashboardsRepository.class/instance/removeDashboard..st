dashboards
removeDashboard: aBpmDashboardDefinition

	(dashboardsDefinitions includesKey: aBpmDashboardDefinition ownerName) 
	ifFalse: [NoBpmDashboardException signal: 'No Dasboard for user named [', aBpmDashboardDefinition ownerName, ']'].

	^(dashboardsDefinitions at: aBpmDashboardDefinition ownerName) 
			remove: aBpmDashboardDefinition 
			ifAbsent: [NoBpmDashboardException signal: 'No such Dasboard to remove']