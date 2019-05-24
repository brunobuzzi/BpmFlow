other
printApplicationType

	^(application class == BpmApplication) ifTrue: ['B'] ifFalse: ['O']