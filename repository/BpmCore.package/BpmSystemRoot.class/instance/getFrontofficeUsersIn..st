bpm users
getFrontofficeUsersIn: aBpmEnvironment

	^applicationUsers select: [:each | each isFrontOfficeUserIn: aBpmEnvironment]