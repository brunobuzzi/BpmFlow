other
newMainOutboxFor: aBpmUser

	^(self newNamed: 'Outbox' boxParent: nil for: aBpmUser)
		createInnerBoxes;
		yourself