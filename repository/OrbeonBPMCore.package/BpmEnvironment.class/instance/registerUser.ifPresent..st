other
registerUser: aBpmUser ifPresent: aBlock

	(users includesKey: aBpmUser username) ifTrue: [^aBlock value].

	aBpmUser createInboxFor: self.
	aBpmUser createOutboxFor: self.

	^users at: aBpmUser username put: aBpmUser