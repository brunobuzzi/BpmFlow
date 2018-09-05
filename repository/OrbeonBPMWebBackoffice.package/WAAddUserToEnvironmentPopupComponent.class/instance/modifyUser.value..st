other
modifyUser: aBpmUser value: aBoolean

	aBoolean 
	ifTrue: [self selectedEnvironment registerUser: aBpmUser]
	ifFalse: [self selectedEnvironment unregisterUser: aBpmUser].