assignation count
getTaskCountFor: aBpmUser

	^(assignments detect: [:each | each user == aBpmUser] ifNone: [^0]) count