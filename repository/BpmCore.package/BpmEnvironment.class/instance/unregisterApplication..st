applications
unregisterApplication: anApplication
	"The receiver unregister <anApplication> if the application is not registered in any <BpmEnvironment> then raise <anExeception>"

	^self unregisterApplication: anApplication ifNone: [^ApplicationWithBpmEnvironmentException signal: 'The Application named [', anApplication applicationName,'] has no BPM Environment']