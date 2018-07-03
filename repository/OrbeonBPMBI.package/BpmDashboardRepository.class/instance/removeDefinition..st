storing
removeDefinition: aBpmDashboardDefinition

	(definitions includesKey: aBpmDashboardDefinition ownerName) 
	ifFalse: [NoBpmDashboardException signal: 'No Dasboard for user named [', aBpmDashboardDefinition ownerName, ']'].

	^self removeDashboard: aBpmDashboardDefinition from: (definitions at: aBpmDashboardDefinition ownerName)