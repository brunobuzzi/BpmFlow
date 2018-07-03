storing
removeDashboard: aBpmDashboard from: aCollection

	^aCollection remove: aBpmDashboard ifAbsent: [NoBpmDashboardException signal: 'No Dasboard for user named [', aBpmDashboard ownerName, ']']