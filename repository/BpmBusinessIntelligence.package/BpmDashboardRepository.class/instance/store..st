storing
store: aBpmDashboardDefinition

	(definitions includesKey: aBpmDashboardDefinition ownerName) ifFalse: [definitions at: aBpmDashboardDefinition ownerName put: OrderedCollection new].

	^(definitions at: aBpmDashboardDefinition ownerName) add: aBpmDashboardDefinition