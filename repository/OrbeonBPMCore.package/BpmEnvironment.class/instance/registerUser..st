other
registerUser: aBpmUser

	aBpmUser createInboxFor: self.
	aBpmUser createOutboxFor: self.

	^users at: aBpmUser username put: aBpmUser