other
storeInstance: aBpmDashboardInstance

	(instances includesKey: aBpmDashboardInstance ownerName) ifFalse: [instances at: aBpmDashboardInstance ownerName put: OrderedCollection new].

	^self storeDashboard: aBpmDashboardInstance on: (instances at: aBpmDashboardInstance ownerName)