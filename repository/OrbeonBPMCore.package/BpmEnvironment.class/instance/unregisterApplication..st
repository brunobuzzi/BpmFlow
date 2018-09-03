other
unregisterApplication: anApplication
	"The receiver unregister <anApplication> as a part of itself if other <BpmEnviroment> already have the application <anApplication> registered raise <anExeception>"

	anApplication hasBpmEnvironment 
	ifFalse: [^ApplicationWithBpmEnvironmentException signal: 'The Application named [', anApplication applicationName,'] has no BPM Environment'].

	anApplication bpmEnvironment: nil. 
	^applications removeKey: anApplication applicationName