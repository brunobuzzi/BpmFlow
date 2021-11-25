applications
unregisterApplication: anApplication ifNone: aBlock
	"The receiver unregister <anApplication> if the application is not registered in any <BpmEnvironment> then evaluate the niladic block <aBlock>"

	anApplication hasBpmEnvironment ifFalse: [^aBlock value].

	anApplication canDelete ifFalse: [^ImproperBpmOperationException signal: 'This application can not be removed. Check #canDelete method'].

	anApplication bpmEnvironment: nil. 
	^applications removeKey: anApplication applicationName