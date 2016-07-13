other
newMainInboxFor: aBpmUser

	^(self newNamed: 'Inbox' boxParent: nil for: aBpmUser)
		createInnerBoxes;
		yourself