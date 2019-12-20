assignation count
getTaskCountFor: aBpmUser
	"The receiver answer the current count for a <aBpmUser> to be used in the assignation policy"

	^(assignments detect: [:each | each user == aBpmUser] ifNone: [^0]) count