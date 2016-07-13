subcomponents
openUsersManager

	(arena isKindOf: WABpmUserManager)
	ifTrue: [^arena].

	^WABpmUserManager parent: self on: BpmUser new.