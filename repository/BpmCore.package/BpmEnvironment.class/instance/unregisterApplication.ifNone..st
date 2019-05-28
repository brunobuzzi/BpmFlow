applications
unregisterApplication: anApplication ifNone: aBlock
	"The receiver unregister <anApplication> if the application is not registered in any <BpmEnvironment> then evaluate the niladic block <aBlock>"

	anApplication hasBpmEnvironment ifFalse: [^aBlock value].

	anApplication bpmEnvironment: nil. 
	^applications removeKey: anApplication applicationName