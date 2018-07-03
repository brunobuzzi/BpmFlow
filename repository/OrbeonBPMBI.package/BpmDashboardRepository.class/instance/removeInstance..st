storing
removeInstance: aBpmDashboardInstance

	(instances includesKey: aBpmDashboardInstance ownerName)
	ifFalse: [NoBpmDashboardException signal: 'No Dasboard for user named [', aBpmDashboardInstance ownerName, ']'].

	^self removeDashboard: aBpmDashboardInstance from: (instances at: aBpmDashboardInstance ownerName)