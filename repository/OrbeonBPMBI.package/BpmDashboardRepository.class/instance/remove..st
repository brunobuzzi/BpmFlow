storing
remove: aBpmDashboardDefinition

	(definitions includesKey: aBpmDashboardDefinition ownerName) 
	ifFalse: [NoBpmDashboardException signal: 'No Dasboard for user named [', aBpmDashboardDefinition ownerName, ']'].

	^(definitions at: aBpmDashboardDefinition ownerName) 
			remove: aBpmDashboardDefinition 
			ifAbsent: [NoBpmDashboardException signal: 'No such Dasboard to remove']