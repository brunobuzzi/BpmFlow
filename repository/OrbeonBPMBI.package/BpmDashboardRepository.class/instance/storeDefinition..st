storing
storeDefinition: aBpmDashboardDefinition

	(definitions includesKey: aBpmDashboardDefinition ownerName) ifFalse: [definitions at: aBpmDashboardDefinition ownerName put: OrderedCollection new].

	^self storeDashboard: aBpmDashboardDefinition on: (definitions at: aBpmDashboardDefinition ownerName)