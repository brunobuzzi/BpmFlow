applications
unregisterApplication: anApplication
	"The receiver unregister <anApplication> if the application is not registered in any <BpmEnvironment> then raise <anExeception>"

	anApplication hasBpmEnvironment 
	ifFalse: [^ApplicationWithBpmEnvironmentException signal: 'The Application named [', anApplication applicationName,'] has no BPM Environment'].

	anApplication bpmEnvironment: nil. 
	^applications removeKey: anApplication applicationName