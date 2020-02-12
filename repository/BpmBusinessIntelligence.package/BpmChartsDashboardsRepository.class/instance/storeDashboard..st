dashboards
storeDashboard: aBpmDashboardDefinition

	(dashboardsDefinitions includesKey: aBpmDashboardDefinition ownerName) ifFalse: [dashboardsDefinitions at: aBpmDashboardDefinition ownerName put: OrderedCollection new].

	^(dashboardsDefinitions at: aBpmDashboardDefinition ownerName) add: aBpmDashboardDefinition