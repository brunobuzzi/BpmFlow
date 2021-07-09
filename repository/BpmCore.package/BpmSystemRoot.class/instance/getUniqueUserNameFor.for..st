bpm users
getUniqueUserNameFor: aString for: aBpmEnvironment
	"The receiver answer a unique name for username <aString> for environment <aBpmEnvironment>.
	In a user single environment the @environment-name is enforced to the username avoid username clashes between environments (see issue #799).
	In a user multi environment no username is enforced "

	^(areUsersMultiEnvironment or: [(aString indexOfSubCollection: '@', aBpmEnvironment  name) isNonZero])
		ifFalse: [aString,'@', aBpmEnvironment  name]
		ifTrue: [aString]