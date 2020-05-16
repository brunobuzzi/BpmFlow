users
registerUser: aBpmUser ifPresent: aBlock
	"The receiver register <aBpmUser> to work in this <BpmEnvironment> if the user already exist evaluate the niladic block <aBlock>"

	(users includesKey: aBpmUser username) ifTrue: [^aBlock value].

	((self == self class getAdminsEnvironment) not and:[aBpmUser isInAdminsEnvironment not and: [self areUsersMultiEnvironment not and: [aBpmUser getBpmEnvironments size > 0]]]) 
	ifTrue: [ImproperBpmOperationException signal: 'The user [', aBpmUser username, '] is already assigned to another Environment !!!'].

	aBpmUser createInboxFor: self.
	aBpmUser createOutboxFor: self.

	aBpmUser basicAddEnvironment: self.

	^users at: aBpmUser username put: aBpmUser