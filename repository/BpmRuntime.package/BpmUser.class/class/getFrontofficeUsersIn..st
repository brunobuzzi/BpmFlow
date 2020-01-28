user query
getFrontofficeUsersIn: aBpmEnvironment

	^self cache select: [:each | each isFrontOfficeUserIn: aBpmEnvironment]