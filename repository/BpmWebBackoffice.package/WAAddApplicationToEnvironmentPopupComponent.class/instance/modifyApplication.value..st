other
modifyApplication: anApplication value: aBoolean

	aBoolean 
	ifTrue: [anApplication hasBpmEnvironment ifFalse: [self selectedEnvironment registerApplication: anApplication]]
	ifFalse: [anApplication hasBpmEnvironment ifTrue: [self selectedEnvironment unregisterApplication: anApplication]].