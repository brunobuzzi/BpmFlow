bpm users
getExistingOrNewUserNamed: aString password: pwd forEnvironment: aBpmEnvironmen

	(applicationUsers includesKey: aString) ifTrue: [^applicationUsers at: aString].

	^self newUsername: aString password: pwd forEnvironment: aBpmEnvironmen