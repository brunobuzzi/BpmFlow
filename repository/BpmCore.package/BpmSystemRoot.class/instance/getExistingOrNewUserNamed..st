bpm users
getExistingOrNewUserNamed: aString

	(applicationUsers includesKey: aString) ifTrue: [^applicationUsers at: aString].

	^self newUsername: aString password: ' '